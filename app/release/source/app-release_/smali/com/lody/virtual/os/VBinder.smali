.class public Lcom/lody/virtual/os/VBinder;
.super Ljava/lang/Object;
.source "VBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseCallingUid()I
    .locals 1

    .line 18
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingPid()I
    .locals 1

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method public static getCallingUid()I
    .locals 2

    .line 14
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/ipc/VActivityManager;->getUidByPid(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserHandle()Lcom/lody/virtual/os/VUserHandle;
    .locals 2

    .line 26
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    return-object v0
.end method
