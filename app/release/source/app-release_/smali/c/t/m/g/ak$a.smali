.class Lc/t/m/g/ak$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/ak;


# direct methods
.method private constructor <init>(Lc/t/m/g/ak;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/ak$a;->a:Lc/t/m/g/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/t/m/g/ak;B)V
    .locals 0

    invoke-direct {p0, p1}, Lc/t/m/g/ak$a;-><init>(Lc/t/m/g/ak;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/t/m/g/ak$a;->a:Lc/t/m/g/ak;

    iget-object p1, p1, Lc/t/m/g/ak;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/t/m/g/ak$a;->a:Lc/t/m/g/ak;

    iget-object p1, p1, Lc/t/m/g/ak;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lc/t/m/g/ak$a;->a:Lc/t/m/g/ak;

    iget-object p1, p1, Lc/t/m/g/ak;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
