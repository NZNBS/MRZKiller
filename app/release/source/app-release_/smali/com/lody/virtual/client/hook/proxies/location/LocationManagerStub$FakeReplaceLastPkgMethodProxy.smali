.class Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;
.super Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;
.source "LocationManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeReplaceLastPkgMethodProxy"
.end annotation


# instance fields
.field private mDefValue:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;->mDefValue:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub$FakeReplaceLastPkgMethodProxy;->mDefValue:Ljava/lang/Object;

    return-object p1

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceLastPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
