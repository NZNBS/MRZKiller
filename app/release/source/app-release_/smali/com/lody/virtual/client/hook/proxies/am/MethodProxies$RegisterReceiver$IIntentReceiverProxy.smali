.class Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;
.super Landroid/content/IIntentReceiver$Stub;
.source "MethodProxies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IIntentReceiverProxy"
.end annotation


# instance fields
.field mOld:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/os/IInterface;)V
    .locals 0

    .line 1293
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 1294
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;->mOld:Landroid/os/IInterface;

    return-void
.end method

.method private accept(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "_VA_|_uid_"

    const/4 v1, -0x1

    .line 1314
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 1316
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const-string v0, "_VA_|_user_id_"

    .line 1318
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 1319
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1325
    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    return-void
.end method

.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1299
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;->accept(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "_VA_|_intent_"

    .line 1302
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1305
    :cond_1
    invoke-static {v1}, Lcom/lody/virtual/client/env/SpecialComponentList;->unprotectIntent(Landroid/content/Intent;)V

    .line 1306
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    if-le v2, v3, :cond_2

    .line 1307
    sget-object v2, Lmirror/android/content/IIntentReceiverJB;->performReceive:Lmirror/RefMethod;

    iget-object v3, v0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;->mOld:Landroid/os/IInterface;

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v8

    aput-object p3, v11, v7

    aput-object p4, v11, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v10

    invoke-virtual {v2, v3, v11}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1309
    :cond_2
    sget-object v2, Lmirror/android/content/IIntentReceiver;->performReceive:Lmirror/RefMethod;

    iget-object v3, v0, Lcom/lody/virtual/client/hook/proxies/am/MethodProxies$RegisterReceiver$IIntentReceiverProxy;->mOld:Landroid/os/IInterface;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v8

    aput-object p3, v10, v7

    aput-object p4, v10, v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v4

    invoke-virtual {v2, v3, v10}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
