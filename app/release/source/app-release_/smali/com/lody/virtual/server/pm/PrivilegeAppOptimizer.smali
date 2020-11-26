.class public Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;
.super Ljava/lang/Object;
.source "PrivilegeAppOptimizer.java"


# static fields
.field private static final sInstance:Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;


# instance fields
.field private final privilegeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->sInstance:Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->privilegeApps:Ljava/util/List;

    .line 24
    sget-object v1, Lcom/lody/virtual/client/stub/VASettings;->PRIVILEGE_APPS:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static get()Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;
    .locals 1

    .line 28
    sget-object v0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->sInstance:Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;

    return-object v0
.end method

.method public static notifyBootFinish()V
    .locals 4

    .line 61
    sget-object v0, Lcom/lody/virtual/client/env/Constants;->PRIVILEGE_APP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->get()Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->performOptimize(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method private specifyApp(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    const-string v0, "_VA_|_privilege_pkg_"

    .line 70
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_VA_|_user_id_"

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "_VA_|_intent_"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public addPrivilegeApp(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->privilegeApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPrivilegeApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->privilegeApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isPrivilegeApp(Ljava/lang/String;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->privilegeApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public performOptimize(Ljava/lang/String;I)Z
    .locals 3

    .line 54
    invoke-static {}, Lcom/lody/virtual/server/am/VActivityManagerService;->get()Lcom/lody/virtual/server/am/VActivityManagerService;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v1, p1, p2}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->specifyApp(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    new-instance v1, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v1, p2}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    .line 54
    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/server/am/VActivityManagerService;->sendBroadcastAsUser(Landroid/content/Intent;Lcom/lody/virtual/os/VUserHandle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public performOptimizeAllApps()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->privilegeApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->performOptimize(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePrivilegeApp(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/lody/virtual/server/pm/PrivilegeAppOptimizer;->privilegeApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
