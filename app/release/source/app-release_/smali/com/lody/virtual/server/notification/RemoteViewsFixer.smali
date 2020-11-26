.class Lcom/lody/virtual/server/notification/RemoteViewsFixer;
.super Ljava/lang/Object;
.source "RemoteViewsFixer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private init:Z

.field private final mImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

.field private final mWidthCompat:Lcom/lody/virtual/server/notification/WidthCompat;

.field private notification_max_height:I

.field private notification_mid_height:I

.field private notification_min_height:I

.field private notification_padding:I

.field private notification_panel_width:I

.field private notification_side_padding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/lody/virtual/server/notification/NotificationCompat;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/lody/virtual/server/notification/NotificationCompat;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mImages:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->init:Z

    .line 36
    new-instance v0, Lcom/lody/virtual/server/notification/WidthCompat;

    invoke-direct {v0}, Lcom/lody/virtual/server/notification/WidthCompat;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mWidthCompat:Lcom/lody/virtual/server/notification/WidthCompat;

    .line 37
    iput-object p1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    return-void
.end method

.method private apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/view/View;
    .locals 9

    const-string v0, "setTagInternal"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {p1, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    :try_start_1
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "com.android.internal.R$id"

    invoke-static {v7}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v7

    const-string v8, "widget_frame"

    invoke-virtual {v7, v8}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v0, v6}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 71
    :try_start_2
    sget-object v6, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-static {v6, v0, v7}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v2

    .line 74
    :goto_0
    sget-object v5, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "inflate"

    invoke-static {v5, v0, v6}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_0

    .line 77
    invoke-static {p2}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p2

    const-string v0, "mActions"

    invoke-virtual {p2, v0}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 79
    sget-object v0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apply actions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 82
    :try_start_3
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v5, "apply"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object v2, v6, v3

    aput-object v2, v6, v1

    invoke-virtual {v0, v5, v6}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 84
    sget-object v5, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "apply action"

    invoke-static {v5, v0, v6}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 89
    :cond_0
    sget-object p2, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "create views"

    invoke-static {p2, v1, v0}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method private createView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    invoke-virtual {v0}, Lcom/lody/virtual/server/notification/NotificationCompat;->getHostContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->init(Landroid/content/Context;)V

    .line 99
    sget-object v1, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createView:big="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",system="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 101
    iget v2, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_max_height:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_min_height:I

    .line 102
    :goto_0
    iget-object v4, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mWidthCompat:Lcom/lody/virtual/server/notification/WidthCompat;

    iget v5, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_panel_width:I

    iget v6, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_side_padding:I

    invoke-virtual {v4, v0, v5, v2, v6}, Lcom/lody/virtual/server/notification/WidthCompat;->getNotificationWidth(Landroid/content/Context;III)I

    move-result v0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createView:getNotificationWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "createView:apply"

    .line 106
    invoke-static {v1, v6, v5}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/view/View;

    move-result-object p1

    .line 110
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {p2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    .line 112
    iput v5, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 113
    invoke-virtual {v4, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    const-string v5, "createView:fixTextView"

    .line 115
    invoke-static {v1, v5, p2}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->fixTextView(Landroid/view/ViewGroup;)V

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    if-eqz p4, :cond_4

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_3

    const/high16 p2, -0x80000000

    :goto_1
    new-array p3, v3, [Ljava/lang/Object;

    const-string v5, "createView:layout"

    .line 129
    invoke-static {v1, v5, p3}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v4, v3, v3, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 132
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 133
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 132
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {v4, v3, v3, v0, p1}, Landroid/view/View;->layout(IIII)V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notification:systemId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",max=%d/%d, szie=%d/%d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const/4 p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x2

    .line 136
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    .line 135
    invoke-static {v1, p1, p2}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method private fixTextView(Landroid/view/ViewGroup;)V
    .locals 5

    .line 141
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 144
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 145
    check-cast v3, Landroid/widget/TextView;

    .line 146
    invoke-direct {p0, v3}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->isSingleLine(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v4, 0x1

    .line 148
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 150
    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 151
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->fixTextView(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    if-eqz p2, :cond_0

    .line 260
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, p3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    nop

    :cond_0
    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 224
    iget-boolean v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->init:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->init:Z

    .line 226
    iget v0, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_panel_width:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.systemui"

    const/4 v2, 0x2

    .line 229
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 232
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 233
    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_side_padding:I

    goto :goto_1

    .line 235
    :cond_1
    sget v1, Lcom/lody/virtual/R$dimen;->notification_side_padding:I

    const-string v2, "notification_side_padding"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_side_padding:I

    .line 238
    :goto_1
    sget v1, Lcom/lody/virtual/R$dimen;->notification_panel_width:I

    const-string v2, "notification_panel_width"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_panel_width:I

    if-gtz v1, :cond_2

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_panel_width:I

    .line 243
    :cond_2
    sget v1, Lcom/lody/virtual/R$dimen;->notification_min_height:I

    const-string v2, "notification_min_height"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_min_height:I

    .line 249
    sget v1, Lcom/lody/virtual/R$dimen;->notification_max_height:I

    const-string v2, "notification_max_height"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_max_height:I

    .line 251
    sget v1, Lcom/lody/virtual/R$dimen;->notification_mid_height:I

    const-string v2, "notification_mid_height"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_mid_height:I

    .line 253
    sget v1, Lcom/lody/virtual/R$dimen;->notification_padding:I

    const-string v2, "notification_padding"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->getDimem(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->notification_padding:I

    :cond_3
    return-void
.end method

.method private isSingleLine(Landroid/widget/TextView;)Z
    .locals 2

    .line 159
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    const-string v1, "mSingleLine"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result p1

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public makeRemoteViews(Ljava/lang/String;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/widget/RemoteViews;
    .locals 8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    new-instance v0, Lcom/lody/virtual/server/notification/PendIntentCompat;

    invoke-direct {v0, p3}, Lcom/lody/virtual/server/notification/PendIntentCompat;-><init>(Landroid/widget/RemoteViews;)V

    if-eqz p5, :cond_2

    .line 173
    invoke-virtual {v0}, Lcom/lody/virtual/server/notification/PendIntentCompat;->findPendIntents()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    sget v1, Lcom/lody/virtual/R$layout;->custom_notification:I

    goto :goto_1

    .line 174
    :cond_2
    :goto_0
    sget v1, Lcom/lody/virtual/R$layout;->custom_notification_lite:I

    .line 178
    :goto_1
    sget-object v2, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createviews id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    invoke-virtual {v5}, Lcom/lody/virtual/server/notification/NotificationCompat;->getHostContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v5, "remoteViews to view"

    new-array v6, v4, [Ljava/lang/Object;

    .line 181
    invoke-static {v2, v5, v6}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0, p2, p3, p4, v4}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->toView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;

    move-result-object p2

    const-string v5, "start createBitmap"

    new-array v6, v4, [Ljava/lang/Object;

    .line 184
    invoke-static {v2, v5, v6}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0, p2}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->createBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_3

    .line 187
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bmp is null,contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, p3, v6}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 190
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bmp w="

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",h="

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, p3, v6}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :goto_2
    iget-object p3, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mImages:Ljava/util/HashMap;

    monitor-enter p3

    .line 194
    :try_start_0
    iget-object v6, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mImages:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 195
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_4

    .line 196
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_4

    .line 197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recycle "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v2, p3, v7}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    :cond_4
    sget p3, Lcom/lody/virtual/R$id;->im_main:I

    invoke-virtual {v3, p3, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 201
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createview "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2, p3, v6}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v6, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mImages:Ljava/util/HashMap;

    monitor-enter v6

    .line 203
    :try_start_1
    iget-object p3, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mImages:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p5, :cond_5

    .line 207
    sget p1, Lcom/lody/virtual/R$layout;->custom_notification:I

    if-ne v1, p1, :cond_5

    const-string p1, "start setPendIntent"

    new-array p3, v4, [Ljava/lang/Object;

    .line 208
    invoke-static {v2, p1, p3}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :try_start_2
    iget-object p1, p0, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->mNotificationCompat:Lcom/lody/virtual/server/notification/NotificationCompat;

    .line 211
    invoke-virtual {p1}, Lcom/lody/virtual/server/notification/NotificationCompat;->getHostContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v3, p4, v4}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->toView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;

    move-result-object p1

    .line 210
    invoke-virtual {v0, v3, p1, p2}, Lcom/lody/virtual/server/notification/PendIntentCompat;->setPendIntent(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 214
    sget-object p2, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    const-string p3, "setPendIntent error"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v4

    invoke-static {p2, p3, p4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return-object v3

    :catchall_0
    move-exception p1

    .line 204
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 195
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method toView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->createView(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 45
    sget-object p4, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string p3, "toView 1"

    invoke-static {p4, p3, v2}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :try_start_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 49
    sget-object p2, Lcom/lody/virtual/server/notification/RemoteViewsFixer;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string p1, "toView 2"

    invoke-static {p2, p1, p3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
