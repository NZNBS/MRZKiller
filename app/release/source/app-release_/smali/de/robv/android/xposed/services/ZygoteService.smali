.class public final Lde/robv/android/xposed/services/ZygoteService;
.super Lde/robv/android/xposed/services/BaseService;
.source "ZygoteService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lde/robv/android/xposed/services/BaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public native checkFileAccess(Ljava/lang/String;I)Z
.end method

.method public readFile(Ljava/lang/String;IIJJ)Lde/robv/android/xposed/services/FileResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/ZygoteService;->statFile(Ljava/lang/String;)Lde/robv/android/xposed/services/FileResult;

    move-result-object v0

    .line 31
    iget-wide v1, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    iget-wide p4, v0, Lde/robv/android/xposed/services/FileResult;->mtime:J

    cmp-long v1, p6, p4

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    .line 36
    new-instance p7, Lde/robv/android/xposed/services/FileResult;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/ZygoteService;->readFile(Ljava/lang/String;)[B

    move-result-object p2

    iget-wide p3, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    iget-wide p5, v0, Lde/robv/android/xposed/services/FileResult;->mtime:J

    move-object p1, p7

    invoke-direct/range {p1 .. p6}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p7

    :cond_1
    const-string p4, " for "

    const-string p5, "offset "

    if-lez p2, :cond_3

    int-to-long p6, p2

    .line 39
    iget-wide v1, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    cmp-long v3, p6, v1

    if-gez v3, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >= size "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    invoke-virtual {p6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    :goto_0
    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    if-lez p3, :cond_6

    add-int p6, p2, p3

    int-to-long p6, p6

    .line 45
    iget-wide v1, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    cmp-long v3, p6, v1

    if-gtz v3, :cond_5

    goto :goto_1

    .line 46
    :cond_5
    new-instance p6, Ljava/lang/IllegalArgumentException;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + length "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " > size "

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    invoke-virtual {p7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p6, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p6

    :cond_6
    :goto_1
    if-gtz p3, :cond_7

    .line 48
    iget-wide p3, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    int-to-long p5, p2

    sub-long/2addr p3, p5

    long-to-int p3, p3

    .line 51
    :cond_7
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/ZygoteService;->readFile(Ljava/lang/String;)[B

    move-result-object p1

    .line 52
    new-instance p4, Lde/robv/android/xposed/services/FileResult;

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-wide v3, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    iget-wide v5, v0, Lde/robv/android/xposed/services/FileResult;->mtime:J

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p4
.end method

.method public readFile(Ljava/lang/String;JJ)Lde/robv/android/xposed/services/FileResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/ZygoteService;->statFile(Ljava/lang/String;)Lde/robv/android/xposed/services/FileResult;

    move-result-object v0

    .line 22
    iget-wide v1, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    iget-wide p2, v0, Lde/robv/android/xposed/services/FileResult;->mtime:J

    cmp-long v1, p4, p2

    if-nez v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance p2, Lde/robv/android/xposed/services/FileResult;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/ZygoteService;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    iget-wide v4, v0, Lde/robv/android/xposed/services/FileResult;->size:J

    iget-wide v6, v0, Lde/robv/android/xposed/services/FileResult;->mtime:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p2
.end method

.method public native readFile(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native statFile(Ljava/lang/String;)Lde/robv/android/xposed/services/FileResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
