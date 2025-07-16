# IDEA

修建游戏大厅，每个房间里面对应不同的游戏类型，点击告示牌可以传送到对应的游戏大厅中去。

接待台，物品存放室，更衣间，咖啡厅....

- [ ] 枪战游戏

- [ ] 躲猫猫

- [ ] 冰船赛跑

  ...

## 枪战设计：

### 1.大厅设计

枪械工作台，持枪的一些自定义的盔甲架，~~（红星背景）~~



boss栏改为枪战人数，地图选择和地图预览，参数的设置。选完地图后进入团队选择页面

（可选）：自定义初始装备



基本参数表：

| 参数名      | 默认值                     |
| ----------- | -------------------------- |
| max_menber  | 16                         |
| game_time   | 600                        |
| team_kill   | 20                         |
| person_kill | 10                         |
| map_choose  | 1                          |
| *airdrop    | 游戏开始4分钟后，间隔2分钟 |



### 2.游戏开始

根据选择地图的不同，设置出生点，发放初始武器（手枪与小刀）

击杀钻石+1 						被杀煤炭+1

出生点和地图中固定点位刷新npc（补给枪械和子弹）



*游戏开始一段时间后刷新空投补给，随机货币和枪械子弹/道具



*补给站：每隔一段时间自动补充周围玩家的手枪子弹



超出地图外（倒计时3秒）会被直接杀掉（不获得煤炭）



*入侵小队，击杀后可以获得随机奖励（比空投补给要差一点？）



货币获取比例表：

| 名称 | 获得方式                             | 数量         |
| ---- | ------------------------------------ | ------------ |
| 钻石 | 击杀其他队伍成员<br />空投补给奖励   | 1<br />1     |
| 金锭 | *入侵小队可能掉落<br />空投补给奖励  | 1~2<br />2~3 |
| 铁   | *入侵小队可能掉落<br />空投补给奖励  | 2~4<br />2~5 |
| 煤炭 | 被其他队伍成员击杀<br />空投补给奖励 | 1<br />4~5   |



商人补给列表：

| 名称 | 数量 | 价格 |
| ---- | ---- | ---- |
|      |      |      |
|      |      |      |
|      |      |      |



### 3.游戏结束

时间到或者有一方团队达到指定击杀数量

团队成员获得成就和游戏币

传送回大厅       	*场地燃放烟花





### TODO

#### 1.烟雾弹

一定范围内（烟花的大型球状），粒子效果换为营火的烟雾，持续30s

```mcfunction

```



#### 2.闪光弹

视线看到闪光弹的玩家获得5s失明和反胃

```

```



#### 3.uav

一定范围内（烟花的大型球状）的所有敌对玩家获得高亮，该区域持续30s

或者是每5s扫描区域内的敌对玩家，并使他们获得高亮，效果持续30s

```

```



#### 4.空投补给箱

固定地点（4~6个）间随机刷新，箱子要有高亮效果，在被打开之后失去高亮。并在一分钟后自动消失。
战利品表：

| 名称       | 数量 |
| ---------- | ---- |
| 钻石       |      |
| 金锭       |      |
| 铁锭       |      |
| 煤炭       |      |
| .xx子弹    |      |
| xx突击步枪 |      |



## $\textcolor{red}{Q2}$

```typescript
interface User {
  name: string;
  id: number;
}
 
class UserAccount {
  name: string;
  id: number;
 
  constructor(name: string, id: number) {
    this.name = name;
    this.id = id;
  }
}
 
const user: User = new UserAccount("Murphy", 1);
```

一定要使用这个接口吗，这段代码是否等价：

```typescript
class UserAccount {
  name: string;
  id: number;
 
  constructor(name: string, id: number) {
    this.name = name;
    this.id = id;
  }
}
 
const user = new UserAccount("Murphy", 1);
```



**等价**

## $\textcolor{red}{Q3}$

多个CSS类的用途与意义

类绑定的用处，我是否可以用@if来完成条件判断来等效类绑定



