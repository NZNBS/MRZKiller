.class Lde/robv/android/xposed/DexCreator;
.super Ljava/lang/Object;
.source "DexCreator.java"


# static fields
.field public static DALVIK_CACHE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "dalvik-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lde/robv/android/xposed/DexCreator;->DALVIK_CACHE:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/DexCreator;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/DexCreator;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 110
    array-length p1, v3

    array-length v4, p0

    add-int/2addr p1, v4

    neg-int v4, p1

    and-int/lit8 v4, v4, 0x3

    add-int/2addr p1, v4

    .line 114
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v6, "dex\n035\u0000"

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v6, 0x18

    new-array v6, v6, [B

    .line 118
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit16 v6, p1, 0xfc

    .line 119
    invoke-static {v5, v6}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/16 v6, 0x70

    .line 120
    invoke-static {v5, v6}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const v7, 0x12345678

    .line 121
    invoke-static {v5, v7}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 122
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 123
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    add-int/lit16 v7, p1, 0xa4

    .line 124
    invoke-static {v5, v7}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/4 v8, 0x2

    .line 125
    invoke-static {v5, v8}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 126
    invoke-static {v5, v6}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 127
    invoke-static {v5, v8}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/16 v9, 0x78

    .line 128
    invoke-static {v5, v9}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 129
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 130
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 131
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 132
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 133
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 134
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 135
    invoke-static {v5, v1}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/16 v10, 0x80

    .line 136
    invoke-static {v5, v10}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    add-int/lit8 v11, p1, 0x5c

    .line 137
    invoke-static {v5, v11}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/16 v11, 0xa0

    .line 138
    invoke-static {v5, v11}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 141
    invoke-static {v5, v11}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    if-eqz v0, :cond_1

    .line 142
    array-length v12, v3

    goto :goto_1

    :cond_1
    array-length v12, p0

    :goto_1
    add-int/2addr v12, v11

    invoke-static {v5, v12}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 145
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 146
    invoke-static {v5, v1}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    xor-int/lit8 v12, v0, 0x1

    .line 149
    invoke-static {v5, v12}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 150
    invoke-static {v5, v1}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 151
    invoke-static {v5, v0}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 152
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/4 v12, -0x1

    .line 153
    invoke-static {v5, v12}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 154
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 155
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 156
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    if-eqz v0, :cond_2

    move-object v12, v3

    goto :goto_2

    :cond_2
    move-object v12, p0

    .line 159
    :goto_2
    invoke-virtual {v5, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz v0, :cond_3

    move-object v3, p0

    .line 160
    :cond_3
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 161
    new-array p0, v4, [B

    invoke-virtual {v5, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 164
    invoke-static {v5, v2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    const/4 p0, 0x7

    .line 167
    invoke-static {v5, p0}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 168
    invoke-static {v5, v2, v1, v2}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    .line 169
    invoke-static {v5, v1, v8, v6}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    .line 170
    invoke-static {v5, v8, v8, v9}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    const/4 p0, 0x6

    .line 171
    invoke-static {v5, p0, v1, v10}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    const/16 p0, 0x2002

    .line 172
    invoke-static {v5, p0, v8, v11}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    const/16 p0, 0x1003

    add-int/2addr p1, v11

    .line 173
    invoke-static {v5, p0, v1, p1}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    const/16 p0, 0x1000

    .line 174
    invoke-static {v5, p0, v1, v7}, Lde/robv/android/xposed/DexCreator;->writeMapItem(Ljava/io/OutputStream;III)V

    .line 176
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 177
    invoke-static {p0}, Lde/robv/android/xposed/DexCreator;->updateSignature([B)V

    .line 178
    invoke-static {p0}, Lde/robv/android/xposed/DexCreator;->updateChecksum([B)V

    return-object p0
.end method

.method public static ensure(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 59
    invoke-static {v0, p1, p2}, Lde/robv/android/xposed/DexCreator;->matches([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 69
    :goto_0
    invoke-static {p1, p2}, Lde/robv/android/xposed/DexCreator;->create(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 70
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-object p0
.end method

.method public static ensure(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lde/robv/android/xposed/DexCreator;->getDefaultFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lde/robv/android/xposed/DexCreator;->ensure(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static ensure(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "xposed.dummy."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SuperClass"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lde/robv/android/xposed/DexCreator;->ensure(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create a superclass for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not extend "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Lde/robv/android/xposed/DexCreator;->DALVIK_CACHE:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xposed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dex"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static matches([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/DexCreator;->stringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/DexCreator;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 p2, 0xa0

    .line 86
    array-length v4, v3

    add-int/2addr v4, p2

    array-length v5, p1

    add-int/2addr v4, v5

    array-length v5, p0

    if-lt v4, v5, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, p1

    .line 90
    :goto_1
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-byte v7, v4, v6

    add-int/lit8 v8, p2, 0x1

    .line 91
    aget-byte p2, p0, p2

    if-eq p2, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move p2, v8

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    move-object v3, p1

    .line 96
    :cond_5
    array-length p1, v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_7

    aget-byte v4, v3, v0

    add-int/lit8 v5, p2, 0x1

    .line 97
    aget-byte p2, p0, p2

    if-eq p2, v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move p2, v5

    goto :goto_3

    :cond_7
    return v1
.end method

.method private static stringToBytes(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lde/robv/android/xposed/DexCreator;->writeUleb128(Ljava/io/OutputStream;I)V

    const-string v1, "UTF-8"

    .line 229
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 p0, 0x0

    .line 230
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 231
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static updateChecksum([B)V
    .locals 3

    .line 195
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 196
    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 197
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    int-to-byte v0, v0

    const/16 v2, 0x8

    .line 198
    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v2, 0x9

    .line 199
    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v2, 0xa

    .line 200
    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/16 v1, 0xb

    .line 201
    aput-byte v0, p0, v1

    return-void
.end method

.method private static updateSignature([B)V
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 185
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 186
    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    .line 187
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 189
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    .line 214
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    .line 215
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    .line 216
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeMapItem(Ljava/io/OutputStream;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-static {p0, p1}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 221
    invoke-static {p0, p2}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    .line 222
    invoke-static {p0, p3}, Lde/robv/android/xposed/DexCreator;->writeInt(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private static writeUleb128(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 206
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
