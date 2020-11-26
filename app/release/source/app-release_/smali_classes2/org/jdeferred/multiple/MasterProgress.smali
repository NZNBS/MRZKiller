.class public Lorg/jdeferred/multiple/MasterProgress;
.super Ljava/lang/Object;
.source "MasterProgress.java"


# instance fields
.field private final done:I

.field private final fail:I

.field private final total:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/jdeferred/multiple/MasterProgress;->done:I

    .line 32
    iput p2, p0, Lorg/jdeferred/multiple/MasterProgress;->fail:I

    .line 33
    iput p3, p0, Lorg/jdeferred/multiple/MasterProgress;->total:I

    return-void
.end method


# virtual methods
.method public getDone()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/jdeferred/multiple/MasterProgress;->done:I

    return v0
.end method

.method public getFail()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/jdeferred/multiple/MasterProgress;->fail:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/jdeferred/multiple/MasterProgress;->total:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MasterProgress [done="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jdeferred/multiple/MasterProgress;->done:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jdeferred/multiple/MasterProgress;->fail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jdeferred/multiple/MasterProgress;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
