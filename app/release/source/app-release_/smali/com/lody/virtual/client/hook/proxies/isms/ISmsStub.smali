.class public Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "ISmsStub.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    sget-object v0, Lmirror/com/android/internal/telephony/ISms$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "isms"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 17

    move-object/from16 v0, p0

    .line 23
    invoke-super/range {p0 .. p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "sendStoredMultipartText"

    const-string v3, "sendStoredText"

    const-string v4, "sendMultipartTextForSubscriber"

    const-string v5, "sendTextForSubscriber"

    const-string v6, "sendDataForSubscriber"

    const-string v7, "copyMessageToIccEfForSubscriber"

    const-string v8, "updateMessageOnIccEfForSubscriber"

    const-string v9, "getAllMessagesFromIccEfForSubscriber"

    const/4 v10, 0x1

    const/16 v11, 0x17

    if-lt v1, v11, :cond_0

    .line 25
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v9, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 26
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v8, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 27
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v7, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 28
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v6, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 29
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    const-string v6, "sendDataForSubscriberWithSelfPermissions"

    invoke-direct {v1, v6, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 30
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v5, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 31
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    const-string v5, "sendTextForSubscriberWithSelfPermissions"

    invoke-direct {v1, v5, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 32
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v4, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 33
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v3, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 34
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v2, v10}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    goto/16 :goto_0

    .line 35
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    const-string v12, "sendMultipartText"

    const-string v13, "sendText"

    const-string v14, "sendData"

    const-string v15, "copyMessageToIccEf"

    const-string v10, "updateMessageOnIccEf"

    move-object/from16 v16, v2

    const-string v2, "getAllMessagesFromIccEf"

    if-lt v1, v11, :cond_1

    .line 36
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 37
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    const/4 v2, 0x1

    invoke-direct {v1, v9, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 38
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v10}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 39
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v8, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 40
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v15}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 41
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v7, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 42
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v14}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 43
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v6, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 44
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v13}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 45
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v5, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 46
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v12}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 47
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v4, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 48
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    invoke-direct {v1, v3, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 49
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;

    move-object/from16 v3, v16

    invoke-direct {v1, v3, v2}, Lcom/lody/virtual/client/hook/base/ReplaceSpecPkgMethodProxy;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    goto :goto_0

    .line 50
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_2

    .line 51
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v2}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 52
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v10}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 53
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v15}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 54
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v14}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 55
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v13}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 56
    new-instance v1, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;

    invoke-direct {v1, v12}, Lcom/lody/virtual/client/hook/base/ReplaceCallingPkgMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    :cond_2
    :goto_0
    return-void
.end method
