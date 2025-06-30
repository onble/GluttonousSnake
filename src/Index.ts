const { regClass, property } = Laya;

@regClass()
export class Index extends Laya.Script {
    declare owner: Laya.Sprite;

    @property(Number)
    public index: number = 0;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        this.owner.zOrder = this.index;
    }
}
