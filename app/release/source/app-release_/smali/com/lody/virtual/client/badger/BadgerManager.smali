.class public Lcom/lody/virtual/client/badger/BadgerManager;
.super Ljava/lang/Object;
.source "BadgerManager.java"


# static fields
.field private static final BADGERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/badger/IBadger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/client/badger/BadgerManager;->BADGERS:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/lody/virtual/client/badger/BroadcastBadger1$AdwHomeBadger;

    invoke-direct {v0}, Lcom/lody/virtual/client/badger/BroadcastBadger1$AdwHomeBadger;-><init>()V

    invoke-static {v0}, Lcom/lody/virtual/client/badger/BadgerManager;->addBadger(Lcom/lody/virtual/client/badger/IBadger;)V

    .line 20
    new-instance v0, Lcom/lody/virtual/client/badger/BroadcastBadger1$AospHomeBadger;

    invoke-direct {v0}, Lcom/lody/virtual/client/badger/BroadcastBadger1$AospHomeBadger;-><init>()V

    invoke-static {v0}, Lcom/lody/virtual/client/badger/BadgerManager;->addBadger(Lcom/lody/virtual/client/badger/IBadger;)V

    .line 21
    new-instance v0, Lcom/lody/virtual/client/badger/BroadcastBadger1$LGHomeBadger;

    invoke-direct {v0}, Lcom/lody/virtual/client/badger/BroadcastBadger1$LGHomeBadger;-><init>()V

    invoke-static {v0}, Lcom/lody/virtual/client/badger/BadgerManager;->addBadger(Lcom/lody/virtual/client/badger/IBadger;)V

    .line 22
    new-instance v0, Lcom/lody/virtual/client/badger/BroadcastBadger1$NewHtcHomeBadger2;

    invoke-direct {v0}, Lcom/lody/virtual/client/badger/BroadcastBadger1$NewHtcHomeBadger2;-><init>()V

    invoke-static {v0}, Lcom/lody/virtual/client/badger/BadgerManager;->addBadger(Lcom/lody/virtual/client/badger/IBadger;)V

    .line 23
    new-instance v0, Lcom/lody/virtual/client/badger/BroadcastBadger1$OPPOHomeBader;

    invoke-direct {v0}, Lcom/lody/virtual/client/badger/BroadcastBadger1$OPPOHomeBader;-><init>()V

    invoke-static {v0}, Lcom/lody/virtual/client/badger/BadgerManager;->addBadger(Lcom/lody/virtual/client/badger/IBadger;)V

    .line 24
    new-instance v0, Lcom/lody/virtual/client/badger/BroadcastBadger2$NewHtcHomeBadger1;

    invoke-direct {v0}, Lcom/lody/virtual/client/badger/BroadcastBadger2$NewHtcHomeBadger1;-><init>()V

    invoke-static {v0}, Lcom/lody/virtual/client/badger/BadgerManager;->addBadger(Lcom/lody/virtual/client/badger/IBadger;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBadger(Lcom/lody/virtual/client/badger/IBadger;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/lody/virtual/client/badger/BadgerManager;->BADGERS:Ljava/util/Map;

    invoke-interface {p0}, Lcom/lody/virtual/client/badger/IBadger;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static handleBadger(Landroid/content/Intent;)Z
    .locals 2

    .line 33
    sget-object v0, Lcom/lody/virtual/client/badger/BadgerManager;->BADGERS:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/badger/IBadger;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0, p0}, Lcom/lody/virtual/client/badger/IBadger;->handleBadger(Landroid/content/Intent;)Lcom/lody/virtual/remote/BadgerInfo;

    move-result-object p0

    .line 36
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lody/virtual/client/ipc/VActivityManager;->notifyBadgerChange(Lcom/lody/virtual/remote/BadgerInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
