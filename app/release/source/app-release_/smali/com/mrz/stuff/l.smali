.class Lcom/mrz/stuff/l;
.super Ljava/lang/Object;
.source "d"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrz/stuff/q;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ALLATORIxDEMO:Lcom/mrz/stuff/q;


# direct methods
.method constructor <init>(Lcom/mrz/stuff/q;)V
    .locals 2

    .line 252
    iput-object p1, p0, Lcom/mrz/stuff/l;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    const-wide v0, 0x176bbe33e27L

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "EXPIRED!"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/mrz/stuff/l;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

    iget-object v0, v0, Lcom/mrz/stuff/q;->F:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
