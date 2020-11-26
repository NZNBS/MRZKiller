.class Lcom/lody/virtual/client/badger/BroadcastBadger1$AospHomeBadger;
.super Lcom/lody/virtual/client/badger/BroadcastBadger1;
.source "BroadcastBadger1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/badger/BroadcastBadger1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AospHomeBadger"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intent.action.BADGE_COUNT_UPDATE"

    return-object v0
.end method

.method public getClassNameKey()Ljava/lang/String;
    .locals 1

    const-string v0, "badge_count_class_name"

    return-object v0
.end method

.method public getCountKey()Ljava/lang/String;
    .locals 1

    const-string v0, "badge_count"

    return-object v0
.end method

.method public getPackageKey()Ljava/lang/String;
    .locals 1

    const-string v0, "badge_count_package_name"

    return-object v0
.end method
