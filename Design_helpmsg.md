# 救援信号（Minecraft Java 1.18.2）

玩家对着方块使用「救援信号弹」，向所有不在救援中的玩家发出固定消息「玩家名 发送了求援信号 [点击支援]」。其他人点击「点击支援」，就会传送到求援者身边，并在这次救援的成员中广播自己的出场台词，例如：

```
虾头太刀，参上
```

数据包位置：`Help_msg/`（`pack_format` 9）

## 使用方法

| 操作 | 命令或方式 |
| --- | --- |
| 领取信号弹（管理员） | `/function help_msg:give` |
| 发出求援 | 手持信号弹，对着地面右键 |
| 前往救援 | 点击聊天栏里的 `[点击支援]` |
| 放置台词设置站（OP） | 复制 `line/set.mcfunction` 开头注释里的 `/setblock` 命令，站在要放的位置执行 |
| 设置出场台词 | 书与笔第 1 页写好并署名，拿在主手，右键设置站告示牌 |
| 卸载（保留编号和台词） | `/function help_msg:uninstall`，再 `/datapack disable` |
| 彻底卸载 | `/function help_msg:uninstall_all` |

求援消息不可自定义。出场台词取成书第 1 页，最多约 30 个字，空白页会被拒绝；没设置过的人使用默认台词「前来支援！」。生存模式写的书都是普通文字，不带颜色。

设置站必须放在出生点保护范围（`server.properties` 的 `spawn-protection`）之外，否则非 OP 右键不了告示牌。设置站周围建议改为冒险模式区域，或用屏障保护，防止被拆。

## 规则

- 信号发出后 60 秒过期，冷却也是这 60 秒。两者都按全服游戏时间（`time query gametime`）计算，下线期间照常流逝。
- 求援者死亡、下线时求援提前结束，但冷却仍要等到发出后 60 秒。
- 求援者带 `hm_req` 标签，前往救援的人带 `hm_helper` 标签。带这两个标签的人收不到新的求援，救援中的人也不能使用信号弹。
- 求援结束后，对应的救援者在 1 秒内自动退出救援，并收到提示。
- 传送以求援者当前的位置和维度为准，可以跨维度。

## 身份编号与按钮号码

**身份编号 `hm_id`**：玩家第一次右键台词设置站时从计数器 `#next hm_id` 领取，之后不再改变。出场台词存在：

```
storage help_msg:data lines: [{id:1, join:'{"text":"虾头太刀，参上"}'}, ...]
```

每个编号只有一条。改名后记分板上的编号会丢失（1.18 的记分板按玩家名记录），这一点已经接受。

**按钮号码 `hm_slot`（1 到 20）**：1.18.2 没有宏，`clickEvent` 里写不进变量，按钮只能写死 `/trigger hm_join set N`。所以求援期间临时借用一个号码，号码本身不保存任何个人数据。

- 号码在 1 到 20 之间轮流使用，同一个号码要再经过 19 次求援才会重复。信号只活 60 秒，所以点到旧消息时，那个号码几乎一定已经没人持有，会提示「救援信号已过期」。只有在这条旧消息之后又发生了 20 次求援，而且第 20 次的信号还没过期，才会传到新的求援者身边。
- 60 秒内最多 20 个求援同时有效，超过时提示「当前求援的人太多」。
- 点击时还会比较结束时刻和当前游戏时间，信号刚到期、每秒检查还没处理时点击，也会提示过期。
- 传送后会提示「你正在支援 某某」。
- 升级到 1.20.2 以上后，可以用宏直接把编号写进按钮，不再需要号码。

## 运行频率

- `tick`（每 tick）：只处理「点击支援」的点击，没人点击时只是遍历在线玩家比较一个分数。1.18 没有「玩家使用了 trigger」的事件，这一行省不掉。
- `second`（每秒）：只在有求援时运行。由 `signal/open` 启动，结尾只在还有在线求援者时预约下一次；最后一个求援结束、救援者全部释放后就停下。负责到期和死亡检查、释放救援者。
- 其余函数只在使用信号弹、点击按钮、右键告示牌时执行。

为了让 `second` 平时不运行，原来每秒做的几件事改到各自的时机：

- 永久编号：第一次右键台词设置站时分配（`line/set`）。没有编号的救援者使用默认台词，并收到设置方法提示。
- 重新进服清理：在 `second`、`signal/use`、`join/request` 开头统一处理，保证用到状态之前已经清理。
- 开启「点击支援」：发出信号时为能接收的人开启；点击没成功、或救援结束后再重新开启。
- 死亡检测：发出信号时把求援者当前的死亡次数记到 `hm_dbase`，之后 `hm_death` 比它大才算死亡。

