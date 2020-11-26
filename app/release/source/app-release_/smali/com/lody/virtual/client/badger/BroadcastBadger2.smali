.class public abstract Lcom/lody/virtual/client/badger/BroadcastBadger2;
.super Ljava/lang/Object;
.source "BroadcastBadger2.java"

# interfaces
.implements Lcom/lody/virtual/client/badger/IBadger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/badger/BroadcastBadger2$NewHtcHomeBadger1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getComponentKey()Ljava/lang/String;
.end method

.method public abstract getCountKey()Ljava/lang/String;
.end method

.method public handleBadger(Landroid/content/Intent;)Lcom/lody/virtual/remote/BadgerInfo;
    .locals 3

    .line 21
    new-instance v0, Lcom/lody/virtual/remote/BadgerInfo;

    invoke-direct {v0}, Lcom/lody/virtual/remote/BadgerInfo;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger2;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lody/virtual/remote/BadgerInfo;->packageName:Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lody/virtual/remote/BadgerInfo;->className:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/lody/virtual/client/badger/BroadcastBadger2;->getCountKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/lody/virtual/remote/BadgerInfo;->badgerCount:I

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
