.class Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;
.super Ljava/lang/Object;
.source "PendIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/notification/PendIntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectInfo"
.end annotation


# instance fields
.field index:I

.field mPendingIntent:Landroid/app/PendingIntent;

.field rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/lody/virtual/server/notification/PendIntentCompat;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/notification/PendIntentCompat;Landroid/graphics/Rect;Landroid/app/PendingIntent;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->this$0:Lcom/lody/virtual/server/notification/PendIntentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    .line 184
    iput-object p3, p0, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 185
    iput p4, p0, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->index:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectInfo{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lody/virtual/server/notification/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
