.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartActivity"
.end annotation


# static fields
.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SCHEME_PACKAGE:Ljava/lang/String; = "package"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method private handleInstallRequest(Landroid/content/Intent;)Z
    .locals 2

    .line 496
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getAppRequestListener()Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 499
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lody/virtual/helper/utils/FileUtils;->getFileFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 501
    :try_start_0
    invoke-interface {v0, p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener;->onRequestInstall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 504
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private handleMediaCaptureRequest(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "output"

    .line 529
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v1}, Lcom/lody/virtual/client/NativeEngine;->getRedirectedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 538
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 540
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method private handleUninstallRequest(Landroid/content/Intent;)Z
    .locals 3

    .line 511
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getAppRequestListener()Lcom/lody/virtual/server/interfaces/IAppRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 517
    :try_start_0
    invoke-interface {v0, p1}, Lcom/lody/virtual/server/interfaces/IAppRequestListener;->onRequestUninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 520
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 396
    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfObject([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result v4

    const/4 v6, -0x1

    .line 398
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-gez v4, :cond_0

    return-object v6

    .line 400
    :cond_0
    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x2

    invoke-static {v3, v7, v8}, Lcom/lody/virtual/helper/utils/ArrayUtils;->indexOfObject([Ljava/lang/Object;Ljava/lang/Class;I)I

    move-result v7

    add-int/lit8 v9, v4, 0x1

    .line 401
    aget-object v9, v3, v9

    check-cast v9, Ljava/lang/String;

    .line 402
    aget-object v10, v3, v4

    move-object v12, v10

    check-cast v12, Landroid/content/Intent;

    .line 403
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v12, v10, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz v7, :cond_1

    .line 404
    aget-object v10, v3, v7

    check-cast v10, Landroid/os/IBinder;

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 405
    :goto_0
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v11

    .line 407
    invoke-static {v12}, Lcom/lody/virtual/helper/utils/ComponentUtils;->isStubComponent(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 408
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 411
    :cond_2
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "package"

    const/4 v15, 0x0

    if-nez v13, :cond_7

    .line 412
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 413
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v13, "application/vnd.android.package-archive"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 417
    :cond_3
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v13, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 418
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v13, "android.intent.action.DELETE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 419
    :cond_4
    invoke-virtual {v12}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 421
    invoke-direct {v0, v12}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->handleUninstallRequest(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 422
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 424
    :cond_5
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v13, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 425
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v13, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 426
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v13, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 427
    :cond_6
    invoke-direct {v0, v12}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->handleMediaCaptureRequest(Landroid/content/Intent;)V

    goto :goto_2

    .line 414
    :cond_7
    :goto_1
    invoke-direct {v0, v12}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->handleInstallRequest(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 415
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 432
    :cond_8
    :goto_2
    const-class v9, Landroid/os/Bundle;

    invoke-static {v3, v9}, Lcom/lody/virtual/helper/utils/ArrayUtils;->getFirst([Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    if-eqz v10, :cond_9

    add-int/lit8 v13, v7, 0x1

    .line 434
    aget-object v13, v3, v13

    check-cast v13, Ljava/lang/String;

    add-int/2addr v7, v8

    .line 435
    aget-object v7, v3, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 438
    :goto_3
    invoke-static {v12}, Lcom/lody/virtual/client/stub/ChooserActivity;->check(Landroid/content/Intent;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 439
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->getHostContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/lody/virtual/client/stub/ChooserActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    .line 440
    invoke-virtual {v12, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.virtual.data"

    .line 441
    invoke-virtual {v12, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.virtual.who"

    .line 442
    invoke-virtual {v12, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.virtual.request_code"

    .line 443
    invoke-virtual {v12, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 447
    :cond_a
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x12

    if-lt v8, v15, :cond_b

    sub-int/2addr v4, v5

    .line 448
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->getHostPkg()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    .line 450
    :cond_b
    invoke-virtual {v12}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v12}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 451
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v8, "android.settings."

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->getHostPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 456
    :cond_c
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v4

    invoke-virtual {v4, v12, v11}, Lcom/lody/virtual/client/core/VirtualCore;->resolveActivityInfo(Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-nez v4, :cond_e

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v4, v8

    const-string v5, "VActivityManager"

    const-string v7, "Unable to resolve activityInfo : %s"

    .line 458
    invoke-static {v5, v7, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$StartActivity;->isAppPkg(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    return-object v6

    .line 462
    :cond_d
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_e
    const/4 v8, 0x0

    .line 464
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v11

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v18

    move-object v1, v13

    move-object v13, v4

    move-object v14, v10

    const/4 v2, 0x0

    move-object v15, v9

    move-object/from16 v16, v1

    move/from16 v17, v7

    invoke-virtual/range {v11 .. v18}, Lcom/lody/virtual/client/ipc/VActivityManager;->startActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v10, :cond_f

    if-lez v7, :cond_f

    .line 466
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v6

    invoke-virtual {v6, v10, v1, v7}, Lcom/lody/virtual/client/ipc/VActivityManager;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;I)V

    :cond_f
    if-eqz v10, :cond_10

    .line 469
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/lody/virtual/client/ipc/VActivityManager;->getActivityRecord(Landroid/os/IBinder;)Lcom/lody/virtual/client/ipc/ActivityClientRecord;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 470
    iget-object v6, v1, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_10

    .line 472
    :try_start_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 473
    iget-object v7, v1, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 474
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const v4, 0x10100ae

    .line 475
    invoke-virtual {v7, v4, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 477
    iget v4, v6, Landroid/util/TypedValue;->data:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const v8, 0x10100b8

    aput v8, v6, v2

    const v8, 0x10100b9

    aput v8, v6, v5

    invoke-virtual {v7, v4, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 483
    iget-object v1, v1, Lcom/lody/virtual/client/ipc/ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 484
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :catchall_0
    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "startActivity"

    return-object v0
.end method
