.class Lcom/mrz/activity/j;
.super Ljava/lang/Object;
.source "y"

# interfaces
.implements Lcom/gun0912/tedpermission/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;


# direct methods
.method constructor <init>(Lcom/mrz/activity/MRZActivity;)V
    .locals 2

    .line 208
    iput-object p1, p0, Lcom/mrz/activity/j;->ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

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

    const-string v0, "3O&^$R26"

    invoke-static {v0}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onPermissionDenied(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/mrz/activity/j;->ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "D/f\'}9g#{$4\u000eq$}/p@"

    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 373
    iget-object p1, p0, Lcom/mrz/activity/j;->ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

    invoke-virtual {p1}, Lcom/mrz/activity/MRZActivity;->finish()V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/mrz/activity/j;->ALLATORIxDEMO:Lcom/mrz/activity/MRZActivity;

    invoke-static {v0}, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO(Lcom/mrz/activity/MRZActivity;)V

    return-void
.end method
