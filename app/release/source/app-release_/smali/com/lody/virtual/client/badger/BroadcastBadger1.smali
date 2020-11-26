.class public abstract Lcom/lody/virtual/client/badger/BroadcastBadger1;
.super Ljava/lang/Object;
.source "BroadcastBadger1.java"

# interfaces
.implements Lcom/lody/virtual/client/badger/IBadger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/badger/BroadcastBadger1$OPPOHomeBader;,
        Lcom/lody/virtual/client/badger/BroadcastBadger1$NewHtcHomeBadger2;,
        Lcom/lody/virtual/client/badger/BroadcastBadger1$AospHomeBadger;,
        Lcom/lody/virtual/client/badger/BroadcastBadger1$AdwHomeBadger;,
        Lcom/lody/virtual/client/badger/BroadcastBadger1$LGHomeBadger;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getClassNameKey()Ljava/lang/String;
.end method

.method public abstract getCountKey()Ljava/lang/String;
.end method

.method public abstract getPackageKey()Ljava/lang/String;
.end method

.method public handleBadger(Landroid/content/Intent;)Lcom/lody/virtual/remote/BadgerInfo;
    .locals 3

    .line 22
    new-instance v0, Lcom/lody/virtual/remote/BadgerInfo;

    invoke-direct {v0}, Lcom/lody/virtual/remote/BadgerInfo;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;->getPackageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/remote/BadgerInfo;->packageName:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;->getClassNameKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;->getClassNameKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/remote/BadgerInfo;->className:Ljava/lang/String;

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger1;->getCountKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/lody/virtual/remote/BadgerInfo;->badgerCount:I

    return-object v0
.end method