## 数据修改范围

本数据包只修改自己新建的数据：`hm_` 开头的记分项和标签、`help_msg:` 命名空间下的 storage 和进度。

`hm_death`（`deathCount`）和 `hm_leave`（`leave_game`）由游戏自动累加，本数据包只读、从不写入，改为和基准值 `hm_dbase`、`hm_lbase` 比较。游戏本体的统计（`stats/*.json`）也不受影响。

所有检查都不扫描 `@e`，也不每 tick 读取玩家 NBT，几十人的服务器开销可以忽略。

## 流程

```
信号弹 → 进度 help_sign → signal/use（冷却和状态检查）
       → signal/start（轮流取号码）→ signal/open → signal/broadcast（固定文字）
点击按钮 → /trigger hm_join set N → tick → join/request（号码和到期检查）
        → join/accept（传送）→ join/announce → line/find
second → signal/close（到期或死亡）→ room/check_helper → room/release
右键设置站告示牌 → line/set → line/check（空白、长度）→ line/save → line/rebuild
```

## 文件

| 文件 | 作用 |
| --- | --- |
| `load` | 只在加载和 `/reload` 时执行一次：创建记分项，初始化存档（不覆盖已有数据）；重载时有人在求援才接上 `second` |
| `tick` | 处理点击 |
| `second` | 有求援时每秒一次的检查 |
| `id/assign` | 第一次设置台词时分配永久编号 |
| `line/set`、`line/check`、`line/save`、`line/rebuild` | 读取手持成书，检查后按编号保存台词；`line/set` 开头注释里有设置站告示牌的命令 |
| `line/find`、`line/find_step` | 按编号查找台词，结果放在 `help_msg:tmp found.join` |
| `signal/use` | 进度奖励入口，检查冷却和状态 |
| `signal/start`、`signal/open` | 分配号码并发出信号 |
| `signal/broadcast` | 20 行带固定号码按钮的 `tellraw`，每次只有一行条件成立 |
| `signal/close` | 结束求援 |
| `join/request`、`join/accept`、`join/announce` | 处理点击、传送、广播台词 |
| `room/check_helper`、`room/release` | 求援结束后让救援者退出 |
| `player/check_rejoin`、`player/rejoin` | 找出下线后又进服的玩家，清掉残留状态 |
| `give`、`uninstall`、`uninstall_all` | 领取道具与卸载 |

## 1.18.2 数据包格式要点

- 文件夹用复数：`functions/`、`advancements/`、`tags/functions/`。
- `minecraft:item_used_on_block` 从 1.16 起就有，条件写成 `conditions.item` 对象（1.20 才改成谓词列表）。烟花对着方块使用会触发它，在空中用烟花加速不会。
- 进度达成后要 `advancement revoke`，才能再次触发。
- `tellraw` 用 `clickEvent` 和 `hoverEvent`。1.18.2 的 `run_command` 必须以 `/` 开头，不加会被当成聊天消息。
- 点击执行的命令按点击者自己的权限运行：非 OP 只能用 `trigger`（权限等级 0）。`trigger` 用过一次会自动关闭，所以发出信号、点击失败、救援结束时重新 `scoreboard players enable`。
- 记分板复制分数（`operation`）时，如果来源没有分数，命令失败，目标保持旧值；所以复制前先把目标设成安全的默认值。
- 没有宏（1.20.2 才有）和 `return`（1.20 才有）：分支用 `execute if/unless` 加子函数；列表查找用递归函数逐条比较。
- `execute if score A = B` 可以比较两个分数，所以一个通用函数就能匹配任意编号或号码。
- `schedule` 按函数名全局只有一份，不能给每个玩家单独计时；这里改为记下结束时刻，再和 `time query gametime` 比较。
- `execute at <玩家> run tp @s ~ ~ ~` 会连维度一起传送。
- `minecraft.custom:minecraft.leave_game` 用来检测重新进服，`deathCount` 用来检测死亡；两者都和自己记的基准值比较，不清零。
- 告示牌上的点击命令以服务器权限执行，`@s` 是点击的玩家，所以非 OP 也能通过告示牌运行 `function`。
- 聊天栏输入的命令最长 256 个字符，设置站的 `/setblock` 命令控制在这个长度以内。
- 对字符串执行 `data get` 得到的是字符串长度，用来限制台词长度。

## 安全说明

台词以 `interpret:true` 显示。生存模式写的书，服务器会把页面转成纯文字的 JSON，不会带点击事件。只有用命令或作弊客户端做出来的书才可能带点击事件，这些书在设置站同样会被接受。公开服务器如果担心这一点，可以把 `join/announce` 和 `line/save` 里的 `interpret` 改为 `false`。
