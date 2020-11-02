.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BroadcastIntent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1558
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    return-void
.end method

.method private handleInstallShortcutIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 1636
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1638
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1640
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1641
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1642
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    .line 1643
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "_VA_|_intent_"

    .line 1644
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 1645
    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "_VA_|_uri_"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    const-string v4, "_VA_|_user_id_"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1647
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 1650
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_0

    .line 1651
    iget-object v3, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->getHostPkg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1653
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lody/virtual/client/core/VirtualCore;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1654
    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const-string v4, "drawable"

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1657
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1658
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1660
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.shortcut.ICON"

    .line 1661
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1665
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method private handleIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 1589
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    .line 1590
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 1591
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 1595
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1597
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->handleUninstallShortcutIntent(Landroid/content/Intent;)V

    return-object p1

    .line 1599
    :cond_1
    invoke-static {p1}, Lcom/lody/virtual/client/badger/BadgerManager;->handleBadger(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 1601
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1603
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->handleMediaScannerIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 1605
    :cond_3
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lody/virtual/helper/utils/ComponentUtils;->redirectBroadcastIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 1593
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/lody/virtual/client/stub/VASettings;->ENABLE_INNER_SHORTCUT:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->handleInstallShortcutIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method private handleMediaScannerIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1614
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 1618
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    .line 1619
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    .line 1622
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    .line 1626
    :cond_3
    invoke-static {v0}, Lcom/lody/virtual/client/NativeEngine;->getRedirectedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1627
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    .line 1631
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p1
.end method

.method private handleUninstallShortcutIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 1674
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 1676
    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1678
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    .line 1679
    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_VA_|_uri_"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1681
    invoke-virtual {v2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1567
    aget-object v1, p3, v0

    check-cast v1, Landroid/content/Intent;

    const/4 v2, 0x2

    .line 1568
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    .line 1569
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1571
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getComponentDelegate()Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->onSendBroadcast(Landroid/content/Intent;)V

    .line 1573
    :cond_0
    invoke-direct {p0, v1}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->handleIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1575
    aput-object v1, p3, v0

    const/4 v0, 0x7

    .line 1580
    aget-object v1, p3, v0

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    aget-object v1, p3, v0

    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 1582
    aput-object v1, p3, v0

    .line 1584
    :cond_2
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    .line 1577
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "broadcastIntent"

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1689
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$BroadcastIntent;->isAppProcess()Z

    move-result v0

    return v0
.end method
