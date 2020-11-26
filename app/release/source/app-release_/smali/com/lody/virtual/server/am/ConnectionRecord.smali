.class final Lcom/lody/virtual/server/am/ConnectionRecord;
.super Ljava/lang/Object;
.source "ConnectionRecord.java"


# instance fields
.field final binding:Lcom/lody/virtual/server/am/AppBindRecord;

.field final conn:Landroid/app/IServiceConnection;

.field final flags:I

.field serviceDead:Z


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/am/AppBindRecord;Landroid/app/IServiceConnection;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lody/virtual/server/am/ConnectionRecord;->binding:Lcom/lody/virtual/server/am/AppBindRecord;

    .line 33
    iput-object p2, p0, Lcom/lody/virtual/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 34
    iput p3, p0, Lcom/lody/virtual/server/am/ConnectionRecord;->flags:I

    return-void
.end method
