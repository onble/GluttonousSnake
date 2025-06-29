const { regClass, property } = Laya;

@regClass()
export class Food extends Laya.Script {
    declare owner: Laya.Image;

    onStart(): void {
        this.owner.color = this.getRandomColor();
        const { x, y } = this.randomPos();
        this.owner.pos(x, y);
    }

    getRandomColor(): string {
        const componentToHex = (c: number): string => {
            const hex = c.toString(16);
            return hex.length === 1 ? "0" + hex : hex;
        };

        const r = componentToHex(Math.floor(Math.random() * 256));
        const g = componentToHex(Math.floor(Math.random() * 256));
        const b = componentToHex(Math.floor(Math.random() * 256));

        return `#${r}${g}${b}`.toUpperCase();
    }
    randomPos() {
        // 设计宽度
        const designWidth: number = Laya.stage.designWidth;
        // 设计高度
        const designHeight: number = Laya.stage.designHeight;

        const x = Math.random() * (designWidth - 300) + 150;
        const y = Math.random() * (designHeight - 300) + 150;
        return { x, y };
    }
}
