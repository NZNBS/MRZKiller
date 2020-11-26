.class Lxcrash/FileManager$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 150
    iput-object p1, p0, Lxcrash/FileManager$1;->this$0:Lxcrash/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 153
    iget-object v0, p0, Lxcrash/FileManager$1;->this$0:Lxcrash/FileManager;

    invoke-static {v0}, Lxcrash/FileManager;->access$000(Lxcrash/FileManager;)V

    return-void
.end method
