.class final Lcom/lody/virtual/server/am/ProcessRecord;
.super Landroid/os/Binder;
.source "ProcessRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/Binder;",
        "Ljava/lang/Comparable<",
        "Lcom/lody/virtual/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field appThread:Landroid/os/IInterface;

.field public client:Lcom/lody/virtual/client/IVClient;

.field doneExecuting:Z

.field public final info:Landroid/content/pm/ApplicationInfo;

.field final lock:Landroid/os/ConditionVariable;

.field public pid:I

.field final pkgList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field priority:I

.field public final processName:Ljava/lang/String;

.field public userId:I

.field public vpid:I

.field public vuid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->lock:Landroid/os/ConditionVariable;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->pkgList:Ljava/util/Set;

    .line 30
    iput-object p1, p0, Lcom/lody/virtual/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 31
    iput p3, p0, Lcom/lody/virtual/server/am/ProcessRecord;->vuid:I

    .line 32
    iput p4, p0, Lcom/lody/virtual/server/am/ProcessRecord;->vpid:I

    .line 33
    invoke-static {p3}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/server/am/ProcessRecord;->userId:I

    .line 34
    iput-object p2, p0, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/lody/virtual/server/am/ProcessRecord;)I
    .locals 1

    .line 49
    iget v0, p0, Lcom/lody/virtual/server/am/ProcessRecord;->priority:I

    iget p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->priority:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/am/ProcessRecord;->compareTo(Lcom/lody/virtual/server/am/ProcessRecord;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    check-cast p1, Lcom/lody/virtual/server/am/ProcessRecord;

    .line 44
    iget-object v2, p0, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/lody/virtual/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method