**多个不同样式，比如按钮标题文字之类的格式**

## $\textcolor{red}{Q4}$

```typescript
// global.service.ts
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class GlobalService {
  public globalVar = 'Hello, Global Variable!';

  constructor() {}

  updateGlobalVar(newVal: string) {
    this.globalVar = newVal;
  }
}
```

为什么这里会使用一个空的构造函数，去除他是不是对这个没什么影响



**无影响**

## $\textcolor{red}{Q5}$

@for循环是从一个堆里面找特征值进行循环，堆要怎么设置，如何实现一个类似for(i = 0;i < 10; i++){}这样的函数

```typescript
@for(aibo of stack ;track aibo.index){
    
}
```





## $\textcolor{red}{Q6}$

private与public





## Q7

服务和组件的区别：指令与组件的区别：

通过依赖注入导入服务，通常是一个函数？

都要在import中引入对应类？

依赖注入Injectable,解耦inject



## $\textcolor{red}{Q8}$

@output的使用



配合EventEmite来进行使用

```typescript
@Output() clevent = new EventEmitter<number>();//EventEmitter后面接要传入的数据的类型








```





## Tip1

宿主元素是由selector中决定了

```typescript
@Component({
  selector: 'app-button',
  template: `<button>Click me</button>`
})
export class ButtonComponent {}
```

例如以上代码中的宿主就是`<app-button>`标签



## $\textcolor{red}{Q9}$

前后端的数据联通，get(),post(),put()





## $\textcolor{red}{Q10}$

使用NgStyle/NgClass的时候，是否等效于对多个类或者样式进行绑定，类似于

```
<div [style.color] = IsColor [style.backgrond-color] = IsBgcolor [style.font-size] = IsSize>test</div> 
```

```
<div [ngStyle]="{ 'background-color': isActive ? 'green' : 'red' }">test</div>
```



**不完全，NgClass可以加三元判断**

## Tip2

在Angular中，组件装饰器一般这么写：

```text
@Component({    
    selector: 'greet', 
    template: 'Hello {{name}}!'
})
```

这里，selector如果是个字符串，那么其他组件中使用这个组件，需要这么写

```text
<greet></greet>
```

实际上，selector还有其他的写法，比如说

```text
@Component({    
   selector: '.greet', 
    template: 'Hello {{name}}!'
})
```

这个时候，你要想使用这个组件，就需要这么用了：

```text
<div class='greet'></div>
```

还有，你还可以这么写

```text
@Component({    
  selector: ['greet'],
    template: 'Hello {{name}}!'
})
```

那么使用这个组件的时候，你还可以这么调用：

```text
<div greet></div>
```



# Day2

## $\textcolor{red}{Q11}$

angular中是如何处理html中的事件冒泡的问题。
html是使用`event.stopPropagation()` 方法



**使用`$event.stopPropagation()`**方法

## $\textcolor{red}{Q12}$

什么时候使用非空断言操作符

是不是意味着使用非空断言操作符后断言成果始终成立，不成立时会报错

**是的**

## Q13

宿主，定义混乱。

宿主元素：组件的根元素（应用了指令的元素）

宿主组件： 当前组件的“父容器”，大多数情况下，宿主组件就是它自身



## $\textcolor{red}{Q14}$

项目结构



## $\textcolor{red}{Q15}$

在我的B服务中需要调用C服务

在我的A服务中调用这个B服务是不是不需要再调用一次C服务

**不用**

## Tip3

`readonly`在初始化后无法被修改,用于**类的属性**



# Day3

## $\textcolor{red}{Q16}$

在我初次启动项目的时候，表单在页面中未加载。刷新之后表单出现

（不可复现）



## Q17

@NgModule的使用



## $\textcolor{red}{Q18}$

