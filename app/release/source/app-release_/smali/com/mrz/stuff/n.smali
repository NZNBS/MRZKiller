.class Lcom/mrz/stuff/n;
.super Ljava/lang/Object;
.source "g"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrz/stuff/s;->ALLATORIxDEMO(Lcom/mrz/stuff/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ALLATORIxDEMO:I

.field final synthetic F:Lcom/mrz/stuff/s;


# direct methods
.method constructor <init>(Lcom/mrz/stuff/s;I)V
    .locals 2

    .line 444
    iput-object p1, p0, Lcom/mrz/stuff/n;->F:Lcom/mrz/stuff/s;

    iput p2, p0, Lcom/mrz/stuff/n;->ALLATORIxDEMO:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string p2, "3O&^$R26"

    invoke-static {p2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/mrz/stuff/n;->F:Lcom/mrz/stuff/s;

    iget-object v1, v0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mrz/stuff/n;->ALLATORIxDEMO:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrz/stuff/e;

    invoke-virtual {v1}, Lcom/mrz/stuff/e;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mrz/stuff/s;->ALLATORIxDEMO(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D\u0002v\u0004c\u001fy\u00117"

    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mrz/stuff/n;->F:Lcom/mrz/stuff/s;

    iget-object v1, v1, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    iget v3, p0, Lcom/mrz/stuff/n;->ALLATORIxDEMO:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrz/stuff/e;

    invoke-virtual {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
