const { regClass, property } = Laya;

@regClass()
export class Head extends Laya.Script {
    declare owner: Laya.Sprite;

    //#region 预制体引用
    @property(Laya.Prefab)
    public bodyPrefab: Laya.Prefab = null; // 蛇身预制体

    @property(Laya.Prefab)
    public foodPrefab: Laya.Prefab = null; // 食物预制体

    //#endregion 预制体引用

    //#region 变量

    @property(Array(Laya.Node))
    public bodyArray: Array<Laya.Node> = []; // 蛇身体数组（包含蛇头）

    @property(Number)
    public bodyNum: number = 2; // 初始蛇身数量

    @property(Number)
    public bodyDistance: number = 50; // 蛇身之间的距离

    public speed: number = 200; // 蛇移动速度

    //#region 变量

    onStart(): void {
        const { x, y } = this.randomPos();
        this.owner.pos(x, y);
    }

    onUpdate(): void {}

    randomPos() {
        // 设计宽度
        const designWidth: number = Laya.stage.designWidth;
        // 设计高度
        const designHeight: number = Laya.stage.designHeight;

        const x = Math.random() * (designWidth - 600) + 300;
        const y = Math.random() * (designHeight - 600) + 300;
        return { x, y };
    }
}