```typescript
 form = inject(FormBuilder).nonNullable.group({

  userName: ['', [Validators.required, Validators.pattern(/^(admin|user)$/)]],

  password: ['', [Validators.required, Validators.pattern(/^(ng-alain\.com)$/)]],

  mobile: ['', [Validators.required, Validators.pattern(/^1\d{10}$/)]],

  captcha: ['', [Validators.required]],

  remember: [true]

 });
```

这里的remember是在干什么

**记录自动登录选项**

## Q19

什么时候去用对应的库，我该如何去找我该使用那些库中的哪些组件。



## $\textcolor{red}{Q20}$

目前的工作主要就是把用户的输入打包传给后端，通过后端给出的API在Html页面中进行数据的展示。



## $\textcolor{red}{Q21}$

form.controls是否能和form.values等价

**传值通过`form.values`**

**`formControlName`对应`form.controls`**

```typescript
userName: this.form.value.userName

form = inject(FormBuilder).nonNullable.group({
    userName: ['', [Validators.required, Validators.pattern(/^(admin|user)$/)]],
    password: ['', [Validators.required, Validators.pattern(/^(ng-alain\.com)$/)]],
    mobile: ['', [Validators.required, Validators.pattern(/^1\d{10}$/)]],
    captcha: ['', [Validators.required]],
    remember: [true]
  });

```



## $\textcolor{red}{Q22}$

ng-template经常在临近的代码中被引用，那为什么不直接显式将`<ng-template>`写出来

**模板**

## $\textcolor{red}{Q23}$

在ng-zorro中result组件中，按钮选项要使用`nz-result-extra`，为什么，不能直接使用吗？

nz-result中nzExtra与div[nz-result-extra]有什么区别

**操作区域**

## $\textcolor{red}{Q24}$

`this.router.navigate(['passport', 'register-result'])`是否等价于
`this.router.navigate(['passport/register-result'])`

**等价**

## $\textcolor{red}{Q25}$

子路由可以在父路由的`<router-outlet>`中进行引用。在声明路由时，可以多次嵌套子路由吗？例如：

```typescript
export const routes: Routes = [{
	path: 'test1',
	component: testComponent,
	children:[{
		path: 'test2',
		component: testComponent2,
		children:[{
			path: 'test3',
			component: testComponent3,
		}]
	}]
}]
```

**可以**

## $\textcolor{red}{Q26}$

在进行路由的构建时，是不是可以在大多数情况下的去使用loadChildren进行懒加载。

**是**



## $\textcolor{red}{Q27}$

我该如何将一个变量仅在两个组件内共通（全局变量），还是只能通过传值的方式

**传值**



## Tip4

**`xs`**：超小屏幕，< 576px

**`sm`**：小屏幕，>= 576px

**`md`**：中等屏幕，>= 768px

**`lg`**：大屏幕，>= 992px

**`xl`**：超大屏幕， >= 1200px



# Day4

## $\textcolor{red}{Q28}$

```html
<g2-bar height="295" style="width: 100%" [title]="'app.analysis.' + tab.key + '-trend' | i18n" [data]="data.salesData" />
```

这里根据tab.key的变化title也会发生变化，那请问数据要怎么修改成对应的呢

```typescript
@component

getData(key: string): any[]{
	switch(key){
		case 'sales':
			return this.data.salesData;
		case 'visits'：
			return this.data.visits;
	}
}
```



**看实际生产中的方法**

## $\textcolor{red}{Q29}$

是否仍遵循一个变量原则

```html
@for (tab of saleTabs; track $index) {
        <nz-tab [nzTitle]="'app.analysis.' + tab.key | i18n">
          <div nz-row>
            <div nz-col nzXs="24" nzSm="24" nzMd="12" nzLg="16">
              <div class="bar">
                @if (tab.show) {
                  <g2-bar height="295" style="width: 100%" [title]="'app.analysis.' + tab.key + '-trend' | i18n" [data]="data.salesData" />
                }
              </div>
            </div>
            <div nz-col nzXs="24" nzSm="24" nzMd="12" nzLg="8">
              <div class="rank">
                <h4 class="ranking-title">{{ 'app.analysis.' + tab.key + '-ranking' | i18n }}</h4>
                <ul class="rank-list">
                  @for (i of rankingListData; track $index) {
                    <li>
                      <span class="number" [ngClass]="{ active: $index < 3 }">{{ $index + 1 }}</span>
                      <span class="title">{{ i.title }}</span>
                      <span class="value">{{ i.total | number: '3.0' }}</span>
                    </li>
                  }
                </ul>
              </div>
            </div>
          </div>
        </nz-tab>
      }
```

