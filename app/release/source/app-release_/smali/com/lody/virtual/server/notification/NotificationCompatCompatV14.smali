.class Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;
.super Lcom/lody/virtual/server/notification/NotificationCompat;
.source "NotificationCompatCompatV14.java"


# instance fields
.field private final mRemoteViewsFixer:Lcom/lody/virtual/server/notification/RemoteViewsFixer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompat;-><init>()V

    .line 19
    new-instance v0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;-><init>(Lcom/lody/virtual/server/notification/NotificationCompat;)V

    iput-object v0, p0, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->mRemoteViewsFixer:Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    return-void
.end method

.method private getRemoteViewsFixer()Lcom/lody/virtual/server/notification/RemoteViewsFixer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->mRemoteViewsFixer:Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    return-object v0
.end method


# virtual methods
.method public dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z
    .locals 10

    .line 28
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    .line 32
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsideInstalled(Ljava/lang/String;)Z

    move-result p3

    const/16 v8, 0x10

    const/4 v9, 0x1

    if-eqz p3, :cond_3

    .line 33
    iget p1, p2, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p3, v0, v7, p2}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIconImage(Landroid/content/res/Resources;Landroid/widget/RemoteViews;ZLandroid/app/Notification;)V

    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v8, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p3, v0, v7, p2}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIconImage(Landroid/content/res/Resources;Landroid/widget/RemoteViews;ZLandroid/app/Notification;)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p1, p2, Landroid/app/Notification;->icon:I

    :cond_2
    return v9

    .line 42
    :cond_3
    iget-object p3, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_5

    .line 44
    iget-object p3, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->isSystemLayout(Landroid/widget/RemoteViews;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p3

    iget-object v0, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v6, v7, v0}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixRemoteViewActions(Landroid/content/Context;ZLandroid/widget/RemoteViews;)Z

    goto :goto_0

    .line 47
    :cond_4
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getRemoteViewsFixer()Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    move-result-object v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":tickerView"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->makeRemoteViews(Ljava/lang/String;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/widget/RemoteViews;

    move-result-object p3

    iput-object p3, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 51
    :cond_5
    :goto_0
    iget-object p3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_7

    .line 52
    iget-object p3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->isSystemLayout(Landroid/widget/RemoteViews;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 53
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p3

    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v6, v7, v0}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixRemoteViewActions(Landroid/content/Context;ZLandroid/widget/RemoteViews;)Z

    move-result p3

    .line 54
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2, p3, p2}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIconImage(Landroid/content/res/Resources;Landroid/widget/RemoteViews;ZLandroid/app/Notification;)V

    goto :goto_1

    .line 56
    :cond_6
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getRemoteViewsFixer()Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    move-result-object v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":contentView"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->makeRemoteViews(Ljava/lang/String;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/widget/RemoteViews;

    move-result-object p3

    iput-object p3, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 60
    :cond_7
    :goto_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v8, :cond_9

    .line 61
    iget-object p3, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_9

    .line 62
    iget-object p3, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->isSystemLayout(Landroid/widget/RemoteViews;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 63
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p3

    iget-object v0, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v6, v7, v0}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixRemoteViewActions(Landroid/content/Context;ZLandroid/widget/RemoteViews;)Z

    goto :goto_2

    .line 65
    :cond_8
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getRemoteViewsFixer()Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    move-result-object v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":bigContentView"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->makeRemoteViews(Ljava/lang/String;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/widget/RemoteViews;

    move-result-object p3

    iput-object p3, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 70
    :cond_9
    :goto_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_b

    .line 71
    iget-object p3, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz p3, :cond_b

    .line 72
    iget-object p3, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->isSystemLayout(Landroid/widget/RemoteViews;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 73
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p1

    iget-object p3, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v6, v7, p3}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixRemoteViewActions(Landroid/content/Context;ZLandroid/widget/RemoteViews;)Z

    move-result p1

    .line 74
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object p3

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIconImage(Landroid/content/res/Resources;Landroid/widget/RemoteViews;ZLandroid/app/Notification;)V

    goto :goto_3

    .line 76
    :cond_a
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getRemoteViewsFixer()Lcom/lody/virtual/server/notification/RemoteViewsFixer;

    move-result-object v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":headsUpContentView"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->makeRemoteViews(Ljava/lang/String;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/widget/RemoteViews;

    move-result-object p1

    iput-object p1, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 81
    :cond_b
    :goto_3
    iget p1, p2, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_c

    .line 82
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p1, p2, Landroid/app/Notification;->icon:I

    :cond_c
    return v9
.end method

.method getAppContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 2

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;->getHostContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
