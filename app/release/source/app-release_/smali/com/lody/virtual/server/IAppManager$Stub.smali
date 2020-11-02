.class public abstract Lcom/lody/virtual/server/IAppManager$Stub;
.super Landroid/os/Binder;
.source "IAppManager.java"

# interfaces
.implements Lcom/lody/virtual/server/IAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/IAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/IAppManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lody.virtual.server.IAppManager"

.field static final TRANSACTION_addVisibleOutsidePackage:I = 0x3

.field static final TRANSACTION_clearAppRequestListener:I = 0x17

.field static final TRANSACTION_clearPackage:I = 0xe

.field static final TRANSACTION_clearPackageAsUser:I = 0xd

.field static final TRANSACTION_getAppRequestListener:I = 0x18

.field static final TRANSACTION_getInstalledAppCount:I = 0x11

.field static final TRANSACTION_getInstalledAppInfo:I = 0x6

.field static final TRANSACTION_getInstalledApps:I = 0xf

.field static final TRANSACTION_getInstalledAppsAsUser:I = 0x10

.field static final TRANSACTION_getPackageInstalledUsers:I = 0x1

.field static final TRANSACTION_installPackage:I = 0x7

.field static final TRANSACTION_installPackageAsUser:I = 0xa

.field static final TRANSACTION_isAppInstalled:I = 0x12

.field static final TRANSACTION_isAppInstalledAsUser:I = 0x13

.field static final TRANSACTION_isOutsidePackageVisible:I = 0x5

.field static final TRANSACTION_isPackageLaunched:I = 0x8

.field static final TRANSACTION_registerObserver:I = 0x14

.field static final TRANSACTION_removeVisibleOutsidePackage:I = 0x4

.field static final TRANSACTION_scanApps:I = 0x2

.field static final TRANSACTION_setAppRequestListener:I = 0x16

.field static final TRANSACTION_setPackageHidden:I = 0x9

.field static final TRANSACTION_uninstallPackage:I = 0xc

.field static final TRANSACTION_uninstallPackageAsUser:I = 0xb

.field static final TRANSACTION_unregisterObserver:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lody.virtual.server.IAppManager"

    .line 110
    invoke-virtual {p0, p0, v0}, Lcom/lody/virtual/server/IAppManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/IAppManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.lody.virtual.server.IAppManager"

    .line 121
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    instance-of v1, v0, Lcom/lody/virtual/server/IAppManager;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Lcom/lody/virtual/server/IAppManager;

    return-object v0

    .line 125
    :cond_1
    new-instance v0, Lcom/lody/virtual/server/IAppManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/IAppManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/lody/virtual/server/IAppManager;
    .locals 1

    .line 956
    sget-object v0, Lcom/lody/virtual/server/IAppManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IAppManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/lody/virtual/server/IAppManager;)Z
    .locals 1

    .line 949
    sget-object v0, Lcom/lody/virtual/server/IAppManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IAppManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 950
    sput-object p0, Lcom/lody/virtual/server/IAppManager$Stub$Proxy;->sDefaultImpl:Lcom/lody/virtual/server/IAppManager;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.lody.virtual.server.IAppManager"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 391
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/lody/virtual/server/IAppManager$Stub;->getAppRequestListener()Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    move-result-object p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 394
    invoke-interface {p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 384
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/lody/virtual/server/IAppManager$Stub;->clearAppRequestListener()V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 375
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    move-result-object p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->setAppRequestListener(Lcom/lody/virtual/server/interfaces/IAppRequestListener;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 366
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IPackageObserver;

    move-result-object p1

    .line 369
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->unregisterObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 357
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/lody/virtual/server/interfaces/IPackageObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lody/virtual/server/interfaces/IPackageObserver;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->registerObserver(Lcom/lody/virtual/server/interfaces/IPackageObserver;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 345
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->isAppInstalledAsUser(ILjava/lang/String;)Z

    move-result p1

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 335
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->isAppInstalled(Ljava/lang/String;)Z

    move-result p1

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 327
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/lody/virtual/server/IAppManager$Stub;->getInstalledAppCount()I

    move-result p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 315
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->getInstalledAppsAsUser(II)Ljava/util/List;

    move-result-object p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 305
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 308
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->getInstalledApps(I)Ljava/util/List;

    move-result-object p1

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 295
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->clearPackage(Ljava/lang/String;)Z

    move-result p1

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 283
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->clearPackageAsUser(ILjava/lang/String;)Z

    move-result p1

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 273
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->uninstallPackage(Ljava/lang/String;)Z

    move-result p1

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 261
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->uninstallPackageAsUser(Ljava/lang/String;I)Z

    move-result p1

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 249
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->installPackageAsUser(ILjava/lang/String;)Z

    move-result p1

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 236
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 243
    :cond_1
    invoke-virtual {p0, p1, p4, v0}, Lcom/lody/virtual/server/IAppManager$Stub;->setPackageHidden(ILjava/lang/String;Z)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 224
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->isPackageLaunched(ILjava/lang/String;)Z

    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 206
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->installPackage(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstallResult;

    move-result-object p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-virtual {p1, p3, v1}, Lcom/lody/virtual/remote/InstallResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 188
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/IAppManager$Stub;->getInstalledAppInfo(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstalledAppInfo;

    move-result-object p1

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, p3, v1}, Lcom/lody/virtual/remote/InstalledAppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 178
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->isOutsidePackageVisible(Ljava/lang/String;)Z

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 169
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->removeVisibleOutsidePackage(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 160
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->addVisibleOutsidePackage(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 153
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/lody/virtual/server/IAppManager$Stub;->scanApps()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 143
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/IAppManager$Stub;->getPackageInstalledUsers(Ljava/lang/String;)[I

    move-result-object p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    .line 138
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
