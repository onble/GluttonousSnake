const { regClass, property } = Laya;

@regClass()
export class Joystick extends Laya.Script {
    public static ins: Joystick = null;

    /** 摇杆背景节点 */
    @property({ type: Laya.Sprite, tips: "摇杆背景节点" })
    public nodeDotBg: Laya.Sprite = null;

    /** 摇杆中间点节点 */
    @property({ type: Laya.Sprite, tips: "摇杆中间点节点" })
    public nodeDot: Laya.Sprite = null;

    /** 摇杆移动的最大半径 */
    private maxLength: number = 0;

    private dragging: boolean = false;

    /** 方向向量 */
    private _dir: Laya.Vector3 = new Laya.Vector3(0, 0, 0);
    public get dir(): Laya.Vector3 {
        return this._dir;
    }
    public set dir(value: Laya.Vector3) {
        this._dir = value;
    }

    /** 角色角度 */
    public roleAngle: number = 0;

    onAwake(): void {
        if (Joystick.ins == null) {
            Joystick.ins = this;
        }
        this.init();
    }

    private init(): void {
        // 获取摇杆背景半径
        this.maxLength = this.nodeDotBg.width / 2;

        // 添加触摸事件
        this.nodeDotBg.on(Laya.Event.MOUSE_DOWN, this, (e: Laya.Event) => {
            this.dragging = true;
            this.onTouchMove(e);
        });
        this.owner.on(Laya.Event.MOUSE_MOVE, this, this.onTouchMove);
        this.owner.on(Laya.Event.MOUSE_UP, this, (e: Laya.Event) => {
            this.dragging = false;
            this.onTouchEnd(e);
        });
    }

    /** 触摸移动处理 */
    private onTouchMove(e: Laya.Event): void {
        if (!this.dragging) return;
        // 获取触摸点相对于摇杆背景的局部坐标
        const localPos = this.nodeDotBg.globalToLocal(new Laya.Point(e.stageX, e.stageY), true);
        const raidPos = new Laya.Point(localPos.x - this.nodeDotBg.width / 2, localPos.y - this.nodeDotBg.height / 2);
        // 计算距离
        const length = Math.sqrt(raidPos.x * raidPos.x + raidPos.y * raidPos.y);

        if (length > 0) {
            // 计算方向向量
            this._dir.x = raidPos.x / length;
            this._dir.y = raidPos.y / length;

            // 限制在最大半径内
            if (length > this.maxLength) {
                raidPos.x = this.maxLength * this._dir.x;
                raidPos.y = this.maxLength * this._dir.y;
            }

            // 更新摇杆位置
            this.nodeDot.pos(
                raidPos.x + this.nodeDotBg.width / 2 - this.nodeDot.width / 2,
                raidPos.y + this.nodeDotBg.height / 2 - this.nodeDot.height / 2
            );
        }
    }

    /** 触摸结束处理 */
    private onTouchEnd(e: Laya.Event): void {
        this._dir = new Laya.Vector3(0, 0, 0);
        this.nodeDot.pos(
            this.nodeDotBg.width / 2 - this.nodeDot.width / 2,
            this.nodeDotBg.height / 2 - this.nodeDot.height / 2
        );
    }

    /** 计算角度 */
    public calculateAngle(): number {
        if (this._dir.x === 0 && this._dir.y === 0) {
            return this.roleAngle;
        }

        // 计算角度（弧度）
        const angleRad = Math.atan2(this._dir.y, this._dir.x);
        // 转换为角度
        this.roleAngle = (angleRad * 180) / Math.PI;

        return this.roleAngle;
    }
}