这两个@for中是否可以用同一个变量i来代替，为什么，会发生变量冲突吗？



**变量冲突，同级可免**



## $\textcolor{red}{Q30}$

在html中想要实现一个CSS类的实现与否，是否可以写成以下形式：

```html
<span class="number" [ngClass]="{ active: true }">{{ $index + 1 }}</span>
```



下面这两段是否等价，日常怎么使用：

```html
<span class="number" [ngClass]="{ active: $index < 3 }">{{ $index + 1 }}</span>
```

```
<span class="number" [ngClass]="{ active: Isactive($index) }">{{ $index + 1 }}</span>

//component

Isactive(index : number) : boolean{
	return index < 3;
}
```



**可，等价，复杂逻辑再使用设置方程的写法**

## Tip5

函数返回值

`boolean`:布尔

`void`:无返回值

`string`:字符串

`number[]`:数组

`{name: Kevin}`:对象

`boolean | string`:联合

`number`:数字

`boolean | undefined`:使用联合的方式处理可能不存在的数据



## Q31

```html
<nz-card-meta [nzTitle]="noticeTitle" [nzDescription]="item.description">
	<ng-template #noticeTitle>
    	<div class="card-title">
        	<nz-avatar [nzSrc]="item.logo" [nzSize]="'small'" />
            <a (click)="msg.info('to' + item.href)">{{ item.title }}</a>
        </div>
    </ng-template>
</nz-card-meta>
```

我查到`nz-card-meta`中有一个`[nzAvatar]`参数，但为什么这里还是用`[nzTitle]`中再使用`<nz-avatar>`插入头像



## $\textcolor{red}{Q32}$

多余的逗号，尝试使用join('')拼接。或者还有更好的表达方式



**直接使用**



# Day 5 

## Tip6

生命周期钩子：

| 钩子名称                |                                                        | 主要用途              | 典型场景                               |
| ----------------------- | ------------------------------------------------------ | --------------------- | -------------------------------------- |
| `ngOnChanges`           | （`@Input`）发生变化时调用                             | 响应输入属性变化      | 父组件传参动态更新时执行逻辑           |
| `ngOnInit`              | 组件初始化完成后调用（仅一次）                         | 初始化数据或服务      | 加载静态数据或订阅服务                 |
| `ngDoCheck`             | 每次变更检测周期中调用                                 | 自定义变更检测        | 检测复杂对象或数组的变化               |
| `ngAfterContentInit`    | （投影内容）初始化完成后调用（仅一次）                 | 初始化内容投影        | 操作被投影的 DOM 元素                  |
| `ngAfterContentChecked` | 在 `ngAfterContentInit` 和每次 `ngDoCheck` 后          | 响应内容投影变化      | 第三方库依赖投影内容时更新             |
| `ngAfterViewInit`       | 组件视图（DOM）初始化完成后调用（仅一次）              | 初始化视图或 DOM 操作 | 初始化图表、编辑器等第三方库           |
| `ngAfterViewChecked`    | 在 `ngAfterViewInit` 和每次 `ngAfterContentChecked` 后 | 响应视图变化          | 实时调整布局或更新外部状态             |
| `ngOnDestroy`           | 组件销毁前调用（仅一次）                               | 清理资源              | 取消订阅、移除事件监听器，防止内存泄漏 |



## Tip7

字母后面接`$`是RxJS命名规范，表示这个变量是一个可观测对象`observable`



## Q33

为什么要用这种方式：

