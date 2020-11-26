.class Lme/weishu/epic/art/method/Offset;
.super Ljava/lang/Object;
.source "Offset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/weishu/epic/art/method/Offset$BitWidth;
    }
.end annotation


# static fields
.field static ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset; = null

.field static ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset; = null

.field static ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset; = null

.field private static final TAG:Ljava/lang/String; = "Offset"


# instance fields
.field private length:Lme/weishu/epic/art/method/Offset$BitWidth;

.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 53
    invoke-static {}, Lme/weishu/epic/art/method/Offset;->initFields()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initFields()V
    .locals 16

    .line 112
    new-instance v0, Lme/weishu/epic/art/method/Offset;

    invoke-direct {v0}, Lme/weishu/epic/art/method/Offset;-><init>()V

    sput-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    .line 113
    new-instance v0, Lme/weishu/epic/art/method/Offset;

    invoke-direct {v0}, Lme/weishu/epic/art/method/Offset;-><init>()V

    sput-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    .line 114
    new-instance v0, Lme/weishu/epic/art/method/Offset;

    invoke-direct {v0}, Lme/weishu/epic/art/method/Offset;-><init>()V

    sput-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    .line 116
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v1, Lme/weishu/epic/art/method/Offset$BitWidth;->DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v0, v1}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    invoke-static {}, Lcom/taobao/android/dexposed/utility/Runtime;->is64Bit()Z

    move-result v1

    const-wide/16 v2, 0xc

    const-string v8, " is not supported now : ("

    const-string v9, "API LEVEL: "

    const-wide/16 v10, 0x18

    const-wide/16 v14, 0x4

    const-wide/16 v6, 0x28

    const-wide/16 v12, 0x20

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v4, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v1, v4}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 122
    sget-object v1, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v4, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v1, v4}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    const-wide/16 v4, 0x30

    packed-switch v0, :pswitch_data_0

    .line 164
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :pswitch_1
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 127
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v10, v11}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 128
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v14, v15}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 132
    :pswitch_2
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v6, v7}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 133
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 134
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v14, v15}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 138
    :pswitch_3
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v4, v5}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 139
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v6, v7}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 140
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v14, v15}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 143
    :pswitch_4
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v4, v5}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 144
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v6, v7}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 145
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v2, v3}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 148
    :pswitch_5
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x34

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 149
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 150
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v6, v7}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 154
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v1, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v0, v1}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 155
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 156
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v1, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v0, v1}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 157
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x38

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 160
    :pswitch_7
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 161
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 167
    :cond_0
    sget-object v1, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v4, Lme/weishu/epic/art/method/Offset$BitWidth;->DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v1, v4}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 168
    sget-object v1, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v4, Lme/weishu/epic/art/method/Offset$BitWidth;->DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v1, v4}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    packed-switch v0, :pswitch_data_1

    .line 210
    :pswitch_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :pswitch_9
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v10, v11}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 173
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 174
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v14, v15}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto/16 :goto_0

    .line 178
    :pswitch_a
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 179
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v10, v11}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 180
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v14, v15}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto :goto_0

    :pswitch_b
    const-wide/16 v1, 0x1c

    .line 184
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 185
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 186
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v14, v15}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto :goto_0

    .line 189
    :pswitch_c
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v4, 0x24

    invoke-virtual {v0, v4, v5}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 190
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 191
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v2, v3}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto :goto_0

    .line 194
    :pswitch_d
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 195
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v6, v7}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 196
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto :goto_0

    .line 199
    :pswitch_e
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v6, v7}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 200
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v1, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v0, v1}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 201
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 202
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_JNI_ENTRY_OFFSET:Lme/weishu/epic/art/method/Offset;

    sget-object v1, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v0, v1}, Lme/weishu/epic/art/method/Offset;->setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V

    .line 203
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x38

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    goto :goto_0

    .line 206
    :pswitch_f
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_QUICK_CODE_OFFSET:Lme/weishu/epic/art/method/Offset;

    invoke-virtual {v0, v12, v13}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    .line 207
    sget-object v0, Lme/weishu/epic/art/method/Offset;->ART_ACCESS_FLAG_OFFSET:Lme/weishu/epic/art/method/Offset;

    const-wide/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Lme/weishu/epic/art/method/Offset;->setOffset(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_f
        :pswitch_8
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public static read(JLme/weishu/epic/art/method/Offset;)J
    .locals 2

    .line 87
    iget-wide v0, p2, Lme/weishu/epic/art/method/Offset;->offset:J

    add-long/2addr p0, v0

    .line 88
    iget-object v0, p2, Lme/weishu/epic/art/method/Offset;->length:Lme/weishu/epic/art/method/Offset$BitWidth;

    iget v0, v0, Lme/weishu/epic/art/method/Offset$BitWidth;->width:I

    invoke-static {p0, p1, v0}, Lme/weishu/epic/art/EpicNative;->get(JI)[B

    move-result-object p0

    .line 89
    iget-object p1, p2, Lme/weishu/epic/art/method/Offset;->length:Lme/weishu/epic/art/method/Offset$BitWidth;

    sget-object p2, Lme/weishu/epic/art/method/Offset$BitWidth;->DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    if-ne p1, p2, :cond_0

    .line 90
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0

    .line 92
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static write(JLme/weishu/epic/art/method/Offset;J)V
    .locals 2

    .line 97
    iget-wide v0, p2, Lme/weishu/epic/art/method/Offset;->offset:J

    add-long/2addr p0, v0

    .line 99
    iget-object p2, p2, Lme/weishu/epic/art/method/Offset;->length:Lme/weishu/epic/art/method/Offset$BitWidth;

    sget-object v0, Lme/weishu/epic/art/method/Offset$BitWidth;->DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    if-ne p2, v0, :cond_1

    const-wide v0, 0xffffffffL

    cmp-long p2, p3, v0

    if-gtz p2, :cond_0

    const/4 p2, 0x4

    .line 103
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    long-to-int p4, p3

    invoke-virtual {p2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    goto :goto_0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "overflow may occur"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p2, 0x8

    .line 106
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 108
    :goto_0
    invoke-static {p2, p0, p1}, Lme/weishu/epic/art/EpicNative;->put([BJ)V

    return-void
.end method


# virtual methods
.method public getLength()Lme/weishu/epic/art/method/Offset$BitWidth;
    .locals 1

    .line 79
    iget-object v0, p0, Lme/weishu/epic/art/method/Offset;->length:Lme/weishu/epic/art/method/Offset$BitWidth;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lme/weishu/epic/art/method/Offset;->offset:J

    return-wide v0
.end method

.method public setLength(Lme/weishu/epic/art/method/Offset$BitWidth;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lme/weishu/epic/art/method/Offset;->length:Lme/weishu/epic/art/method/Offset$BitWidth;

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lme/weishu/epic/art/method/Offset;->offset:J

    return-void
.end method
