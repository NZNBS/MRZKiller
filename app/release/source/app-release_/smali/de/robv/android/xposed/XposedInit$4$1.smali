.class Lde/robv/android/xposed/XposedInit$4$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/XposedInit$4;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/XposedInit$4;

.field final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/XposedInit$4;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lde/robv/android/xposed/XposedInit$4$1;->this$0:Lde/robv/android/xposed/XposedInit$4;

    iput-object p2, p0, Lde/robv/android/xposed/XposedInit$4$1;->val$cl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "android"

    .line 167
    invoke-static {p1}, Lde/robv/android/xposed/SELinuxHelper;->initForProcess(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lde/robv/android/xposed/XposedInit$4$1;->this$0:Lde/robv/android/xposed/XposedInit$4;

    iget-object v0, v0, Lde/robv/android/xposed/XposedInit$4;->val$loadedPackagesInProcess:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    sget-object v1, Lde/robv/android/xposed/XposedBridge;->sLoadedPackageCallbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0, v1}, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;-><init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    .line 171
    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 172
    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lde/robv/android/xposed/XposedInit$4$1;->val$cl:Ljava/lang/ClassLoader;

    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 p1, 0x0

    .line 174
    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->isFirstApplication:Z

    .line 176
    invoke-static {v0}, Lde/robv/android/xposed/callbacks/XC_LoadPackage;->callAll(Lde/robv/android/xposed/callbacks/XCallback$Param;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.server.pm.HwPackageManagerService"

    .line 180
    iget-object v2, p0, Lde/robv/android/xposed/XposedInit$4$1;->val$cl:Ljava/lang/ClassLoader;

    const-string v3, "isOdexMode"

    new-array v4, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.server.pm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const-string v2, "PackageDexOptimizer"

    goto :goto_0

    :cond_0
    const-string v2, "PackageManagerService"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lde/robv/android/xposed/XposedInit$4$1;->val$cl:Ljava/lang/ClassLoader;

    const-string v3, "dexEntryExists"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v0

    aput-object v0, v4, p1

    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catch Lde/robv/android/xposed/XposedHelpers$ClassNotFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
