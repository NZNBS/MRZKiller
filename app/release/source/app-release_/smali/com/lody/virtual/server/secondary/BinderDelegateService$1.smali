.class final Lcom/lody/virtual/server/secondary/BinderDelegateService$1;
.super Ljava/lang/Object;
.source "BinderDelegateService.java"

# interfaces
.implements Lcom/lody/virtual/server/secondary/BinderDelegateService$ProxyBinderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/secondary/BinderDelegateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/os/Binder;)Landroid/os/IBinder;
    .locals 1

    .line 30
    new-instance v0, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;

    invoke-direct {v0, p1}, Lcom/lody/virtual/server/secondary/FakeIdentityBinder;-><init>(Landroid/os/Binder;)V

    return-object v0
.end method
