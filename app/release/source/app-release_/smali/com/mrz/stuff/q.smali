.class final Lcom/mrz/stuff/q;
.super Ljava/lang/Object;
.source "d"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ALLATORIxDEMO:Ljava/lang/String;

.field F:Landroid/app/ProgressDialog;

.field j:I

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 241
    iput-object p1, p0, Lcom/mrz/stuff/q;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/mrz/stuff/q;->ALLATORIxDEMO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 395
    iput p1, p0, Lcom/mrz/stuff/q;->j:I

    .line 225
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mrz/stuff/q;->F:Landroid/app/ProgressDialog;

    new-instance p1, Ljava/util/Date;

    const-wide v0, 0x176bbe33e27L

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "EXPIRED!"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 174
    :try_start_0
    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mrz/stuff/t;

    invoke-direct {v1, p0}, Lcom/mrz/stuff/t;-><init>(Lcom/mrz/stuff/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x7d0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 459
    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mrz/stuff/v;

    invoke-direct {v1, p0}, Lcom/mrz/stuff/v;-><init>(Lcom/mrz/stuff/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x2bc

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 268
    iget v2, p0, Lcom/mrz/stuff/q;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 450
    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/mrz/stuff/g;

    invoke-direct {v3, p0}, Lcom/mrz/stuff/g;-><init>(Lcom/mrz/stuff/q;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    iget-object v2, p0, Lcom/mrz/stuff/q;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/mrz/stuff/a;->C(Ljava/lang/String;)V

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 482
    :cond_0
    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mrz/stuff/o;

    invoke-direct {v1, p0}, Lcom/mrz/stuff/o;-><init>(Lcom/mrz/stuff/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mrz/stuff/l;

    invoke-direct {v1, p0}, Lcom/mrz/stuff/l;-><init>(Lcom/mrz/stuff/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
