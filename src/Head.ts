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

    onAwake(): void {
        this.bodyArray.push(this.owner);
        for (let i = 0; i < this.bodyNum; i++) {
            this.getNewBody();
        }
    }

    onStart(): void {
        const { x, y } = this.randomPos();
        this.owner.pos(x, y);
        this.owner.parent.addChild(this.foodPrefab.create());
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

    getNewBody() {
        const newBody = this.bodyPrefab.create() as Laya.Image;
        if (this.bodyArray.length === 1) {
            const dir = new Laya.Vector2(this.owner.x, this.owner.y);
            Laya.Vector2.normalize(dir, dir);
            Laya.Vector2.scale(dir, this.bodyDistance, dir);
            newBody.pos(this.owner.x + dir.x, this.owner.y + dir.y);
        }
        this.owner.parent.addChild(newBody);
        this.bodyArray.push(newBody);
    }
}
