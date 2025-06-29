const { regClass, property } = Laya;

@regClass()
export class ButtonSprite extends Laya.Script {
    // 声明 owner 为 Laya.Button 类型
    declare owner: Laya.Button;

    // 正常状态纹理
    @property({ type: Laya.Texture2D })
    public normalSprite: Laya.Texture2D = null;

    // 按下状态纹理
    @property({ type: Laya.Texture2D })
    public pressedSprite: Laya.Texture2D = null;

    // 悬停状态纹理
    @property({ type: Laya.Texture2D })
    public hoverSprite: Laya.Texture2D = null;

    // 禁用状态纹理
    @property({ type: Laya.Texture2D })
    public disableSprite: Laya.Texture2D = null;

    // 组件被激活后执行
    onAwake(): void {
        // 确保owner是Button类型
        if (!(this.owner instanceof Laya.Button)) {
            console.error("ButtonSprite must be attached to a Button component");
            return;
        }

        // 初始化按钮状态
        this.updateButtonState("normal");
    }

    // 组件被启用时执行
    onEnable(): void {
        this.owner.on(Laya.Event.MOUSE_DOWN, this, this.onButtonPress);
        this.owner.on(Laya.Event.MOUSE_UP, this, this.onButtonRelease);
        this.owner.on(Laya.Event.MOUSE_OVER, this, this.onButtonHover);
        this.owner.on(Laya.Event.MOUSE_OUT, this, this.onButtonNormal);
    }

    // 组件被禁用时执行
    onDisable(): void {
        this.owner.off(Laya.Event.MOUSE_DOWN, this, this.onButtonPress);
        this.owner.off(Laya.Event.MOUSE_UP, this, this.onButtonRelease);
        this.owner.off(Laya.Event.MOUSE_OVER, this, this.onButtonHover);
        this.owner.off(Laya.Event.MOUSE_OUT, this, this.onButtonNormal);
    }

    // 按钮按下
    private onButtonPress(): void {
        this.updateButtonState("pressed");
    }

    // 按钮释放
    private onButtonRelease(): void {
        if (this.owner.mouseX !== -1 && this.owner.mouseY !== -1) {
            // 如果鼠标仍在按钮上
            this.updateButtonState("hover");
        } else {
            this.updateButtonState("normal");
        }
    }

    // 按钮悬停
    private onButtonHover(): void {
        this.updateButtonState("hover");
    }

    // 按钮恢复正常状态
    private onButtonNormal(): void {
        this.updateButtonState("normal");
    }

    // 更新按钮状态
    private updateButtonState(state: "normal" | "pressed" | "hover" | "disabled"): void {
        if (!this.owner) return;

        switch (state) {
            case "normal":
                if (this.normalSprite) this.owner.skin = this.normalSprite.url;
                break;
            case "pressed":
                if (this.pressedSprite) this.owner.skin = this.pressedSprite.url;
                break;
            case "hover":
                if (this.hoverSprite) this.owner.skin = this.hoverSprite.url;
                break;
            case "disabled":
                if (this.disableSprite) this.owner.skin = this.disableSprite.url;
                break;
        }
    }

    // 设置按钮是否可用
    public set enabled(value: boolean) {
        this.owner.mouseEnabled = value;
        this.updateButtonState(value ? "normal" : "disabled");
    }

    public get enabled(): boolean {
        return this.owner.mouseEnabled;
    }
}
