.class final Lde/robv/android/xposed/XposedInit$8;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/XposedInit;->hookResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latestResKey:Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>(Ljava/lang/ThreadLocal;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lde/robv/android/xposed/XposedInit$8;->val$latestResKey:Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lde/robv/android/xposed/XposedInit$8;->val$latestResKey:Ljava/lang/ThreadLocal;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