```typescript
  _click(): void {
    this.modalSrv.confirm({
      nzTitle: 'Make sure clear all local storage?',
      nzOnOk: () => {
        localStorage.clear();
        this.messageSrv.success('Clear Finished!');
      }
    });
  }
```

而不是：

```typescript
...
template: `
	<nz-modal
	[(nzVisible)]="isVisible"
  	nzTitle="Make sure clear all local storage?"
  	(nzOnCancel)="handleCancel()"
  	(nzOnOk)="handleOk()">
  
  `,
...
	isVisible = false;

  	showModal(): void {
    	this.isVisible = true;
  	}

  	handleOk(): void {
    	localStorage.clear();
    	this.messageSrv.success('Clear Finished!');
    	this.isVisible = false;
  	}

  	handleCancel(): void {
    	this.isVisible = false;
    }
...

```





## $\textcolor{red}{Q34}$

私有方法和其他方法的区别，使用区间是什么情景

_click()和private click()意义一样吗



**不管**



## $\textcolor{red}{Q35}$

我该如何在json文件中实现国际化



**使用`res`将`json`文件的数据提出来，然后再对数据通过`I18n`管道进行转化**

## Tip8

`number`管道：

它的格式是 '{最少整数位数}.{最少小数位数}-{最多小数位数}'

例如`item.number | number:'3.'`，意味着确保整数至少显示3位，小数部分不进行更改。



# Day6

## $\textcolor{red}{Q36}{(V16)}$

```html
<div *ngIf="show; then thenBlock; else elseBlock">this is ignored</div>
```

这里`*ngIf`中当`show`为`true`的时候,重定向渲染页面为`thenBlock`指向的页面，这是否意味着原来的`<div>`已经失去了本来的用途——因为它的元素并不会被渲染



**一般使用**

```html
<div *ngIf="show; then thenBlock; else elseBlock"></div>
或
<div *ngIf="show;else elseBlock">this is ignored</div>
形式
```

**有then就是宿主，无自己本身意义，then和自身同时只存一个**

## $\textcolor{red}{Q37}$

`<i></i>`不是表示斜体吗，为什么项目中使用`<i></i>`标记的文字没有斜体显示



## Q38

每次点击列表的不同形态选项后，是不是需要跟据不同的选项值手动刷新列表，还是说angular可以自动刷新列表



## $\textcolor{red}{Q39}$

提交数据的逻辑是怎么样的，是直接使用loading让用户等待直到后端返回信息；还是现在前端页面进行实时更改，在异步获得了后端传回数据后，再下一次加载数据时进行更改。



**直接使用loading让用户等待直到后端返回信息**

## $\textcolor{red}{Q40}$

我如果在某个地方`public`了一个`name`,是不是意味着我在其他地方不能使用同名的`name`作为变量或者方程，即使新的这个`name`是`private`声明的。



## Q41

```typescript
 openEdit(record: { id?: number } = {}): void {
    this.modal.create(ProBasicListEditComponent, { record }, { size: 'md' }).subscribe(res => {
      if (record.id) {
        record = { ...record, id: 'mock_id', percent: 0, ...res };
      } else {
        this.data.splice(0, 0, res);
        this.data = [...this.data];
      }
      this.cdr.detectChanges();
    });
  }
```

为什么这个还需要使用`this.data = [...this.data]`来强制更新触发更新，下面的`this.cdr.detectChanges()`不是可以手动触发一次更新吗？



## $\textcolor{red}{Q42}$

```typescript
  getData(): void {
    this.loading = true;
    this.q.statusList = this.status.filter(w => w.checked).map(item => item.index);
    if (this.q.status !== null && this.q.status > -1) {
      this.q.statusList.push(this.q.status);
    }
    this.http
      .get('/rule', this.q)
      .pipe(
        map((list: Array<{ status: number; statusText: string; statusType: string }>) =>
          list.map(i => {
            const statusItem = this.status[i.status];
            i.statusText = statusItem.text;
            i.statusType = statusItem.type;
            return i;
          })
        ),
        tap(() => (this.loading = false))
      )
      .subscribe(res => {
        this.data = res;
        this.cdr.detectChanges();
      });
  }
```

