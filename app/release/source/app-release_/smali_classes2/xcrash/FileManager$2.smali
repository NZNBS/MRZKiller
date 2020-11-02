.class Lxcrash/FileManager$2;
.super Ljava/util/TimerTask;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxcrash/FileManager;->maintain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxcrash/FileManager;


# direct methods
.method constructor <init>(Lxcrash/FileManager;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lxcrash/FileManager$2;->this$0:Lxcrash/FileManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    iget-object v0, p0, Lxcrash/FileManager$2;->this$0:Lxcrash/FileManager;

    invoke-static {v0}, Lxcrash/FileManager;->access$000(Lxcrash/FileManager;)V

    return-void
.end method
