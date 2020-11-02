.class final Lcom/lody/virtual/client/hook/providers/ProviderHook$4;
.super Ljava/lang/Object;
.source "ProviderHook.java"

# interfaces
.implements Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/providers/ProviderHook;->fetchHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(ZLandroid/os/IInterface;)Lcom/lody/virtual/client/hook/providers/ProviderHook;
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;

    invoke-direct {p1, p2}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Lcom/lody/virtual/client/hook/providers/InternalProviderHook;

    invoke-direct {p1, p2}, Lcom/lody/virtual/client/hook/providers/InternalProviderHook;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