这里为什么出现了一个list，是直接定义的一个变量吗？



**直接定义变量**

## $\textcolor{red}{Q43}$

在构造组件时直接在constructor中声明变量是不是和在之后声明变量等价：

```

constructor(
    private http: _HttpClient
)


private readonly http = inject(_HttpClient)

```



**等价**



# Day7

## $\textcolor{red}{Q44}$

为什么要更改路径名字，是为了方便引用吗？

```typescript
      { path: '', redirectTo: 'dashboard/overview', pathMatch: 'full' },
      { path: 'nav', loadChildren: () => import('./g5/g5-nav.module').then(m => m.G5NavModule) },
      { path: 'dashboard', loadChildren: () => import('./dashboard/dashboard.module').then(m => m.DashboardModule) },
      // { path: 'exception', loadChildren: () => import('./exception/exception.module').then(m => m.ExceptionModule) },
      { path: 'collaboration', loadChildren: () => import('./collaboration/collaboration.module').then(m => m.CollaborationModule) }, //自定义
      {
        path: 'pv/sites',
        loadChildren: () => import('./pv/sites.module').then(m => m.SiteModule),
        data: { titleI18n: 'menu_@#$.aside.portfolio.site', reuse: true }
      }, //自定义
```



**是的，可以自己自定义路径名字，遵循命名规范**

## Tip9

在使用`ChangeDetectionStrategy`的时候，如果使用OnPush模式，则后面必须显示使用`this.cdr.detectChanges();`

（默认为Default模式）

具体用例如下：

~~~typescript
import { ChangeDetectionStrategy } from '@angular/core';

@Component{
    ```
    changeDetection: ChangeDetectionStrategy.Onpush,
    ```
}

export class Username{
    private readonly cdr = inject(ChangeDetectorRef);
    ```
	this.cdr.detectChanges();
    ```
}


~~~





## $\textcolor{red}{Q45}$

我看见 [Validators](https://angular.cn/api/forms/Validators) API中定义了验证邮箱：`Validators.email`,为什么我们还需要自行写一个验证邮箱的函数（包含正则表达式）



@register-account.component.ts 



**国外某些邮箱会不通过`Validators.email`的校验，所以使用自定义的正则表达式去匹配他**



## $\textcolor{red}{Q46}$

```typescript
  submit() {
    // tslint:disable-next-line:forin
    for (const i in this.f.controls) {
      this.f.controls[i].markAsDirty();
      this.f.controls[i].updateValueAndValidity();
    }
    if (this.f.valid) {
      console.log('Valid!');
      console.log(this.f.value);
      this.router.navigate(['dashboard']);
    }
  }
```

这里使用`markAsDirty()`和`updateValueAndValidity()`对表单进行强制更新是为什么，提交表单的时候不会自动触发一次更新吗？还是这次是为了触发空表单提交的保险。



**焦点还在输入框中时，用户就会点击按钮（符合习惯）。这时我们需要让输入框失去焦点并检测，所以手动触发更新。**



## $\textcolor{red}{Q47}$

```
commMixData: any = {};
  extractCommonCode(commMixData: any = {}) {
    const { resp, res } = commMixData;
    try {
      this.reuseTabService.clear();
    } catch (error) {}
    const currentUser = this.getCurrentUserRole(resp);
    
```

这里的commMixData不是空的吗，为什么还有从中取值的操作。



**存在变量提升**



# Day 8

## $\textcolor{red}{Q48}$

```typescript
  @Input()
  set toggleChange(value: boolean) {
    if (typeof value === 'undefined') return;
    this.searchToggled = true;

    setTimeout(() => {
      this.qIpt.focus();
    }, 300);
  }
```

@search.component



这里接受了一个value但是后面并和这个value没有什么关系

**无意义**

## $\textcolor{red}{Q49}$

```
_submitForm() {}
与
submitForm() {}
```

使用上没什么区别，只是命名规范（规则）？



**没区别，命名规范是前面加_表示该方法(函数/变量)为私有**



## $\textcolor{red}{Q50}$

不同的CSS只要不用`import`导入到`less`中，相同的类名其实互不影响



**是的**

# Day9

## $\textcolor{red}{Q51}$

工单提交的详情信息里面是一个留言板类型的，项目中有实时通讯的需求类型吗（websocket、socket.io)



