.class Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;
.super Ljava/lang/Object;
.source "VNotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/notification/VNotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationInfo"
.end annotation


# instance fields
.field id:I

.field packageName:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->id:I

    .line 136
    iput-object p2, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->tag:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->packageName:Ljava/lang/String;

    .line 138
    iput p4, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->userId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 143
    instance-of v0, p1, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;

    if-eqz v0, :cond_1

    .line 144
    check-cast p1, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;

    .line 145
    iget v0, p1, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->id:I

    iget v1, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->tag:Ljava/lang/String;

    iget-object v1, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->packageName:Ljava/lang/String;

    .line 146
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->userId:I

    iget v0, p0, Lcom/lody/virtual/server/notification/VNotificationManagerService$NotificationInfo;->userId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 149
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
