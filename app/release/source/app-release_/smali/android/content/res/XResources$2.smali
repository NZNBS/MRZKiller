.class final Landroid/content/res/XResources$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/XResources;->init(Ljava/lang/ThreadLocal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-static {}, Landroid/content/res/XResources;->access$000()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_0
    invoke-static {}, Landroid/content/res/XResources;->access$000()Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/XResources$XMLInstanceDetails;

    .line 213
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 215
    new-instance v0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;

    iget-object v2, v1, Landroid/content/res/XResources$XMLInstanceDetails;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0, v2}, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;-><init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    .line 216
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->view:Landroid/view/View;

    .line 217
    iget-object p1, v1, Landroid/content/res/XResources$XMLInstanceDetails;->resNames:Landroid/content/res/XResources$ResourceNames;

    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->resNames:Landroid/content/res/XResources$ResourceNames;

    .line 218
    iget-object p1, v1, Landroid/content/res/XResources$XMLInstanceDetails;->variant:Ljava/lang/String;

    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->variant:Ljava/lang/String;

    .line 219
    iget-object p1, v1, Landroid/content/res/XResources$XMLInstanceDetails;->res:Landroid/content/res/XResources;

    iput-object p1, v0, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->res:Landroid/content/res/XResources;

    .line 220
    invoke-static {v0}, Lde/robv/android/xposed/callbacks/XCallback;->callAll(Lde/robv/android/xposed/callbacks/XCallback$Param;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 213
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
