.class public final Lme/weishu/exposed/CHAHelper;
.super Ljava/lang/Object;
.source "CHAHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/weishu/exposed/CHAHelper$ApplicationHookProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CHAHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static replaceForCHA(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 5

    .line 63
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Application;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "attachBaseContext"

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attach"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "replace Application.attach with ContextWrapper.attachBaseContext for CHA"

    .line 64
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 65
    const-class p0, Landroid/content/ContextWrapper;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p0, v4, v0}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 66
    new-instance v0, Lme/weishu/exposed/CHAHelper$ApplicationHookProxy;

    invoke-direct {v0, p1}, Lme/weishu/exposed/CHAHelper$ApplicationHookProxy;-><init>(Lde/robv/android/xposed/XC_MethodHook;)V

    invoke-static {p0, v0}, Lde/robv/android/xposed/DexposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Application;

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onCreate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "replace Application.onCreate with ContextWrapper.attachBaseContext for CHA"

    .line 70
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 71
    const-class p0, Landroid/content/ContextWrapper;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    invoke-static {p0, v4, v0}, Lde/robv/android/xposed/XposedHelpers;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 72
    new-instance v0, Lme/weishu/exposed/CHAHelper$ApplicationHookProxy;

    invoke-direct {v0, p1}, Lme/weishu/exposed/CHAHelper$ApplicationHookProxy;-><init>(Lde/robv/android/xposed/XC_MethodHook;)V

    invoke-static {p0, v0}, Lde/robv/android/xposed/DexposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
