.class public Lcom/lody/virtual/client/fixer/ContextFixer;
.super Ljava/lang/Object;
.source "ContextFixer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextFixer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixContext(Landroid/content/Context;)V
    .locals 3

    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v0

    const-class v1, Lcom/lody/virtual/client/hook/proxies/graphics/GraphicsStatsStub;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/InvocationStubManager;->checkEnv(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 40
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 41
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    .line 47
    :cond_1
    sget-object v0, Lmirror/android/app/ContextImpl;->mPackageManager:Lmirror/RefObject;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :goto_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "dropbox"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 57
    invoke-static {}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;

    move-result-object v1

    const-class v2, Lcom/lody/virtual/client/hook/proxies/dropbox/DropBoxManagerStub;

    invoke-virtual {v1, v2}, Lcom/lody/virtual/client/core/InvocationStubManager;->getInvocationStub(Ljava/lang/Class;)Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;

    if-eqz v1, :cond_3

    .line 60
    :try_start_2
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v2, "mService"

    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationStub;->getProxyInterface()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_2
    .catch Lcom/lody/virtual/helper/utils/ReflectException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/ReflectException;->printStackTrace()V

    .line 65
    :cond_3
    :goto_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lmirror/android/app/ContextImpl;->mBasePackageName:Lmirror/RefObject;

    invoke-virtual {v1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 68
    sget-object v1, Lmirror/android/app/ContextImplKitkat;->mOpPackageName:Lmirror/RefObject;

    invoke-virtual {v1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_5

    .line 71
    sget-object v1, Lmirror/android/content/ContentResolverJBMR2;->mPackageName:Lmirror/RefObject;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :catchall_1
    :cond_5
    return-void
.end method
