.class public Landroid/content/res/XModuleResources;
.super Landroid/content/res/Resources;
.source "XModuleResources.java"


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Landroid/content/res/XResources;)Landroid/content/res/XModuleResources;
    .locals 3

    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 36
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 40
    new-instance v1, Landroid/content/res/XModuleResources;

    invoke-virtual {p1}, Landroid/content/res/XResources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/XResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Landroid/content/res/XModuleResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Landroid/content/res/XModuleResources;

    const/4 p1, 0x0

    invoke-direct {v1, v0, p1, p1}, Landroid/content/res/XModuleResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 44
    :goto_0
    invoke-static {p0, v1}, Landroid/app/AndroidAppHelper;->addActiveResource(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-object v1

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fwd(I)Landroid/content/res/XResForwarder;
    .locals 1

    .line 52
    new-instance v0, Landroid/content/res/XResForwarder;

    invoke-direct {v0, p0, p1}, Landroid/content/res/XResForwarder;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method
