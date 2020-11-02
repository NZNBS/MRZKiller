.class Lcom/lody/virtual/client/badger/BroadcastBadger2$NewHtcHomeBadger1;
.super Lcom/lody/virtual/client/badger/BroadcastBadger2;
.source "BroadcastBadger2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/badger/BroadcastBadger2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NewHtcHomeBadger1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger2;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.launcher.action.SET_NOTIFICATION"

    return-object v0
.end method

.method public getComponentKey()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.launcher.extra.COMPONENT"

    return-object v0
.end method

.method public getCountKey()Ljava/lang/String;
    .locals 1

    const-string v0, "com.htc.launcher.extra.COUNT"

    return-object v0
.end method
