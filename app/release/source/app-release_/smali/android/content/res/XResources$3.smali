.class final Landroid/content/res/XResources$3;
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

    .line 225
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/content/res/XResources;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 235
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "xmlInstanceDetails"

    .line 239
    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/XResources$XMLInstanceDetails;

    if-eqz v0, :cond_2

    .line 241
    new-instance v1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;

    iget-object v2, v0, Landroid/content/res/XResources$XMLInstanceDetails;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v1, v2}, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;-><init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    .line 242
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    aget-object p1, p1, v2

    check-cast p1, Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->view:Landroid/view/View;

    .line 244
    iget-object p1, v0, Landroid/content/res/XResources$XMLInstanceDetails;->resNames:Landroid/content/res/XResources$ResourceNames;

    iput-object p1, v1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->resNames:Landroid/content/res/XResources$ResourceNames;

    .line 245
    iget-object p1, v0, Landroid/content/res/XResources$XMLInstanceDetails;->variant:Ljava/lang/String;

    iput-object p1, v1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->variant:Ljava/lang/String;

    .line 246
    iget-object p1, v0, Landroid/content/res/XResources$XMLInstanceDetails;->res:Landroid/content/res/XResources;

    iput-object p1, v1, Lde/robv/android/xposed/callbacks/XC_LayoutInflated$LayoutInflatedParam;->res:Landroid/content/res/XResources;

    .line 247
    invoke-static {v1}, Lde/robv/android/xposed/callbacks/XCallback;->callAll(Lde/robv/android/xposed/callbacks/XCallback$Param;)V

    :cond_2
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/content/res/XResources;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method
