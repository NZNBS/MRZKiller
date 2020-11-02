.class public abstract Lme/weishu/epic/art/arch/ShellCode;
.super Ljava/lang/Object;
.source "ShellCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static writeInt(ILjava/nio/ByteOrder;[BI)V
    .locals 2

    const/4 v0, 0x4

    .line 51
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static writeLong(JLjava/nio/ByteOrder;[BI)V
    .locals 2

    const/16 v0, 0x8

    .line 55
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public createBridgeJump(JJJJ)[B
    .locals 0

    .line 47
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not impled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createCallOrigin(J[B)[B
    .locals 5

    .line 33
    invoke-virtual {p0}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfCallOrigin()I

    move-result v0

    new-array v0, v0, [B

    .line 34
    invoke-virtual {p0}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-virtual {p0}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result p3

    int-to-long v3, p3

    add-long/2addr p1, v3

    invoke-virtual {p0, p1, p2}, Lme/weishu/epic/art/arch/ShellCode;->toPC(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lme/weishu/epic/art/arch/ShellCode;->createDirectJump(J)[B

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result p2

    array-length p3, p1

    invoke-static {p1, v2, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public abstract createDirectJump(J)[B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract sizeOfBridgeJump()I
.end method

.method public sizeOfCallOrigin()I
    .locals 1

    .line 41
    invoke-virtual {p0}, Lme/weishu/epic/art/arch/ShellCode;->sizeOfDirectJump()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public abstract sizeOfDirectJump()I
.end method

.method public abstract toMem(J)J
.end method

.method public abstract toPC(J)J
.end method
