.class final Lc/t/m/g/cf$a;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/cf;


# direct methods
.method private constructor <init>(Lc/t/m/g/cf;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lc/t/m/g/cf$a;->a:Lc/t/m/g/cf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/t/m/g/cf;B)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lc/t/m/g/cf$a;-><init>(Lc/t/m/g/cf;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {}, Lc/t/m/g/cf;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lc/t/m/g/cf$b;

    iget-object v0, p0, Lc/t/m/g/cf$a;->a:Lc/t/m/g/cf;

    invoke-direct {p2, v0}, Lc/t/m/g/cf$b;-><init>(Lc/t/m/g/cf;)V

    const-string v0, "Th_CC"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
