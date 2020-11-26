.class public Lme/weishu/epic/art/arch/Arm64_2;
.super Lme/weishu/epic/art/arch/ShellCode;
.source "Arm64_2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lme/weishu/epic/art/arch/ShellCode;-><init>()V

    return-void
.end method


# virtual methods
.method public createBridgeJump(JJJJ)[B
    .locals 3

    const/16 v0, 0x58

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_0

    .line 94
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x38

    invoke-static {p1, p2, v1, v0, v2}, Lme/weishu/epic/art/arch/Arm64_2;->writeLong(JLjava/nio/ByteOrder;[BI)V

    .line 96
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 p2, 0x40

    invoke-static {p3, p4, p1, v0, p2}, Lme/weishu/epic/art/arch/Arm64_2;->writeLong(JLjava/nio/ByteOrder;[BI)V

    .line 98
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 p2, 0x48

    invoke-static {p5, p6, p1, v0, p2}, Lme/weishu/epic/art/arch/Arm64_2;->writeLong(JLjava/nio/ByteOrder;[BI)V

    .line 100
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 p2, 0x50

    invoke-static {p7, p8, p1, v0, p2}, Lme/weishu/epic/art/arch/Arm64_2;->writeLong(JLjava/nio/ByteOrder;[BI)V

    return-object v0

    :array_0
    .array-data 1
        0x1ft
        0x20t
        0x3t
        -0x2bt
        0x31t
        0x2t
        0x0t
        0x58t
        0x1ft
        0x0t
        0x11t
        -0x15t
        0x61t
        0x2t
        0x0t
        0x54t
        0x40t
        0x1t
        0x0t
        0x58t
        -0xft
        0x1t
        0x0t
        0x58t
        -0x10t
        0x3t
        0x0t
        -0x6ft
        0x30t
        0x2t
        0x0t
        -0x7t
        0x22t
        0x6t
        0x0t
        -0x7t
        0x30t
        0x1t
        0x0t
        0x58t
        0x30t
        0xat
        0x0t
        -0x7t
        -0x1et
        0x3t
        0x11t
        -0x56t
        -0x6ft
        0x0t
        0x0t
        0x58t
        0x20t
        0x2t
        0x1ft
        -0x2at
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
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 30
    fill-array-data v0, :array_0

    .line 36
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v2, 0x8

    invoke-static {p1, p2, v1, v0, v2}, Lme/weishu/epic/art/arch/Arm64_2;->writeLong(JLjava/nio/ByteOrder;[BI)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x50t
        0x0t
        0x0t
        0x58t
        0x0t
        0x2t
        0x1ft
        -0x2at
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

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "64-bit ARM(Android M)"

    return-object v0
.end method

.method public sizeOfBridgeJump()I
    .locals 1

    const/16 v0, 0x58

    return v0
.end method

.method public sizeOfDirectJump()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public toMem(J)J
    .locals 0

    return-wide p1
.end method

.method public toPC(J)J
    .locals 0

    return-wide p1
.end method
