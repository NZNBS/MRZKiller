.class final Lc/t/m/g/cf$1;
.super Ljava/lang/Thread;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 97
    :try_start_0
    invoke-static {}, Lc/t/m/g/cf;->a()Lc/t/m/g/cf;

    .line 98
    invoke-static {}, Lc/t/m/g/ch;->a()Lc/t/m/g/ch;

    .line 99
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
