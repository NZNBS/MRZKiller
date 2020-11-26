.class Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;
.super Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;
.source "NotificationCompatCompatV21.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationCompatCompatV21"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;-><init>()V

    return-void
.end method

.method private fixApplicationInfo(Landroid/widget/RemoteViews;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    sget-object v0, Lmirror/android/widget/RemoteViews;->mApplication:Lmirror/RefObject;

    invoke-virtual {v0, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private fixCustomNotificationOnColorOs(Landroid/app/Notification;)V
    .locals 2

    const-string v0, "ro.build.version.opporom"

    const-string v1, ""

    .line 123
    invoke-static {v0, v1}, Lcom/lody/virtual/helper/compat/SystemPropertiesCompat;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 136
    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 138
    :cond_2
    iget-object v0, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 139
    iput-object v1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 141
    :cond_3
    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 142
    iput-object v1, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 144
    :cond_4
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_5

    .line 145
    iput-object v1, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_5
    return-void
.end method

.method private getApplicationInfo(Landroid/app/Notification;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 80
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getApplicationInfo(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getApplicationInfo(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 88
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 89
    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getApplicationInfo(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 94
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 95
    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getApplicationInfo(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getApplicationInfo(Landroid/widget/RemoteViews;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    if-eqz p1, :cond_0

    .line 105
    sget-object v0, Lmirror/android/widget/RemoteViews;->mApplication:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private resolveRemoteViews(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getHostContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 45
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 47
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    invoke-static {p2}, Lcom/lody/virtual/os/VEnvironment;->getPackageResourcePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixNotificationRemoteViews(Landroid/content/Context;Landroid/app/Notification;)V

    .line 53
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x1

    if-lt v4, v5, :cond_5

    .line 54
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v5, p1, v7}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;Z)V

    .line 55
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {v4, v5, p1, v0}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;Z)V

    goto :goto_1

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v4, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, v4, v0, p3}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIconImage(Landroid/content/res/Resources;Landroid/widget/RemoteViews;ZLandroid/app/Notification;)V

    .line 59
    :goto_1
    iget p1, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p1, p3, Landroid/app/Notification;->icon:I

    .line 61
    new-instance p1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p1, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 63
    iput-object p2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 65
    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 67
    iget-object p2, p3, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->fixApplicationInfo(Landroid/widget/RemoteViews;Landroid/content/pm/ApplicationInfo;)V

    .line 68
    iget-object p2, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->fixApplicationInfo(Landroid/widget/RemoteViews;Landroid/content/pm/ApplicationInfo;)V

    .line 69
    iget-object p2, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->fixApplicationInfo(Landroid/widget/RemoteViews;Landroid/content/pm/ApplicationInfo;)V

    .line 70
    iget-object p2, p3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p2, p1}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->fixApplicationInfo(Landroid/widget/RemoteViews;Landroid/content/pm/ApplicationInfo;)V

    .line 71
    invoke-direct {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->fixCustomNotificationOnColorOs(Landroid/app/Notification;)V

    .line 72
    invoke-static {p3}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p2

    const-string p3, "extras"

    invoke-virtual {p2, p3}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_6

    const-string p3, "android.appInfo"

    .line 74
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    return v6
.end method


# virtual methods
.method public dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z
    .locals 1

    .line 32
    invoke-virtual {p0, p3}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->getAppContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1, p3, p2}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->resolveRemoteViews(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 34
    invoke-direct {p0, p1, p3, p2}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;->resolveRemoteViews(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
