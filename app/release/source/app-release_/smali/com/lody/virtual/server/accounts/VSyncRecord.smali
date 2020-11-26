.class public Lcom/lody/virtual/server/accounts/VSyncRecord;
.super Ljava/lang/Object;
.source "VSyncRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/accounts/VSyncRecord$PeriodicSyncConfig;,
        Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;,
        Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;
    }
.end annotation


# instance fields
.field public configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;",
            "Lcom/lody/virtual/server/accounts/VSyncRecord$PeriodicSyncConfig;",
            ">;"
        }
    .end annotation
.end field

.field public extras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lody/virtual/server/accounts/VSyncRecord$SyncExtras;",
            ">;"
        }
    .end annotation
.end field

.field public isPeriodic:Z

.field public key:Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;

.field public syncable:I

.field public userId:I


# direct methods
.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord;->syncable:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord;->isPeriodic:Z

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord;->configs:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/accounts/VSyncRecord;->extras:Ljava/util/List;

    .line 27
    iput p1, p0, Lcom/lody/virtual/server/accounts/VSyncRecord;->userId:I

    .line 28
    new-instance p1, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;

    invoke-direct {p1, p2, p3}, Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VSyncRecord;->key:Lcom/lody/virtual/server/accounts/VSyncRecord$SyncRecordKey;

    return-void
.end method

.method public static equals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-gt v2, v3, :cond_2

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    .line 133
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p2, :cond_4

    .line 134
    invoke-static {v3}, Lcom/lody/virtual/server/accounts/VSyncRecord;->isIgnoredKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    .line 139
    :cond_5
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_6
    return v0
.end method

.method private static isIgnoredKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "expedited"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ignore_settings"

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ignore_backoff"

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "do_not_retry"

    .line 186
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "force"

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "upload"

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "deletions_override"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "discard_deletions"

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "expected_upload"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "expected_download"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sync_priority"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "allow_metered"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "initialize"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
