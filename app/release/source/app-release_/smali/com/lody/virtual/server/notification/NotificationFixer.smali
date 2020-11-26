.class Lcom/lody/virtual/server/notification/NotificationFixer;
.super Ljava/lang/Object;
.source "NotificationFixer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/lody/virtual/server/notification/NotificationCompat;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/lody/virtual/server/notification/NotificationFixer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/lody/virtual/server/notification/NotificationCompat;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/lody/virtual/server/notification/NotificationFixer;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    return-void
.end method

.method private static drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 68
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 71
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static fixNotificationIcon(Landroid/content/Context;Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 2

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 40
    iget p0, p1, Landroid/app/Notification;->icon:I

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 42
    iget-object p0, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/server/notification/NotificationFixer;->drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 49
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/lody/virtual/server/notification/NotificationFixer;->drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 56
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    .line 57
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method fixIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    sget-object v0, Lmirror/android/graphics/drawable/Icon;->mType:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 88
    sget-object p3, Lmirror/android/graphics/drawable/Icon;->mObj1:Lmirror/RefObject;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    sget-object p3, Lmirror/android/graphics/drawable/Icon;->mString1:Lmirror/RefObject;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 92
    invoke-static {p2}, Lcom/lody/virtual/server/notification/NotificationFixer;->drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 93
    sget-object p3, Lmirror/android/graphics/drawable/Icon;->mObj1:Lmirror/RefObject;

    invoke-virtual {p3, p1, p2}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    sget-object p2, Lmirror/android/graphics/drawable/Icon;->mString1:Lmirror/RefObject;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    sget-object p2, Lmirror/android/graphics/drawable/Icon;->mType:Lmirror/RefObject;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method fixIconImage(Landroid/content/res/Resources;Landroid/widget/RemoteViews;ZLandroid/app/Notification;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 205
    iget v0, p4, Landroid/app/Notification;->icon:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/notification/NotificationFixer;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    invoke-virtual {v0, p2}, Lcom/lody/virtual/server/notification/NotificationCompat;->isSystemLayout(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 211
    :cond_1
    :try_start_0
    sget-object v0, Lmirror/com/android/internal/R_Hide$id;->icon:Lmirror/RefStaticInt;

    invoke-virtual {v0}, Lmirror/RefStaticInt;->get()I

    move-result v0

    if-nez p3, :cond_2

    .line 213
    iget-object p3, p4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez p3, :cond_2

    .line 214
    iget p3, p4, Landroid/app/Notification;->icon:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 215
    iget p3, p4, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 216
    invoke-static {p1}, Lcom/lody/virtual/server/notification/NotificationFixer;->drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 219
    invoke-static {}, Lcom/lody/virtual/helper/utils/OSUtils;->getInstance()Lcom/lody/virtual/helper/utils/OSUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lody/virtual/helper/utils/OSUtils;->isEmui()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 220
    iget-object p2, p4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    .line 221
    iput-object p1, p4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method fixNotificationRemoteViews(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 3

    .line 104
    :try_start_0
    const-class v0, Landroid/app/Notification$Builder;

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Class;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/Reflect;->create([Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 110
    iget-object v0, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v0, p2, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 113
    :cond_0
    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 116
    :cond_1
    iget-object v0, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 119
    :cond_2
    iget-object v0, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 120
    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object p1, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_3
    return-void
.end method

.method fixRemoteViewActions(Landroid/content/Context;ZLandroid/widget/RemoteViews;)Z
    .locals 18

    move-object/from16 v0, p3

    if-eqz v0, :cond_10

    .line 128
    sget-object v2, Lmirror/com/android/internal/R_Hide$id;->icon:Lmirror/RefStaticInt;

    invoke-virtual {v2}, Lmirror/RefStaticInt;->get()I

    move-result v2

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static/range {p3 .. p3}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v4

    const-string v5, "mActions"

    invoke-virtual {v4, v5}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    .line 132
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_0
    if-ltz v5, :cond_d

    .line 134
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "TextViewDrawableAction"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 142
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_1
    invoke-static {v8}, Lcom/lody/virtual/server/notification/ReflectionActionCompat;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 146
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ReflectionAction"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v1, p0

    move/from16 v6, p2

    move/from16 v17, v2

    const/4 v15, 0x0

    move-object/from16 v2, p1

    goto/16 :goto_6

    .line 147
    :cond_3
    :goto_2
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v9

    const-string v10, "viewId"

    invoke-virtual {v9, v10}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 149
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v10

    const-string v11, "methodName"

    invoke-virtual {v10, v11}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 150
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v11

    const-string v12, "type"

    invoke-virtual {v11, v12}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 151
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v13

    const-string v14, "value"

    invoke-virtual {v13, v14}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x4

    if-nez v7, :cond_6

    if-ne v9, v2, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    if-ne v11, v15, :cond_5

    .line 155
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-nez v16, :cond_5

    const/4 v7, 0x0

    :cond_5
    if-eqz v7, :cond_6

    .line 159
    sget-object v6, Lcom/lody/virtual/server/notification/NotificationFixer;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find icon "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v2

    const/4 v15, 0x0

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    move/from16 v17, v2

    const/4 v15, 0x0

    :goto_4
    const-string v1, "setImageResource"

    .line 163
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 165
    new-instance v1, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/lody/virtual/server/notification/NotificationFixer;->drawableToBitMap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v6, "setImageBitmap"

    invoke-direct {v1, v9, v6, v2}, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 165
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    goto/16 :goto_6

    :cond_8
    const-string v1, "setText"

    .line 168
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    if-ne v11, v1, :cond_9

    .line 170
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    .line 171
    invoke-static {v8}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/lody/virtual/helper/utils/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    goto :goto_5

    :cond_9
    const-string v1, "setLabelFor"

    .line 172
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 174
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const-string v1, "setBackgroundResource"

    .line 175
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    const-string v1, "setImageURI"

    .line 178
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 179
    check-cast v13, Landroid/net/Uri;

    .line 180
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 181
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 184
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_7

    .line 185
    instance-of v1, v13, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_7

    .line 186
    check-cast v13, Landroid/graphics/drawable/Icon;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 187
    invoke-virtual {v1, v13, v2, v6}, Lcom/lody/virtual/server/notification/NotificationFixer;->fixIcon(Landroid/graphics/drawable/Icon;Landroid/content/Context;Z)V

    :goto_6
    add-int/lit8 v5, v5, -0x1

    move/from16 v2, v17

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v1, p0

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;

    .line 194
    iget v4, v3, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;->viewId:I

    iget-object v5, v3, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;->methodName:Ljava/lang/String;

    iget-object v3, v3, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v5, v3}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_e
    move v15, v7

    goto :goto_8

    :cond_f
    move-object/from16 v1, p0

    const/4 v15, 0x0

    .line 197
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_11

    .line 198
    sget-object v2, Lmirror/android/widget/RemoteViews;->mPackage:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    move-object/from16 v1, p0

    const/4 v15, 0x0

    :cond_11
    :goto_9
    return v15
.end method
