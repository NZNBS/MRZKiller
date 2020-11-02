.class Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutListMethodProxy;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;
.source "ShortcutServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReplacePkgAndShortcutListMethodProxy"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private varargs findFirstShortcutList([Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 132
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lmirror/android/content/pm/ParceledListSlice;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-static {v3}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public varargs beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 4

    .line 116
    invoke-direct {p0, p3}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutListMethodProxy;->findFirstShortcutList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutListMethodProxy;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 120
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub$ReplacePkgAndShortcutListMethodProxy;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub;->access$000(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
