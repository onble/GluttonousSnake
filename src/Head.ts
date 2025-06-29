import { Joystick } from "./Joystick";

const { regClass, property } = Laya;

@regClass()
export class Head extends Laya.Script {
    declare owner: Laya.Image;

    //#region 预制体引用
    @property(Laya.Prefab)
    public bodyPrefab: Laya.Prefab = null; // 蛇身预制体

    @property(Laya.Prefab)
    public foodPrefab: Laya.Prefab = null; // 食物预制体

    @property(Laya.Sprite)
    public joystick: Laya.Sprite = null; // 虚拟摇杆

    //#endregion 预制体引用

    //#region 变量

    @property(Array(Laya.Node))
    public bodyArray: Array<Laya.Image> = []; // 蛇身体数组（包含蛇头）

    @property(Number)
    public bodyNum: number = 2; // 初始蛇身数量

    @property(Number)
    public bodyDistance: number = 50; // 蛇身之间的距离

    // 蛇移动方向
    @property(Laya.Vector3)
    public snakeDir: Laya.Vector3 = new Laya.Vector3(0, 0, 0);

    public speed: number = 200; // 蛇移动速度

    //#region 变量

    onAwake(): void {
        this.bodyArray.push(this.owner);
        const { x, y } = this.randomPos();
        this.owner.pos(x, y);
        this.rotateHead(new Laya.Vector2(this.owner.x, this.owner.y));
        for (let i = 0; i < this.bodyNum; i++) {
            this.getNewBody();
        }
    }

    onStart(): void {
        Laya.timer.loop(200, this, () => {
            this.moveBody();
        });
        this.owner.parent.addChild(this.foodPrefab.create());
    }

    onUpdate(): void {
        // 获取毫秒级的帧间隔时间
        const deltaMs = Laya.timer.delta;
        // console.log("帧间隔时间(毫秒):", deltaMs);

        // 转换为秒（与 Cocos 的 deltaTime 单位一致）
        const deltaSec = deltaMs / 1000;

        this.snakeDir = this.joystick.getComponent(Joystick).dir;
        const nowPos = new Laya.Vector2(
            this.owner.x + this.snakeDir.x * this.speed * deltaSec,
            this.owner.y + this.snakeDir.y * this.speed * deltaSec
        );
        this.owner.pos(nowPos.x, nowPos.y);
    }

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
        } else {
            const lastBody = this.bodyArray[this.bodyArray.length - 1];
            const lastBoBody = this.bodyArray[this.bodyArray.length - 1];
            let dir = new Laya.Vector2(lastBoBody.x + lastBoBody.x, lastBoBody.y + lastBody.y);
            Laya.Vector2.normalize(dir, dir);
            Laya.Vector2.scale(dir, this.bodyDistance, dir);
            newBody.pos(lastBody.x + dir.x, lastBody.y + dir.y);
        }
        this.owner.parent.addChild(newBody);
        this.bodyArray.push(newBody);
    }

    rotateHead(headPos: Laya.Vector2) {
        // 创建参考向量 (1, 0)
        const referenceVec = new Laya.Vector2(1, 0);

        // 计算有符号角度（弧度）
        const angleRad = this.getSignedAngle(referenceVec, headPos);

        // 转换为角度并调整偏移
        const angleDeg = (angleRad * 180) / Math.PI - 90;

        // 应用旋转
        this.owner.rotation = angleDeg;
    }

    moveBody() {
        for (let i = this.bodyArray.length - 2; i >= 0; i--) {
            // 从后往前开始遍历移动蛇身
            this.bodyArray[i + 1].pos(this.bodyArray[i].x, this.bodyArray[i].y); // 每一个蛇身都移动到它前一个节点的位置
        }
        this.bodyArray[1].pos(this.owner.x, this.owner.y); // 第一个蛇身移动到蛇头位置
    }

    /**
     * 计算两个向量之间的有符号角度（弧度）
     */
    private getSignedAngle(a: Laya.Vector2, b: Laya.Vector2): number {
        // 计算点积和叉积
        const dot = a.x * b.x + a.y * b.y;
        const cross = a.x * b.y - a.y * b.x;

        // 使用atan2计算有符号角度
        return Math.atan2(cross, dot);
    }
}
