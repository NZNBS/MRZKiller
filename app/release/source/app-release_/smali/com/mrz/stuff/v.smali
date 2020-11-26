.class Lcom/mrz/stuff/v;
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

    .line 459
    iput-object p1, p0, Lcom/mrz/stuff/v;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

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

    const-string v0, "ragpe|s\u0018"

    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/mrz/stuff/v;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

    iget-object v0, v0, Lcom/mrz/stuff/q;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mrz/stuff/a;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/mrz/stuff/a;->ALLATORIxDEMO()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&{\u0013v\u0005rV~\u0018d\u0002v\u001a{Vc\u001erVp\u0017z\u00137"

    invoke-static {v2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mrz/stuff/v;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

    iget-object v2, v2, Lcom/mrz/stuff/q;->ALLATORIxDEMO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0017MX\u0019V]S\u0019CQ^J\u0017I[LPPY\u0017"

    invoke-static {v2}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "P\u0017z\u001378x\u000270x\u0003y\u00126W6"

    .line 272
    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "sV@W[VV]\u0017pC\u0018"

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mrz/stuff/j;

    invoke-direct {v2, p0}, Lcom/mrz/stuff/j;-><init>(Lcom/mrz/stuff/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "[\u0017c\u0013e"

    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mrz/stuff/p;

    invoke-direct {v2, p0}, Lcom/mrz/stuff/p;-><init>(Lcom/mrz/stuff/v;)V

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3
    iget-object v0, p0, Lcom/mrz/stuff/v;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

    iput v3, v0, Lcom/mrz/stuff/q;->j:I

    .line 481
    iget-object v0, p0, Lcom/mrz/stuff/v;->ALLATORIxDEMO:Lcom/mrz/stuff/q;

    iget-object v0, v0, Lcom/mrz/stuff/q;->F:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
