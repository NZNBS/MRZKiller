.class public Lme/weishu/epic/art/arch/Thumb2;
.super Lme/weishu/epic/art/arch/ShellCode;
.source "Thumb2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lme/weishu/epic/art/arch/ShellCode;-><init>()V

    return-void
.end method


# virtual methods
.method public createBridgeJump(JJJJ)[B
    .locals 2

    const/16 v0, 0x3c

    new-array v0, v0, [B

    .line 68
    fill-array-data v0, :array_0

    long-to-int p2, p1

    .line 95
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x2c

    invoke-static {p2, p1, v0, v1}, Lme/weishu/epic/art/arch/Thumb2;->writeInt(ILjava/nio/ByteOrder;[BI)V

    long-to-int p1, p3

    .line 97
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 p3, 0x30

    invoke-static {p1, p2, v0, p3}, Lme/weishu/epic/art/arch/Thumb2;->writeInt(ILjava/nio/ByteOrder;[BI)V

    long-to-int p1, p5

    .line 99
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 p3, 0x34

    invoke-static {p1, p2, v0, p3}, Lme/weishu/epic/art/arch/Thumb2;->writeInt(ILjava/nio/ByteOrder;[BI)V

    long-to-int p1, p7

    .line 101
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 p3, 0x38

    invoke-static {p1, p2, v0, p3}, Lme/weishu/epic/art/arch/Thumb2;->writeInt(ILjava/nio/ByteOrder;[BI)V

    return-object v0

    :array_0
    .array-data 1
        -0x21t
        -0x8t
        0x30t
        -0x40t
        0x60t
        0x45t
        0x40t
        -0x10t
        0x19t
        -0x80t
        0x8t
        0x48t
        -0x21t
        -0x8t
        0x28t
        -0x40t
        -0x34t
        -0x8t
        0x0t
        -0x30t
        -0x34t
        -0x8t
        0x4t
        0x20t
        -0x34t
        -0x8t
        0x8t
        0x30t
        0x63t
        0x46t
        0x5t
        0x4at
        -0x34t
        -0x8t
        0xct
        0x20t
        0x4at
        0x46t
        0x4at
        0x46t
        -0x21t
        -0x8t
        0x4t
        -0x10t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public createDirectJump(J)[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 31
    fill-array-data v0, :array_0

    long-to-int p2, p1

    .line 35
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x4

    invoke-static {p2, p1, v0, v1}, Lme/weishu/epic/art/arch/Thumb2;->writeInt(ILjava/nio/ByteOrder;[BI)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x21t
        -0x8t
        0x0t
        -0x10t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Thumb2"

    return-object v0
.end method

.method public sizeOfBridgeJump()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public sizeOfDirectJump()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public toMem(J)J
    .locals 2

    const-wide/16 v0, -0x2

    and-long/2addr p1, v0

    return-wide p1
.end method

.method public toPC(J)J
    .locals 2

    .line 114
    invoke-virtual {p0, p1, p2}, Lme/weishu/epic/art/arch/Thumb2;->toMem(J)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    return-wide p1
.end method
