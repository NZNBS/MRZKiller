.class public Lorg/jdeferred/multiple/OneReject;
.super Ljava/lang/Object;
.source "OneReject.java"


# instance fields
.field private final index:I

.field private final promise:Lorg/jdeferred/Promise;

.field private final reject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILorg/jdeferred/Promise;Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/jdeferred/multiple/OneReject;->index:I

    .line 34
    iput-object p2, p0, Lorg/jdeferred/multiple/OneReject;->promise:Lorg/jdeferred/Promise;

    .line 35
    iput-object p3, p0, Lorg/jdeferred/multiple/OneReject;->reject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/jdeferred/multiple/OneReject;->index:I

    return v0
.end method

.method public getPromise()Lorg/jdeferred/Promise;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/jdeferred/multiple/OneReject;->promise:Lorg/jdeferred/Promise;

    return-object v0
.end method

.method public getReject()Ljava/lang/Object;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/jdeferred/multiple/OneReject;->reject:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneReject [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jdeferred/multiple/OneReject;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", promise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jdeferred/multiple/OneReject;->promise:Lorg/jdeferred/Promise;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jdeferred/multiple/OneReject;->reject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
