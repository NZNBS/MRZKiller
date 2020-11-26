.class public final Lc/t/m/g/bh;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lc/t/m/g/bh;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lc/t/m/g/bh;->b:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bh;->c:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/ce;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bh;->d:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/ce;->e()Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/ce;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/bh;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
