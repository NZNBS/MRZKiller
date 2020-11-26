.class public abstract Lcom/lody/virtual/server/notification/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field static final SYSTEM_UI_PKG:Ljava/lang/String; = "com.android.systemui"

.field static final TAG:Ljava/lang/String; = "NotificationCompat"


# instance fields
.field private mNotificationFixer:Lcom/lody/virtual/server/notification/NotificationFixer;

.field private final sSystemLayoutResIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/server/notification/NotificationCompat;->sSystemLayoutResIds:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcom/lody/virtual/server/notification/NotificationCompat;->loadSystemLayoutRes()V

    .line 41
    new-instance v0, Lcom/lody/virtual/server/notification/NotificationFixer;

    invoke-direct {v0, p0}, Lcom/lody/virtual/server/notification/NotificationFixer;-><init>(Lcom/lody/virtual/server/notification/NotificationCompat;)V

    iput-object v0, p0, Lcom/lody/virtual/server/notification/NotificationCompat;->mNotificationFixer:Lcom/lody/virtual/server/notification/NotificationFixer;

    return-void
.end method

.method public static create()Lcom/lody/virtual/server/notification/NotificationCompat;
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;

    invoke-direct {v0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV21;-><init>()V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;

    invoke-direct {v0}, Lcom/lody/virtual/server/notification/NotificationCompatCompatV14;-><init>()V

    return-object v0
.end method

.method private loadSystemLayoutRes()V
    .locals 5

    .line 53
    sget-object v0, Lmirror/com/android/internal/R_Hide$layout;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 55
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 59
    iget-object v4, p0, Lcom/lody/virtual/server/notification/NotificationCompat;->sSystemLayoutResIds:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract dealNotification(ILandroid/app/Notification;Ljava/lang/String;)Z
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    .line 77
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getNotificationFixer()Lcom/lody/virtual/server/notification/NotificationFixer;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/lody/virtual/server/notification/NotificationCompat;->mNotificationFixer:Lcom/lody/virtual/server/notification/NotificationFixer;

    return-object v0
.end method

.method getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 82
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method isSystemLayout(Landroid/widget/RemoteViews;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lody/virtual/server/notification/NotificationCompat;->sSystemLayoutResIds:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
