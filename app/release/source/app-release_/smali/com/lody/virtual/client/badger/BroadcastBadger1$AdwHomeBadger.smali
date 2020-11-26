.class Lcom/lody/virtual/client/badger/BroadcastBadger1$AdwHomeBadger;
.super Lcom/lody/virtual/client/badger/BroadcastBadger1;
.source "BroadcastBadger1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/badger/BroadcastBadger1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdwHomeBadger"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "org.adw.launcher.counter.SEND"

    return-object v0
.end method

.method public getClassNameKey()Ljava/lang/String;
    .locals 1

    const-string v0, "CNAME"

    return-object v0
.end method

.method public getCountKey()Ljava/lang/String;
    .locals 1

    const-string v0, "COUNT"

    return-object v0
.end method

.method public getPackageKey()Ljava/lang/String;
    .locals 1

    const-string v0, "PNAME"

    return-object v0
.end method
