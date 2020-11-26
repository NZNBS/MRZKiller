.class Lme/weishu/exposed/LogcatService$1;
.super Ljava/lang/Thread;
.source "LogcatService.java"


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

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/weishu/exposed/LogcatService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lme/weishu/exposed/LogcatService$1;->this$0:Lme/weishu/exposed/LogcatService;

    iput-object p3, p0, Lme/weishu/exposed/LogcatService$1;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 53
    iget-object v0, p0, Lme/weishu/exposed/LogcatService$1;->this$0:Lme/weishu/exposed/LogcatService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lme/weishu/exposed/LogcatService;->access$002(Lme/weishu/exposed/LogcatService;Z)Z

    :try_start_0
    const-string v0, "LogcatService"

    const-string v1, "exposed logcat start.."

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "sh"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "-c"

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -v time -s XposedStartupMarker:D Xposed:I appproc:I XposedInstaller:I art:F DexposedBridge:I ExposedBridge:D Runtime:I EpicNative:D VClientImpl:D VApp:I  >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lme/weishu/exposed/LogcatService$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
