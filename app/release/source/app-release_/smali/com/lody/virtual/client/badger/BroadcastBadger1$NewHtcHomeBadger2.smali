.class Lcom/lody/virtual/client/badger/BroadcastBadger1$NewHtcHomeBadger2;
.super Lcom/lody/virtual/client/badger/BroadcastBadger1;
.source "BroadcastBadger1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/badger/BroadcastBadger1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewHtcHomeBadger2"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.launcher.action.UPDATE_SHORTCUT"

    return-object v0
.end method

.method public getClassNameKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCountKey()Ljava/lang/String;
    .locals 1

    const-string v0, "count"

    return-object v0
.end method

.method public getPackageKey()Ljava/lang/String;
    .locals 1

    const-string v0, "packagename"

    return-object v0
.end method