**websocket**

## $\textcolor{red}{Q52}$

全屏功能

**未实现**

## $\textcolor{red}{Q53}$

如果输入和输出属性名称相同（除了 Change 后缀），可以实现双向绑定?

```typescript
     @Input() count: number = 0;
     @Output() countChange = new EventEmitter<number>();
```



**改了名字就不一样了，同一个名称会变量冲突**

## $\textcolor{red}{Q54}$

```typescript
  @Input() @InputBoolean() showLangText = true;

  @Input() @InputBoolean() isHome = false;
```

这个并没有从父组件获得值，那是否可以直接写成：

```
let showLangText : Boolean = true
```

@i18n.component.ts





## $\textcolor{red}{Q55}$

![image-20250605142656410](C:\Users\16229\AppData\Roaming\Typora\typora-user-images\image-20250605142656410.png)



**一般不用，因为没有提示词**



# Day10

## $\textcolor{red}{Q56}$

```typescript
 ngOnInit() {
    this.http.get(this.apiUrl)
      .pipe(mergeMap(users => {
        let username = users[6].username;
        return this.http.get(`${this.apiUrl}?username=${username}`)
      })).subscribe(user => {
        this.user = user
      });
  }
```

一般会这样写吗，还是分成函数嵌套的形式

```typescript
  ngOnInit() {
    this.http.get<any[]>(this.apiUrl).subscribe(users => {
      if (users && users.length > 6) {
        let username = users[6].username;
        this.getUser(username);
      }
    });
  }

  getUser(username: string) {
    this.http.get(`${this.apiUrl}?username=${username}`).subscribe(user => {
      this.user = user;
    });
  }
```



**使用async await**



# Day11

## $\textcolor{red}{Q57}$

```html
<nz-breadcrumb>

 <nz-breadcrumb-item *ngFor="let item of nodes">

​    <a [routerLink]="'/dashboard/overview'" [fragment]="item?.key">{{ item.label }}</a>

 </nz-breadcrumb-item>

</nz-breadcrumb>
```

这个是否没有使用
@WEBCONSOLE-G5 dashboard/overview/overview.component.html



**没有**



## $\textcolor{red}{Q58}$

```html
                    <div class="title">
                      <span *ngIf="idx !== 2">
                        <span>
                          <ellipsis lines="1" tooltip>
                            {{ item.year }}
                            {{ 'new_dashboard_@#$.generation.income.year' | i18n }}
                            {{ 'new_dashboard_@#$.generation.income.inc' | i18n }}
                          </ellipsis>
                        </span>
                      </span>
                      <span *ngIf="idx === 2">
                        <span>
                          <ellipsis lines="1" tooltip>
                            {{ item.year }}
                            {{ 'new_dashboard_@#$.generation.income.year' | i18n }}
                            {{ 'new_dashboard_@#$.generation.income.inc' | i18n }}
                          </ellipsis>
                        </span>
                      </span>
                    </div>
```

这两个代码块的意义不是完全相同吗



**相同**



# Day12

## $\textcolor{red}{Q59}$

@Input 和@Output可以继承吗？子组件从父组件获得数据后，子组件的子组件还可以用@Input获取同一个数据吗？



**可以**

# Day13

# Day14

## $\textcolor{red}{Q60}$

![image-20250612134109557](C:\Users\16229\AppData\Roaming\Typora\typora-user-images\image-20250612134109557.png)

不同浏览器中的渲染不同



