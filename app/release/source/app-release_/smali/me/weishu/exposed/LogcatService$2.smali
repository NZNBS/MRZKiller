.class Lme/weishu/exposed/LogcatService$2;
.super Ljava/lang/Object;
.source "LogcatService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weishu/exposed/LogcatService;->startReadLogcat(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/weishu/exposed/LogcatService;


# direct methods
.method constructor <init>(Lme/weishu/exposed/LogcatService;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lme/weishu/exposed/LogcatService$2;->this$0:Lme/weishu/exposed/LogcatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 76
    invoke-static {p2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 78
    iget-object p1, p0, Lme/weishu/exposed/LogcatService$2;->this$0:Lme/weishu/exposed/LogcatService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lme/weishu/exposed/LogcatService;->access$002(Lme/weishu/exposed/LogcatService;Z)Z

    return-void
.end method
