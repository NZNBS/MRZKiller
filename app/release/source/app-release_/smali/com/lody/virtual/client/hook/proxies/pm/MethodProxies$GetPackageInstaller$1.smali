.class Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;
.super Ljava/lang/Object;
.source "MethodProxies.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;

.field final synthetic val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;Lcom/lody/virtual/server/IPackageInstaller;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->this$0:Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller;

    iput-object p2, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 270
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "openSession"

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "unregisterCallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getMySessions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "updateSessionAppLabel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "setPermissionsResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "getAllSessions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "createSession"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "abandonSession"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "registerCallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "updateSessionAppIcon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "getSessionInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 331
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not support PackageInstaller method : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :pswitch_0
    iget-object p1, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object p1

    return-object p1

    .line 320
    :pswitch_1
    aget-object p1, p3, v2

    check-cast p1, Landroid/content/pm/IPackageInstallerCallback;

    .line 321
    iget-object p2, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-interface {p2, p1}, Lcom/lody/virtual/server/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V

    return-object v3

    .line 308
    :pswitch_2
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 309
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 310
    iget-object p3, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    .line 311
    invoke-interface {p3, p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/remote/VParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 310
    invoke-static {p1}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 283
    :pswitch_3
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 284
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/String;

    .line 285
    iget-object p3, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-interface {p3, p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V

    return-object v3

    .line 325
    :pswitch_4
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 326
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 327
    iget-object p3, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-interface {p3, p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->setPermissionsResult(IZ)V

    return-object v3

    .line 303
    :pswitch_5
    iget-object p1, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    .line 304
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->getAllSessions(I)Lcom/lody/virtual/remote/VParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/remote/VParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 303
    invoke-static {p1}, Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;->create(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 272
    :pswitch_6
    aget-object p1, p3, v2

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p1}, Lcom/lody/virtual/server/pm/installer/SessionParams;->create(Landroid/content/pm/PackageInstaller$SessionParams;)Lcom/lody/virtual/server/pm/installer/SessionParams;

    move-result-object p1

    .line 273
    aget-object p2, p3, v1

    check-cast p2, Ljava/lang/String;

    .line 274
    iget-object p3, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    invoke-interface {p3, p1, p2, v0}, Lcom/lody/virtual/server/IPackageInstaller;->createSession(Lcom/lody/virtual/server/pm/installer/SessionParams;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 289
    :pswitch_7
    iget-object p1, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->abandonSession(I)V

    return-object v3

    .line 315
    :pswitch_8
    aget-object p1, p3, v2

    check-cast p1, Landroid/content/pm/IPackageInstallerCallback;

    .line 316
    iget-object p2, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/lody/virtual/server/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V

    return-object v3

    .line 277
    :pswitch_9
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 278
    aget-object p2, p3, v1

    check-cast p2, Landroid/graphics/Bitmap;

    .line 279
    iget-object p3, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    invoke-interface {p3, p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V

    return-object v3

    .line 296
    :pswitch_a
    iget-object p1, p0, Lcom/lody/virtual/client/hook/proxies/pm/MethodProxies$GetPackageInstaller$1;->val$vInstaller:Lcom/lody/virtual/server/IPackageInstaller;

    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/lody/virtual/server/IPackageInstaller;->getSessionInfo(I)Lcom/lody/virtual/server/pm/installer/SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 298
    invoke-virtual {p1}, Lcom/lody/virtual/server/pm/installer/SessionInfo;->alloc()Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x278598d2 -> :sswitch_a
        -0x26ea3c13 -> :sswitch_9
        -0x18089ff8 -> :sswitch_8
        -0x592f19f -> :sswitch_7
        -0x3c85a06 -> :sswitch_6
        0x37f2c428 -> :sswitch_5
        0x45bfc97f -> :sswitch_4
        0x49cbe600 -> :sswitch_3
        0x5d788e5f -> :sswitch_2
        0x67a11ca1 -> :sswitch_1
        0x6a952cec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
