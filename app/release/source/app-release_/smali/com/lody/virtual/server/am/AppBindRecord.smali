.class final Lcom/lody/virtual/server/am/AppBindRecord;
.super Ljava/lang/Object;
.source "AppBindRecord.java"


# instance fields
.field final client:Lcom/lody/virtual/server/am/ProcessRecord;

.field final connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/lody/virtual/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field final intent:Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

.field final service:Lcom/lody/virtual/server/am/ServiceRecord;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/ServiceRecord;Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;Lcom/lody/virtual/server/am/ProcessRecord;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/AppBindRecord;->connections:Ljava/util/HashSet;

    .line 34
    iput-object p1, p0, Lcom/lody/virtual/server/am/AppBindRecord;->service:Lcom/lody/virtual/server/am/ServiceRecord;

    .line 35
    iput-object p2, p0, Lcom/lody/virtual/server/am/AppBindRecord;->intent:Lcom/lody/virtual/server/am/ServiceRecord$IntentBindRecord;

    .line 36
    iput-object p3, p0, Lcom/lody/virtual/server/am/AppBindRecord;->client:Lcom/lody/virtual/server/am/ProcessRecord;

    return-void
.end method
