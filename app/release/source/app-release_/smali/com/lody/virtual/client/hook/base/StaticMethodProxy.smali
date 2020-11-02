.class public Lcom/lody/virtual/client/hook/base/StaticMethodProxy;
.super Lcom/lody/virtual/client/hook/base/MethodProxy;
.source "StaticMethodProxy.java"


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/MethodProxy;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/StaticMethodProxy;->mName:Ljava/lang/String;

    return-object v0
.end method
