.class Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutMethodProxy;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;
.source "ShortcutServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplacePkgAndShortcutMethodProxy"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private findFirstShortcutInfo([Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 161
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lmirror/android/content/pm/ShortcutInfo;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    .line 163
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 3

    .line 150
    invoke-direct {p0, p3}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutMethodProxy;->findFirstShortcutInfo([Ljava/lang/Object;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutMethodProxy;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutMethodProxy;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub;->access$000(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
