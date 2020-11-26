.class public final Lcom/lody/virtual/client/ipc/ProviderCall$Builder;
.super Ljava/lang/Object;
.source "ProviderCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/ipc/ProviderCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arg:Ljava/lang/String;

.field private auth:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private context:Landroid/content/Context;

.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    .line 39
    iput-object p1, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->auth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/client/ipc/ProviderCall$Builder;
    .locals 2

    if-eqz p2, :cond_6

    .line 55
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 63
    :cond_3
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 65
    :cond_4
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in Bundle."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    return-object p0
.end method

.method public arg(Ljava/lang/String;)Lcom/lody/virtual/client/ipc/ProviderCall$Builder;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->arg:Ljava/lang/String;

    return-object p0
.end method

.method public call()Landroid/os/Bundle;
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->auth:Ljava/lang/String;

    iget-object v1, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->method:Ljava/lang/String;

    iget-object v3, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->arg:Ljava/lang/String;

    iget-object v4, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lody/virtual/client/ipc/ProviderCall;->call(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public methodName(Ljava/lang/String;)Lcom/lody/virtual/client/ipc/ProviderCall$Builder;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/lody/virtual/client/ipc/ProviderCall$Builder;->method:Ljava/lang/String;

    return-object p0
.end method
