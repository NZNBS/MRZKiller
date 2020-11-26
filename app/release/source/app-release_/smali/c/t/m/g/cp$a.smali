.class final Lc/t/m/g/cp$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cp;


# direct methods
.method public constructor <init>(Lc/t/m/g/cp;Landroid/os/Looper;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lc/t/m/g/cp$a;->a:Lc/t/m/g/cp;

    .line 860
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 865
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-static {}, Lc/t/m/g/cp;->c()V

    .line 871
    iget-object p1, p0, Lc/t/m/g/cp$a;->a:Lc/t/m/g/cp;

    invoke-static {p1}, Lc/t/m/g/cp;->b(Lc/t/m/g/cp;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lc/t/m/g/cp;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object p1, p0, Lc/t/m/g/cp$a;->a:Lc/t/m/g/cp;

    invoke-static {p1}, Lc/t/m/g/cp;->a(Lc/t/m/g/cp;)V

    return-void
.end method
