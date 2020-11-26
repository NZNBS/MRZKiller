.class Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetNeighboringCellInfo;
.super Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetNeighboringCellInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "getNeighboringCellInfo"

    .line 108
    invoke-direct {p0, v0}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetNeighboringCellInfo;->isFakeLocationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetNeighboringCellInfo;->getAppUserId()I

    move-result v1

    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/telephony/MethodProxies$GetNeighboringCellInfo;->getAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getNeighboringCell(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lody/virtual/remote/vloc/VCell;

    .line 118
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0}, Landroid/telephony/NeighboringCellInfo;-><init>()V

    .line 119
    sget-object v1, Lmirror/android/telephony/NeighboringCellInfo;->mLac:Lmirror/RefInt;

    iget v2, p3, Lcom/lody/virtual/remote/vloc/VCell;->lac:I

    invoke-virtual {v1, v0, v2}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 120
    sget-object v1, Lmirror/android/telephony/NeighboringCellInfo;->mCid:Lmirror/RefInt;

    iget p3, p3, Lcom/lody/virtual/remote/vloc/VCell;->cid:I

    invoke-virtual {v1, v0, p3}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 121
    sget-object p3, Lmirror/android/telephony/NeighboringCellInfo;->mRssi:Lmirror/RefInt;

    const/4 v1, 0x6

    invoke-virtual {p3, v0, v1}, Lmirror/RefInt;->set(Ljava/lang/Object;I)V

    .line 122
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 127
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
