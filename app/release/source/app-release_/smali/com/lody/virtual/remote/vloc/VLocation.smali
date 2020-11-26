.class public Lcom/lody/virtual/remote/vloc/VLocation;
.super Ljava/lang/Object;
.source "VLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/remote/vloc/VLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accuracy:F

.field public altitude:D

.field public bearing:F

.field public latitude:D

.field public longitude:D

.field public speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/lody/virtual/remote/vloc/VLocation$1;

    invoke-direct {v0}, Lcom/lody/virtual/remote/vloc/VLocation$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/remote/vloc/VLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    .line 20
    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    .line 21
    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->altitude:D

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->accuracy:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    .line 20
    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    .line 21
    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->altitude:D

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->accuracy:F

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->altitude:D

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->accuracy:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->speed:F

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->bearing:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 54
    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VLocation{latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/remote/vloc/VLocation;->bearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSysLocation()Landroid/location/Location;
    .locals 6

    .line 82
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 83
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    iget v2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->bearing:F

    invoke-virtual {v0, v2}, Landroid/location/Location;->setBearing(F)V

    .line 86
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "setIsFromMockProvider"

    invoke-virtual {v2, v4, v3}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 87
    iget-wide v2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 88
    iget-wide v2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 89
    iget v2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->speed:F

    invoke-virtual {v0, v2}, Landroid/location/Location;->setSpeed(F)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const-wide/32 v2, 0x1082af40

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->get()Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSvCount()I

    move-result v2

    const-string v3, "satellites"

    .line 96
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "satellitesvalue"

    .line 97
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 35
    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 36
    iget p2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->accuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 37
    iget p2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->speed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 38
    iget p2, p0, Lcom/lody/virtual/remote/vloc/VLocation;->bearing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
