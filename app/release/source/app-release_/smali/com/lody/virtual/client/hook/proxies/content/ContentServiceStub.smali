.class public Lcom/lody/virtual/client/hook/proxies/content/ContentServiceStub;
.super Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;
.source "ContentServiceStub.java"


# annotations
.annotation runtime Lcom/lody/virtual/client/hook/base/Inject;
    value = Lcom/lody/virtual/client/hook/proxies/content/MethodProxies;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    sget-object v0, Lmirror/android/content/IContentService$Stub;->asInterface:Lmirror/RefStaticMethod;

    const-string v1, "content"

    invoke-direct {p0, v0, v1}, Lcom/lody/virtual/client/hook/base/BinderInvocationProxy;-><init>(Lmirror/RefStaticMethod;Ljava/lang/String;)V

    return-void
.end method
