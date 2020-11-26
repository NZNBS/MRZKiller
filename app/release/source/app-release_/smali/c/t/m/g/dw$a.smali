.class public final Lc/t/m/g/dw$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lc/t/m/g/dw;

.field public c:I

.field public d:Ljava/lang/String;

.field private e:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network"

    .line 514
    iput-object v0, p0, Lc/t/m/g/dw$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Lc/t/m/g/dw$a;
    .locals 1

    .line 557
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lc/t/m/g/dw$a;->e:Landroid/location/Location;

    return-object p0
.end method

.method public final a()Lc/t/m/g/dw;
    .locals 3

    .line 518
    iget-object v0, p0, Lc/t/m/g/dw$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 522
    :try_start_0
    new-instance v0, Lc/t/m/g/dw;

    iget-object v1, p0, Lc/t/m/g/dw$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/t/m/g/dw;-><init>(Ljava/lang/String;B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    sget-object v0, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    return-object v0

    .line 528
    :cond_0
    iget-object v0, p0, Lc/t/m/g/dw$a;->b:Lc/t/m/g/dw;

    invoke-static {v0}, Lc/t/m/g/dw;->c(Lc/t/m/g/dw;)Lc/t/m/g/dw;

    move-result-object v0

    .line 530
    :goto_0
    iget v1, p0, Lc/t/m/g/dw$a;->c:I

    invoke-static {v0, v1}, Lc/t/m/g/dw;->b(Lc/t/m/g/dw;I)Lc/t/m/g/dw;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/dw$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/t/m/g/dw;->b(Lc/t/m/g/dw;Ljava/lang/String;)Lc/t/m/g/dw;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/dw$a;->e:Landroid/location/Location;

    .line 531
    invoke-static {v1, v2}, Lc/t/m/g/dw;->a(Lc/t/m/g/dw;Landroid/location/Location;)Lc/t/m/g/dw;

    .line 532
    iget-object v1, p0, Lc/t/m/g/dw$a;->e:Landroid/location/Location;

    invoke-static {v0, v1}, Lc/t/m/g/dl;->a(Lcom/tencent/map/geolocation/TencentLocation;Landroid/location/Location;)V

    return-object v0
.end method
