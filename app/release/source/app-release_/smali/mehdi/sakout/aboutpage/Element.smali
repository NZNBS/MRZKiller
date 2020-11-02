.class public Lmehdi/sakout/aboutpage/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private autoIconColor:Ljava/lang/Boolean;

.field private colorDay:Ljava/lang/Integer;

.field private colorNight:Ljava/lang/Integer;

.field private gravity:Ljava/lang/Integer;

.field private iconDrawable:Ljava/lang/Integer;

.field private intent:Landroid/content/Intent;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmehdi/sakout/aboutpage/Element;->autoIconColor:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmehdi/sakout/aboutpage/Element;->autoIconColor:Ljava/lang/Boolean;

    .line 33
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->title:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lmehdi/sakout/aboutpage/Element;->iconDrawable:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getAutoApplyIconTint()Ljava/lang/Boolean;
    .locals 1

    .line 188
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->autoIconColor:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->gravity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIconDrawable()Ljava/lang/Integer;
    .locals 1

    .line 100
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->iconDrawable:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIconNightTint()Ljava/lang/Integer;
    .locals 1

    .line 137
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->colorNight:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIconTint()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->colorDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 166
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lmehdi/sakout/aboutpage/Element;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoApplyIconTint(Ljava/lang/Boolean;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 198
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->autoIconColor:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setGravity(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 73
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->gravity:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIconDrawable(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 110
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->iconDrawable:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIconNightTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 147
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->colorNight:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIconTint(Ljava/lang/Integer;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 127
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->colorDay:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 180
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 55
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 90
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;
    .locals 0

    .line 156
    iput-object p1, p0, Lmehdi/sakout/aboutpage/Element;->value:Ljava/lang/String;

    return-object p0
.end method
