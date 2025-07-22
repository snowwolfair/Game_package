# 现实时间提醒插件

这个MCDR插件会在现实时间的6:00, 12:00和18:00前5分钟向所有玩家发送游戏内提醒。

## 安装

1. 确保已安装[MCDR](https://github.com/Fallen-Breath/MCDReforged)
2. 将本插件放入`plugins`文件夹
3. 重启MCDR服务器

## 配置

编辑`config/realtime_reminder.json`文件：
- `reminder_times`: 设置提醒时间点
- `prefix`: 消息前缀（支持颜色代码）
- `advance_minutes`: 提前多少分钟提醒
- `broadcast_to_console`: 是否在控制台显示提醒

## 自定义时间点

在配置文件中添加新的时间点：
```json
{
    "hour": 21,
    "minute": 0,
    "message": "即将到21:00，该休息了！"
}