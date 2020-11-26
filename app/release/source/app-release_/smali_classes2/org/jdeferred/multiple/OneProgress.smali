.class public Lorg/jdeferred/multiple/OneProgress;
.super Lorg/jdeferred/multiple/MasterProgress;
.source "OneProgress.java"


# instance fields
.field private final index:I

.field private final progress:Ljava/lang/Object;

.field private final promise:Lorg/jdeferred/Promise;


# direct methods
.method public constructor <init>(IIIILorg/jdeferred/Promise;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/jdeferred/multiple/MasterProgress;-><init>(III)V

    .line 35
    iput p4, p0, Lorg/jdeferred/multiple/OneProgress;->index:I

    .line 36
    iput-object p5, p0, Lorg/jdeferred/multiple/OneProgress;->promise:Lorg/jdeferred/Promise;

    .line 37
    iput-object p6, p0, Lorg/jdeferred/multiple/OneProgress;->progress:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/jdeferred/multiple/OneProgress;->index:I

    return v0
.end method

.method public getProgress()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jdeferred/multiple/OneProgress;->progress:Ljava/lang/Object;

    return-object v0
.end method

.method public getPromise()Lorg/jdeferred/Promise;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jdeferred/multiple/OneProgress;->promise:Lorg/jdeferred/Promise;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneProgress [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jdeferred/multiple/OneProgress;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", promise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jdeferred/multiple/OneProgress;->promise:Lorg/jdeferred/Promise;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jdeferred/multiple/OneProgress;->progress:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getDone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdeferred/multiple/OneProgress;->getDone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getFail()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdeferred/multiple/OneProgress;->getFail()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getTotal()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdeferred/multiple/OneProgress;->getTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
