.class public final Lde/robv/android/xposed/SELinuxHelper;
.super Ljava/lang/Object;
.source "SELinuxHelper.java"


# static fields
.field private static sIsSELinuxEnabled:Z = false

.field private static sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppDataFileService()Lde/robv/android/xposed/services/BaseService;
    .locals 1

    .line 52
    sget-object v0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    if-eqz v0, :cond_0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getContext()Ljava/lang/String;
    .locals 1

    .line 40
    sget-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SELinux;->getContext()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static initForProcess(Ljava/lang/String;)V
    .locals 1

    .line 69
    sget-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    .line 71
    new-instance p0, Lde/robv/android/xposed/services/ZygoteService;

    invoke-direct {p0}, Lde/robv/android/xposed/services/ZygoteService;-><init>()V

    sput-object p0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    goto :goto_0

    :cond_0
    const-string v0, "android"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 73
    invoke-static {p0}, Lde/robv/android/xposed/services/BinderService;->getService(I)Lde/robv/android/xposed/services/BinderService;

    move-result-object p0

    sput-object p0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    goto :goto_0

    .line 75
    :cond_1
    new-instance p0, Lde/robv/android/xposed/services/DirectAccessService;

    invoke-direct {p0}, Lde/robv/android/xposed/services/DirectAccessService;-><init>()V

    sput-object p0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    goto :goto_0

    .line 78
    :cond_2
    new-instance p0, Lde/robv/android/xposed/services/DirectAccessService;

    invoke-direct {p0}, Lde/robv/android/xposed/services/DirectAccessService;-><init>()V

    sput-object p0, Lde/robv/android/xposed/SELinuxHelper;->sServiceAppDataFile:Lde/robv/android/xposed/services/BaseService;

    :goto_0
    return-void
.end method

.method static initOnce()V
    .locals 1

    .line 64
    :try_start_0
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v0

    sput-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static isSELinuxEnabled()Z
    .locals 1

    .line 22
    sget-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z

    return v0
.end method

.method public static isSELinuxEnforced()Z
    .locals 1

    .line 31
    sget-boolean v0, Lde/robv/android/xposed/SELinuxHelper;->sIsSELinuxEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
