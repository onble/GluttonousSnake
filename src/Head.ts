const { regClass, property } = Laya;

@regClass()
export class Head extends Laya.Script {
    declare owner: Laya.Sprite;

    @property(Array(Laya.Node))
    public bodyArray: Array<Laya.Node> = [];

    @property(Laya.Prefab)
    public bodyPrefab: Laya.Prefab = null;

    @property(Laya.Prefab)
    public foodPrefab: Laya.Prefab = null;

    @property(Number)
    public bodyNum: number = 2;

    @property(Number)
    public bodyDistance: number = 50;

    public speed: number = 200;

    onStart(): void {}

    onUpdate(): void {}
}
