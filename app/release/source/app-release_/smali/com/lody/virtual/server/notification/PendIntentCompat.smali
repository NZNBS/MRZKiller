.class Lcom/lody/virtual/server/notification/PendIntentCompat;
.super Ljava/lang/Object;
.source "PendIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;
    }
.end annotation


# instance fields
.field private clickIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lody/virtual/server/notification/PendIntentCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method private findIntent(Landroid/graphics/Rect;Ljava/util/List;)Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;",
            ">;)",
            "Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;"
        }
    .end annotation

    .line 118
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;

    .line 119
    iget-object v3, v2, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Lcom/lody/virtual/server/notification/PendIntentCompat;->getOverlapArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    if-le v3, v0, :cond_0

    if-nez v3, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find two:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingIntentCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getClickIntents(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object p1

    const-string v2, "mActions"

    invoke-virtual {p1, v2}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 156
    :cond_1
    instance-of p1, v1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    .line 157
    check-cast v1, Ljava/util/Collection;

    .line 158
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 162
    :try_start_1
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v2

    const-string v3, "getActionName"

    invoke-virtual {v2, v3}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 164
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v3, "SetOnClickPendingIntent"

    .line 166
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v2

    const-string v3, "viewId"

    invoke-virtual {v2, v3}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 168
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v1

    const-string v3, "pendingIntent"

    invoke-virtual {v1, v3}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getOverlapArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 133
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 134
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 135
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 136
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 137
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_0

    .line 138
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    mul-int p1, p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 83
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/lody/virtual/server/notification/PendIntentCompat;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 84
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 85
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 86
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 87
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method private setIntentByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 99
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 101
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v2, p3}, Lcom/lody/virtual/server/notification/PendIntentCompat;->setIntentByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_1

    .line 102
    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 104
    :cond_1
    invoke-direct {p0, v2}, Lcom/lody/virtual/server/notification/PendIntentCompat;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 105
    invoke-direct {p0, v3, p3}, Lcom/lody/virtual/server/notification/PendIntentCompat;->findIntent(Landroid/graphics/Rect;Ljava/util/List;)Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, v3, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public findPendIntents()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/lody/virtual/server/notification/PendIntentCompat;->clickIntents:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/server/notification/PendIntentCompat;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/notification/PendIntentCompat;->getClickIntents(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/notification/PendIntentCompat;->clickIntents:Ljava/util/Map;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/notification/PendIntentCompat;->clickIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public setPendIntent(Landroid/widget/RemoteViews;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 52
    invoke-virtual {p0}, Lcom/lody/virtual/server/notification/PendIntentCompat;->findPendIntents()I

    move-result v0

    if-lez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/lody/virtual/server/notification/PendIntentCompat;->clickIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    sget-object v2, Lcom/lody/virtual/server/notification/NotificationCompat;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "start find intent"

    invoke-static {v2, v5, v4}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 61
    invoke-direct {p0, v5}, Lcom/lody/virtual/server/notification/PendIntentCompat;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 62
    new-instance v6, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-direct {v6, p0, v5, v4, v2}, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;-><init>(Lcom/lody/virtual/server/notification/PendIntentCompat;Landroid/graphics/Rect;Landroid/app/PendingIntent;I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    sget-object p3, Lcom/lody/virtual/server/notification/NotificationCompat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p3, v0, v2}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    instance-of p3, p2, Landroid/view/ViewGroup;

    if-eqz p3, :cond_2

    .line 68
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, v1}, Lcom/lody/virtual/server/notification/PendIntentCompat;->setIntentByViewGroup(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_2
    return-void
.end method
