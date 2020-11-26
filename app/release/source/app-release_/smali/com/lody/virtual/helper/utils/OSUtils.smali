.class public Lcom/lody/virtual/helper/utils/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# static fields
.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;


# instance fields
.field private emui:Z

.field private flyme:Z

.field private miui:Z

.field private miuiVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/lody/virtual/helper/utils/OSUtils;

    invoke-direct {v0}, Lcom/lody/virtual/helper/utils/OSUtils;-><init>()V

    sput-object v0, Lcom/lody/virtual/helper/utils/OSUtils;->sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 31
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "ro.build.version.emui"

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/lody/virtual/helper/utils/OSUtils;->emui:Z

    const-string v1, "ro.miui.ui.version.code"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miuiVersion:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.miui.ui.version.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.miui.internal.storage"

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miui:Z

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/lody/virtual/helper/utils/OSUtils;->hasFlyme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->flyme:Z

    return-void
.end method

.method public static getInstance()Lcom/lody/virtual/helper/utils/OSUtils;
    .locals 1

    .line 45
    sget-object v0, Lcom/lody/virtual/helper/utils/OSUtils;->sOSUtils:Lcom/lody/virtual/helper/utils/OSUtils;

    return-object v0
.end method

.method private hasFlyme()Z
    .locals 4

    const/4 v0, 0x0

    .line 66
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "hasSmartBar"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getMiuiVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEmui()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->emui:Z

    return v0
.end method

.method public isFlyme()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->flyme:Z

    return v0
.end method

.method public isMiui()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/OSUtils;->miui:Z

    return v0
.end method
