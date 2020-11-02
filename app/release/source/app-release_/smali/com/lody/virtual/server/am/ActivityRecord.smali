.class Lcom/lody/virtual/server/am/ActivityRecord;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# instance fields
.field public affinity:Ljava/lang/String;

.field public caller:Landroid/content/ComponentName;

.field public component:Landroid/content/ComponentName;

.field public flags:I

.field public launchMode:I

.field public marked:Z

.field public process:Lcom/lody/virtual/server/am/ProcessRecord;

.field public task:Lcom/lody/virtual/server/am/TaskRecord;

.field public token:Landroid/os/IBinder;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/IBinder;ILcom/lody/virtual/server/am/ProcessRecord;IILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lody/virtual/server/am/ActivityRecord;->task:Lcom/lody/virtual/server/am/TaskRecord;

    .line 24
    iput-object p2, p0, Lcom/lody/virtual/server/am/ActivityRecord;->component:Landroid/content/ComponentName;

    .line 25
    iput-object p3, p0, Lcom/lody/virtual/server/am/ActivityRecord;->caller:Landroid/content/ComponentName;

    .line 26
    iput-object p4, p0, Lcom/lody/virtual/server/am/ActivityRecord;->token:Landroid/os/IBinder;

    .line 27
    iput p5, p0, Lcom/lody/virtual/server/am/ActivityRecord;->userId:I

    .line 28
    iput-object p6, p0, Lcom/lody/virtual/server/am/ActivityRecord;->process:Lcom/lody/virtual/server/am/ProcessRecord;

    .line 29
    iput p7, p0, Lcom/lody/virtual/server/am/ActivityRecord;->launchMode:I

    .line 30
    iput p8, p0, Lcom/lody/virtual/server/am/ActivityRecord;->flags:I

    .line 31
    iput-object p9, p0, Lcom/lody/virtual/server/am/ActivityRecord;->affinity:Ljava/lang/String;

    return-void
.end method
