.class Lcom/lody/virtual/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# instance fields
.field public final activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lody/virtual/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public affinity:Ljava/lang/String;

.field public taskId:I

.field public taskRoot:Landroid/content/Intent;

.field public userId:I


# direct methods
.method constructor <init>(IILjava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    .line 24
    iput p1, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    .line 25
    iput p2, p0, Lcom/lody/virtual/server/am/TaskRecord;->userId:I

    .line 26
    iput-object p3, p0, Lcom/lody/virtual/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method getAppTaskInfo()Lcom/lody/virtual/remote/AppTaskInfo;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    .line 36
    new-instance v1, Lcom/lody/virtual/remote/AppTaskInfo;

    iget v2, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskId:I

    iget-object v3, p0, Lcom/lody/virtual/server/am/TaskRecord;->taskRoot:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/lody/virtual/remote/AppTaskInfo;-><init>(ILandroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-object v1
.end method

.method public isFinishing()Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/lody/virtual/server/am/TaskRecord;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/am/ActivityRecord;

    .line 42
    iget-boolean v2, v2, Lcom/lody/virtual/server/am/ActivityRecord;->marked:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method
