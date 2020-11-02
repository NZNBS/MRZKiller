.class final Lc/t/m/g/cs$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cs;


# direct methods
.method public constructor <init>(Lc/t/m/g/cs;Landroid/os/Looper;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lc/t/m/g/cs$a;->a:Lc/t/m/g/cs;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cs$a;->a:Lc/t/m/g/cs;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-static {v0, p1}, Lc/t/m/g/cs;->a(Lc/t/m/g/cs;Landroid/bluetooth/le/ScanResult;)V

    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object p1, p0, Lc/t/m/g/cs$a;->a:Lc/t/m/g/cs;

    invoke-static {p1}, Lc/t/m/g/cs;->b(Lc/t/m/g/cs;)V

    return-void

    .line 234
    :cond_2
    iget-object p1, p0, Lc/t/m/g/cs$a;->a:Lc/t/m/g/cs;

    invoke-static {p1}, Lc/t/m/g/cs;->a(Lc/t/m/g/cs;)I

    return-void
.end method
