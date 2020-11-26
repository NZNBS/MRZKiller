.class public abstract Lcom/lody/virtual/server/IVirtualLocationManager$Stub;
.super Landroid/os/Binder;
.source "IVirtualLocationManager.java"

# interfaces
.implements Lcom/lody/virtual/server/IVirtualLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/IVirtualLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/IVirtualLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.IVirtualLocationManager"

.field static final TRANSACTION_getAllCell:I = 0xa

.field static final TRANSACTION_getCell:I = 0x9

.field static final TRANSACTION_getGlobalLocation:I = 0xf

.field static final TRANSACTION_getLocation:I = 0xd

.field static final TRANSACTION_getMode:I = 0x1

.field static final TRANSACTION_getNeighboringCell:I = 0xb

.field static final TRANSACTION_setAllCell:I = 0x4

.field static final TRANSACTION_setCell:I = 0x3

.field static final TRANSACTION_setGlobalAllCell:I = 0x7

.field static final TRANSACTION_setGlobalCell:I = 0x6

.field static final TRANSACTION_setGlobalLocation:I = 0xe

.field static final TRANSACTION_setGlobalNeighboringCell:I = 0x8

.field static final TRANSACTION_setLocation:I = 0xc

.field static final TRANSACTION_setMode:I = 0x2

.field static final TRANSACTION_setNeighboringCell:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.IVirtualLocationManager"

    .line 73
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IVirtualLocationManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.IVirtualLocationManager"

    .line 84
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    instance-of v1, v0, Lcom/lody/virtual/server/IVirtualLocationManager;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lcom/lody/virtual/server/IVirtualLocationManager;

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/IVirtualLocationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/IVirtualLocationManager;
    .locals 1

    .line 707
    sget-object v0, Lcom/lody/virtual/server/IVirtualLocationManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IVirtualLocationManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/IVirtualLocationManager;)Z
    .locals 1

    .line 700
    sget-object v0, Lcom/lody/virtual/server/IVirtualLocationManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IVirtualLocationManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 701
    sput-object p0, Lcom/lody/virtual/server/IVirtualLocationManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IVirtualLocationManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.lody.virtual.server.IVirtualLocationManager"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 299
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->getGlobalLocation()Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object p1

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    invoke-virtual {p1, p3, v1}, Lcom/lody/virtual/remote/vloc/VLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 285
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    sget-object p1, Lcom/lody/virtual/remote/vloc/VLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/lody/virtual/remote/vloc/VLocation;

    .line 293
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setGlobalLocation(Lcom/lody/virtual/remote/vloc/VLocation;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 267
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->getLocation(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {p1, p3, v1}, Lcom/lody/virtual/remote/vloc/VLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 279
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 249
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    sget-object v0, Lcom/lody/virtual/remote/vloc/VLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/lody/virtual/remote/vloc/VLocation;

    .line 261
    :cond_3
    invoke-virtual {p0, p1, p4, v3}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setLocation(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VLocation;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 237
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->getNeighboringCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 225
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->getAllCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 207
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->getCell(ILjava/lang/String;)Lcom/lody/virtual/remote/vloc/VCell;

    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 215
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {p1, p3, v1}, Lcom/lody/virtual/remote/vloc/VCell;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 219
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 198
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    sget-object p1, Lcom/lody/virtual/remote/vloc/VCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setGlobalNeighboringCell(Ljava/util/List;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    sget-object p1, Lcom/lody/virtual/remote/vloc/VCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setGlobalAllCell(Ljava/util/List;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 178
    sget-object p1, Lcom/lody/virtual/remote/vloc/VCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/lody/virtual/remote/vloc/VCell;

    .line 183
    :cond_5
    invoke-virtual {p0, v3}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setGlobalCell(Lcom/lody/virtual/remote/vloc/VCell;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 162
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 168
    sget-object v0, Lcom/lody/virtual/remote/vloc/VCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p4, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setNeighboringCell(ILjava/lang/String;Ljava/util/List;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 149
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 155
    sget-object v0, Lcom/lody/virtual/remote/vloc/VCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 156
    invoke-virtual {p0, p1, p4, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setAllCell(ILjava/lang/String;Ljava/util/List;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    sget-object v0, Lcom/lody/virtual/remote/vloc/VCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/lody/virtual/remote/vloc/VCell;

    .line 143
    :cond_6
    invoke-virtual {p0, p1, p4, v3}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setCell(ILjava/lang/String;Lcom/lody/virtual/remote/vloc/VCell;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 118
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 125
    invoke-virtual {p0, p1, p4, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->setMode(ILjava/lang/String;I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 106
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IVirtualLocationManager$Stub;->getMode(ILjava/lang/String;)I

    move-result p1

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 101
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