~~**不同浏览器css解析不一样，CSS书写不规范**~~

**特殊bug，难以复现，暂时放弃**

# Day15

## $\textcolor{red}{Q61}$

```typescript
    if (this.settings.layout.lang == 'en-US') {
      this.obj['Accept-Language'] = 'en-US,en;q=0.8';
    } else if (this.settings.layout.lang == 'pt-PT') {
      this.obj['Accept-Language'] = 'pt-PT,pt;q=0.5';
    } else if (this.settings.layout.lang == 'es-ES') {
      this.obj['Accept-Language'] = 'es-ES,es;q=0.5';
    } else if (this.settings.layout.lang == 'pl-PL') {
      this.obj['Accept-Language'] = 'pl-PL,pl;q=0.5';
    } else if (this.settings.layout.lang == 'it-IT') {
      this.obj['Accept-Language'] = 'it-IT,it;q=0.5';
    } else if (this.settings.layout.lang == 'de-DE') {
      this.obj['Accept-Language'] = 'de-DE,de;q=0.5';
    } else if (this.settings.layout.lang == 'nl-NL') {
      this.obj['Accept-Language'] = 'nl-NL,nl;q=0.5';
    } else if (this.settings.layout.lang == 'tr-TR') {
      this.obj['Accept-Language'] = 'tr-TR,tr;q=0.5';
    } else {
      this.obj['Accept-Language'] = 'zh-CN,zh;q=0.9';
    }
```

这里Accept-Language中的权重q是按什么设定的



**无意义**

# Day16

## $\textcolor{red}{Q62}$

项目中有用到防抖节流技术吗，需要使用吗？



**重要，在模糊搜索等地方**

# Day17

## $\textcolor{red}{Q63}$

Mock是不是无法和真实Api并存（无法做到部分api请求使用mock，部分api请求使用真实服务器）



**无法并存**

## Tip10

|      键      |    值类型    | 解释                                                         |
| :----------: | :----------: | ------------------------------------------------------------ |
|   context    | string[]类型 | 每个元素代表一个路径后缀，多个前缀的路径，都用一个路径来代理，使用context属性，这个数组下所有路径都会用target路径来代理 |
|    target    |  PROXY_URL   | 跨域跳转的目标地址                                           |
|    secure    |    布尔值    | 表示是否验证SSL Certs,默认情况下，不接受运行在 HTTPS（超文本传输安全协议） 上，且使用了无效证书的后端服务器 |
| changeOrigin |    布尔值    | 设置为true, 本地就会虚拟一个服务器接收你的请求并代你发送该请求,解决跨域问题 |
| pathRewrite  |              | 重写url路径                                                  |
|      ws      |    布尔值    | 是否代理websockets                                           |
|   logLevel   |     warn     | 日志级别。可以是'信息'，'警告'，'错误'或'沉默'。             |
|   headers    |              | 拼接请求头                                                   |



## $\textcolor{red}{Q64}$

进度条是如何和文件加载关联的，监测一个什么东西来实时推进进度条的进度？



**上传可以监控**

**网络是查看接口：100接口读取一个加1%**

## $\textcolor{red}{Q65}$

```html
<a nz-button> 
	click 
</a>

和

<button nz-button>
    click
</button>

有什么区别？
```



# Day18

## Tip11

**Shift + Tab** 快捷键来快速消除选中代码块的前置空格



# Day19

## Error1

open-api等页面的高度格式问题



# Day20

## $\textcolor{red}{Q66}$

有些使用any有些使用number



**传入字符串可能会导致报错**

## $\textcolor{red}{Q67}$

使用 `this.echarts = require('echarts/lib/echarts')`无法导入echarts,只能使用`import * as echarts from 'echarts'`静态导入，为什么？



**使用`import`,最新的方法**



# Day21

## Q68

父权限中拥有子权限，不同权限拥有不同的角色，要求父权限的角色能够也能通过子权限的东西（父权限也能看到子权限的按钮）
