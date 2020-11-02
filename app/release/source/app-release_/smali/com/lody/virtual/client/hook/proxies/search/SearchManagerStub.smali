.class public Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "SearchManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub$GetSearchableInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lmirror/android/app/ISearchManager$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "search"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindMethods()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;->onBindMethods()V

    .line 31
    new-instance v0, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;

    const-string v1, "launchLegacyAssist"

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    .line 32
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub$GetSearchableInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub$GetSearchableInfo;-><init>(Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub$1;)V

    invoke-virtual {p0, v0}, Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub;->addMethodProxy(Lcom/lody/virtual/client/hook/base/MethodProxy;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    return-void
.end method
