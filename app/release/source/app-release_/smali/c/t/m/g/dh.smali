.class public final Lc/t/m/g/dh;
.super Lc/t/m/g/dj;
.source "TL"


# instance fields
.field public final a:Landroid/location/Location;

.field public final b:J

.field public final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/location/Location;JIII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lc/t/m/g/dj;-><init>()V

    .line 6
    iput-object p1, p0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    .line 30
    iput-wide p2, p0, Lc/t/m/g/dh;->b:J

    .line 31
    iput p4, p0, Lc/t/m/g/dh;->d:I

    .line 32
    iput p5, p0, Lc/t/m/g/dh;->c:I

    .line 33
    iput p6, p0, Lc/t/m/g/dh;->e:I

    return-void
.end method

.method public constructor <init>(Lc/t/m/g/dh;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lc/t/m/g/dj;-><init>()V

    .line 6
    iget-object v0, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    :goto_0
    iput-object v0, p0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    .line 20
    iget-wide v0, p1, Lc/t/m/g/dh;->b:J

    iput-wide v0, p0, Lc/t/m/g/dh;->b:J

    .line 21
    iget v0, p1, Lc/t/m/g/dh;->d:I

    iput v0, p0, Lc/t/m/g/dh;->d:I

    .line 22
    iget v0, p1, Lc/t/m/g/dh;->c:I

    iput v0, p0, Lc/t/m/g/dh;->c:I

    .line 23
    iget p1, p1, Lc/t/m/g/dh;->e:I

    iput p1, p0, Lc/t/m/g/dh;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxGpsInfo [location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gpsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/t/m/g/dh;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", visbleSatelliteNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dh;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", usedSatelliteNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dh;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpsStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dh;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
