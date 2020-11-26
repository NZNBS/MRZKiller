.class public Lcom/mrz/stuff/b;
.super Ljava/lang/Object;
.source "m"


# static fields
.field private static ALLATORIxDEMO:Ljava/util/concurrent/atomic/AtomicReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final F:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final j:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 391
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/mrz/stuff/b;->ALLATORIxDEMO:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x176bbe33e27L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "ragpe|s\u0018"

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic ALLATORIxDEMO(Ljava/io/InputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/mrz/stuff/b;->ALLATORIxDEMO:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    invoke-virtual {p0, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    .line 501
    :cond_1
    sget-object p0, Lcom/mrz/stuff/b;->ALLATORIxDEMO:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    int-to-long v0, v2

    return-wide v0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 599
    invoke-static {}, Lcom/mrz/stuff/b;->ALLATORIxDEMO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 571
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method

.method public static ALLATORIxDEMO()Ljava/lang/String;
    .locals 1

    const-string v0, "\u0002ZT\u0000\u0007\u000c\u0001\u000c\u0006\u000f\u0002\u000c\u0007[\u0007\u000bU\u0008\u0000\u0000\u0000\rS\\S[\u0007\rQ_T\n\u0007\u0008V\u000bUX\u0003\u000b\u0003[S\u0001Q\u0000\u0004\\\u0004\rSXV\\U\tUZ\u0005_Q\u0000RXT\u000b\u0000\t\u0001X\u0005\u0001\u0004\t\u000f\u000b\u0007\n\u0003\u000e\u0004\t\u000f\u000b\u0007\u000b\u0005_V\t\u0007\n\u0007\u000b\u0007\u0008\u0007\u000b\u0007\u000b\u0007\r\u0003\u000fS\u000e\u0007\u000fU\u000e\u0004\t\u0007]\u0007\u000f\u0007\u0000\u0005X\u000f\u000f\u0003\u0001\u000f\u000fQ\u000e\u0007]\u0007\u0008\u0007\u0008\u0007[\u0007\u000c\u0007\t\u0004\t\u0002\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\u000f\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\u0001\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\u000e\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007X\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007[\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\n\u0006\n\u0007\n\u0000\u000e\u0001\u000c\u0000\u000b\u0004\t\u0006\\\u0006\u000e\u0007]\u0004\u0008\u0004\u0000\u0004\t\u0004\u0000\u0004\t\u0004\u000c\u0004\u0008\u0004\u000c\u0004\r\u0004\u0000\u0004\t\u0004\u000f\u0002X\u0006\u000e\u0007]\u0004\r\u0004\r\u0004\t\u0004\u0001\u0004\u000b\u0004\u0000\u0004\u0008\u0004\u000c\u0004\r\u0004\u0000\u0004\t\u0004\u000f\u0002X\u0004\t\u0002\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\u000f\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\u0001\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\u000e\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007X\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007[\u0006\n\u0007\n\u0001\u0008\u0000\n\u0001\r\u0004\u0008\u0007Z\u0004\t\u0007X\u0007\u000f\u0007\n\u0002\u000c\u0007\r\u0007\n\u0006\n\u0007\n\u0000\u000e\u0001\u000c\u0000\u000b\u0004\t\u000f\u000b\u0007\u0008\u0005\u000b\u0004\t\u0007]\u0007\u000f\u0007\u0000\u0005X\u000f\u000f\u0003\u0001\u000f\u000fQ\u000e\u0007]\u0007\u0008\u0007\u0008\u0007\u0008\u0007\u000c\u0007\t\u0007\n\u000f\u000b\u0007\u0008\u0007_\u0007\t\u0004\t\u000f\u000b\u0007\u0008\u0007X\u0007\u000b\u000f\u000b\u0007\u0008\u0007\u0008\u0007\tU\u000eT[S]\u0007ZS\u000c\u0006\u000b\u0007\u0000\u0006_\u0007\u000e\u0003\u000cR\u0001\u0006\u0001\u0001\n\u000e\\Q\\\u0006[\u000e_\u0001\u0000\u0007\u000bU\u0001R\u000f\u0007\u0008QZ\u0006\u0001T\u000bS\\\u0000\u000fUZVX\u0002\u0001\u000fZT\u000e\u0007]\u0000[\u0006\u0000\u000f\rQ\nT\u0001\u000e\u000fTZ\u000e\u000f\u0006\u0008\u0002_\u000f\t\u0002[\u0007\u000e\u0003\u000fU\u000f\u0002\\VZU[\u0004XR\u0008Q\u0000\u0007ZU\\\u0000\u000f\u000eZ\u0001\u0000U\u000cQ\r\u0002\t\u0000_\u0006\n\u0007[V[V\r\u0004\r\u0002X\u0005]S[\u000e\\\u000f\\U_V]\u0004XS\u000e\u0003\u000e\u0002\nV\tV\u000fU\u0000\u0000\u000c\u000f[\u0007\u000c\u0000\\\u000e\u0008V\\\u0007\\\u0001\u0008\u0002\u0008\u0000_\u0001[T\tR\t\u0007\u0001V\r\u0004\t\u0004X\u000f\u0008\u000f\u000cS\n\u0006\n\u0000\n\u0000X\u0000\r\u0002\u000c\u0003[Q\u0008\u0001\u000bQ\rV]\u0003\u0001S\u000e\u0001\\R\u000b\u0004\t\u000e\\\u0006_\u000f\u0000U]R_\u0000\u000c\u0006\u0000\u0000\n\u0002\u0001\u0007ZSZ\u0007]S_\u0005\u000eS]T\u000e\u0003\tT\u000f\u0001\u000c\u0003\\\u0000\u0008\u0004\r\u0001Z\u0004[\u0000\u0001\u0006\u0000Q\u0000\u0006ZV\tT\n\u0000XU\u0000TX\u0003]\u000eZ\u0000\u000f\u0000\u000e\u0001Z\u0005\u000e\u0005\t\u0007[\u0005\u000c\u0005\u0008T[\u0004\u0001\u000e\u000bV\u0008T\u0000\u0005\tT\u000bQ\tR\u0008S\t\u0005\u000fVX\u0006\\\u000e\u000fQ\n\u000e\u000fR\u000f\u0007\u0008\u0007\u0001\u0001\u0008\u0000[\u0002\\\u0002\u000bS\u000eU]Q_\u0007\rR\nU]S\u000bU\u0000\u0002\u0001\u000e\u000c\u0006\u000c\u000e\u000e\u0002\t\u0003\u0000S\tV\u000c\u0005\u000cT\t\u0002\u000f\u0002[S\u000e\u0003Z\u0005\u0001\u0003\u000e\u0005\n\u0002[V\u0008\u0002\rV\u000cV\u000e\u0003\rS_V]\u0007_Q\r\u0000\u000eS\u000b\u0003_\u0005\u000e\u0002X\u0007\rR\u000fSZ\u0003_\u0006X\u000fZS\n\u000e_V\u0001T\\V\u0000\u0005ZV\u0008UX\u000e[Q\tQ\u000e\u0002\u000eS\nU[Q]\u0004\u0000\u0006\u0000S\u000fQ\u000f\u0002\\S\u000cR\u0008Q\t\u0005X\u0005\u0000U\r\u000f\u0000\u0007\u000b\u0007\n\u0007\u0008\u0007\t\u0007\u0008V\n\u0005\u0008\u0004\t\u0006_\u0004\t\u0006]\u0007\u000f\u0007\n\u0002\u000c\u0006]\u0007\\\u0007\r\u0006\u000f\u0007\r\u0006\r\u0004]\u0000\u000bR]\u000e\u000fV\u0008\u0003_U\\R[RXR\\\u0001\\VZR\\R\\SX\u000e\u000c\u0000]V\u0000\u0001\u0008\u0005\u0000\u0004\t\u0007]\u0007\u000f\u0007\u0000\u0005X\u000f\u000f\u0003\u0001\u000f\u000fQ\u000e\u0007]\u0007\u0008\u0007\u0008\u0007[\u0007\u000c\u0007\t\u0007\n\u000f\u000b\u0007\u0008\u0007\u0008\u0007\t\u0001\\\u0003\u0008Q\u000eS\\V\u000f\u0005[\u0007\r\u0000\r\u0003\u0000\u0006_Q\t\u0000\u0000S\u000c\u0004Z\u000f\u000b\u0002\t\u0002\u0008V\t\u0004\u000f\u0001\u000eV\\\u0000_\u0003[T\u000f\u0003]\u000f\u000eR\rS\u000c\u0007_\u0005\u0008S\u000e\u0005]\u000e\u0000\u0005_S\u000eT\r\u0004\r\u000f\u000fV\u000fR\r\u0003\u000c\u000fZ\u0002X\u0000[R\u000b\u0004\u000cS\t\u0003\nUZ\u0004]T\u0001S\u000b\u0003\u0000Q\u000c\u0000\u000c\u0004\u000bR\u000c\u0000\u000fR[\u0002\\Q_R\u0001Q\r\u0001\rV\u0001\u0003\u0000S\t\u000eZ\u000f\u000b\u0006\n\u0006\u000e\u0005[\u0000X\u0005\u000c\u0007\u0001\u000e\u000f\u0007\u000b\u0007[\u0004\u0001TZ\u0005\\\u0001XQ\u0001\u0003\u0008\u0001\u0008\u0006\u000c\u0000\u0001\u0000\u000fU\u0008\u0006X\u0003ZV\u0001T\t\u000f\u0000T\u0001U\r\u0005\t\u0000\u000b\u000f]Q]U]\u0001\u000cS]\u0003\u0001\u0002ZS\u000b\u000f\u0008\u0004\u0000V_\u0006\r\u0002Z\u0000\u000eR\tRZ\u0003\u000bV\rQ_VX\u0004\r\u0005\nV\r\u0006_U\u0008S\u000eT[\u000fZ\u0004]T\u0000\u0007\u000f\u0005_\u0003\u000bT\u0008\u0002\u000b\u0000ZVZ\u0006Z\u0007\tU\u0001R\u000b\u0004Z\u000e[\u0000\r\u000e\u0000U\n\u0002\u000e\u0006\t\u0001\u000c\u0006\tTXTX\u0005]\u0006\u0001R\u000fT\u000fSX\u0000\r\u0007\u000cV\u0001\u0003X\u0001\n\u0002\\R\u0008\u0002]\u0005[\u000e\u000fQX\u0003\u000fQ\u000f\u0007\u000c\u000f_S\r\u0001\\\u0007\n\u0004\\\u0002\t\u0001_\u0005\u0008\u0000\u000e\u000f\u0001\u0006\t\u0006\u000cQ\r\u0005\u000b\u000e\u0008Q\u000bT\u0008\u0006\u000bS[V\nT\u000bQ\u000eT\nTZ\u0003[\u0007ZU\r\u0001\u000b\u000f_U\t\u0006[\u0006\u000b\u000e_\u0005\u000c\u0003\n\u0005_\u0000\u0000\u0004X\u0000XU\u000fU[\u000f[\u0002\nT_\u0006_\u0003\u0001T\rTX\u0007\u000b\u000fZS\u000f\u0007\u0001U\u000fT]\u0007_\u000e\nVZV\u000c\u0002\u000eQ\r\u0005\r\u0000\u000f\u0003\u000b\u0003_\u0001XS\u000e\u0000_\u0007[\u0007\u0000\u0000\u000f\u0000\u000e\u0003Z\u0006\u0000\u000f\\S\u0000Q[Q\u000e\u0007\u0000RXS\\U\\V[T\u0001\u000eXT\\\u000f\u000e\u0007\u0008xIRWdj{kdxgLUU^Z|\\NBZVSL[LD\u0004U\u000eT[S]\u0007ZS\u000c\u0006\u000b\u0007\u0000\u0006_\u0007\u000e\u0003\u000cR\u0001\u0006\u0001\u0001\n\u000e\\Q\\\u0006[\u000e_\u0001\u0000\u0007\u000bU\u0001R\u000f\u0007\u0008QZ\u0006\u0001T\u000bS\\\u0000\u000fUZVX\u0002\u0001\u000fZT\u000e\u0007]\u0000[\u0006\u0000\u000f\rQ\nT\u0001\u000e\u000fTZ\u000e\u000f\u0006\u0008\u0002_\u000f\t\u0002[\u0007\u000e\u0003\u000fU\u000f\u0002\\VZU[\u0004XR\u0008Q\u0000\u0007ZU\\\u0000\u000f\u000eZ\u0001\u0000U\u000cQ\r\u0002\t\u0000_\u0006\n\u0007[V[V\r\u0004\r\u0002X\u0005]S[\u000e\\\u000f\\U_V]\u0004XS\u000e\u0003\u000e\u0002\nV\tV\u000fU\u0000\u0000\u000c\u000f[\u0007\u000c\u0000\\\u000e\u0008V\\\u0007\\\u0001\u0008\u0002\u0008\u0000_\u0001[T\tR\t\u0007\u0001V\r\u0004\t\u0004X\u000f\u0008\u000f\u000cS\n\u0006\n\u0000\n\u0000X\u0000\r\u0002\u000c\u0003[Q\u0008\u0001\u000bQ\rV]\u0003\u0001S\u000e\u0001\\R\u000b\u0004\t\u000e\\\u0006_\u000f\u0000U]R_\u0000\u000c\u0006\u0000\u0000\n\u0002\u0001\u0007ZSZ\u0007]S_\u0005\u000eS]T\u000e\u0003\tT\u000f\u0001\u000c\u0003\\\u0000\u0008\u0004\r\u0001Z\u0004[\u0000\u0001\u0006\u0000Q\u0000\u0006ZV\tT\n\u0000XU\u0000TX\u0003]\u000eZ\u0000\u000f\u0000\u000e\u0001Z\u0005\u000e\u0005\t\u0007[\u0005\u000c\u0005\u0008T[\u0004\u0001\u000e\u000bV\u0008T\u0000\u0005\tT\u000bQ\tR\u0008S\t\u0005\u000fVX\u0006\\\u000e\u000fQ\n\u000e\u000fR\u000f\u0007\u0008\u0007\u0001\u0001\u0008\u0000[\u0002\\\u0002\u000bS\u000eU]Q_\u0007\rR\nU]S\u000bU\u0000\u0002\u0001\u000e\u000c\u0006\u000c\u000e\u000e\u0002\t\u0003\u0000S\tV\u000c\u0005\u000cT\t\u0002\u000f\u0002[S\u000e\u0003Z\u0005\u0001\u0003\u000e\u0005\n\u0002[V\u0008\u0002\rV\u000cV\u000e\u0003\rS_V]\u0007_Q\r\u0000\u000eS\u000b\u0003_\u0005\u000e\u0002X\u0007\rR\u000fSZ\u0003_\u0006X\u000fZS\n\u000e_V\u0001T\\V\u0000\u0005ZV\u0008UX\u000e[Q\tQ\u000e\u0002\u000eS\nU[Q]\u0004\u0000\u0006\u0000S\u000fQ\u000f\u0002\\S\u000cR\u0008Q\t\u0005X\u0005\u0000U\r\u000f\u0000\u001bIB[[PT|OIXWRWC\u0004\u0006\t\u0007\t\u0006D"

    .line 373
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 154
    invoke-static {p0}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 67
    :cond_0
    invoke-static {p0, p1, v1}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 480
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static ALLATORIxDEMO(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 225
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 170
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 431
    :catch_0
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 330
    invoke-static {p0}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 41
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 354
    array-length v1, p1

    rem-int v1, v0, v1

    aget-char v1, p1, v1

    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    int-to-char v1, v1

    add-int/lit8 v2, v0, 0x1

    aput-char v1, p0, v0

    move v0, v2

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static ALLATORIxDEMO([B)Ljava/lang/String;
    .locals 6

    const-string v0, "F&D$B\"@ N.\u0017u\u0015s\u0013q"

    .line 138
    invoke-static {v0}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 81
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 21
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 29
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 426
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 180
    aget-char v3, v0, v3

    add-int/lit8 v2, v2, 0x1

    aput-char v3, v1, v4

    goto :goto_0

    .line 471
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static synthetic ALLATORIxDEMO([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "b\u0018|\u0018x\u0001y"

    .line 410
    invoke-static {v0}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 418
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 213
    new-instance p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lcom/mrz/stuff/b;->ALLATORIxDEMO([B)[C

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;)V
    .locals 0

    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 369
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    .line 152
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 375
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 93
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 355
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 9
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_3
    move-object v0, p0

    goto :goto_8

    :catch_2
    move-exception p2

    move-object p1, v0

    :goto_4
    move-object v0, p0

    goto :goto_5

    :catchall_2
    move-exception p2

    move-object p1, v0

    goto :goto_8

    :catch_3
    move-exception p2

    move-object p1, v0

    .line 442
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_2

    .line 93
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz p1, :cond_3

    .line 355
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    .line 9
    :goto_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-void

    :catchall_3
    move-exception p2

    :goto_8
    if-eqz v0, :cond_4

    .line 93
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception p0

    goto :goto_a

    :cond_4
    :goto_9
    if-eqz p1, :cond_5

    .line 355
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    .line 9
    :goto_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    :cond_5
    :goto_b
    throw p2
.end method

.method public static ALLATORIxDEMO(Ljava/io/File;)V
    .locals 4

    .line 279
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    invoke-static {v2}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Ljava/io/File;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 433
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 652
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 542
    new-instance p0, Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 635
    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 597
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 629
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 645
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 537
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 639
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 653
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 627
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 573
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 570
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 641
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 631
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 683
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 605
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 667
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 683
    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception p0

    .line 605
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void

    :goto_4
    if-eqz v0, :cond_6

    .line 683
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 605
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 581
    :cond_6
    :goto_5
    throw p1
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 82
    array-length v0, p0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 445
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 378
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static ALLATORIxDEMO()Z
    .locals 2

    .line 572
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXLYMR]"

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static ALLATORIxDEMO(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x2

    .line 304
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static ALLATORIxDEMO([B)[B
    .locals 5

    const-string v0, "te|xc"

    const/4 v1, 0x0

    .line 322
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "D%&.#[0S=G< FPB!"

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "xrj"

    invoke-static {v4}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "7R%83T48&\\5DCG\u0017s\u0012~\u0018p"

    .line 3
    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    .line 481
    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 339
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 118
    :goto_0
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u001ax\u0017s\u0013e2r\u0015e\u000fg\u000273E$X$7L7"

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception p0

    .line 69
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3E$X$7L7"

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic ALLATORIxDEMO([B)[C
    .locals 7

    .line 415
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 192
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 147
    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    mul-int/lit8 v5, v2, 0x2

    const/16 v6, 0xa

    if-lt v4, v6, :cond_0

    add-int/lit8 v4, v4, 0x61

    sub-int/2addr v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x30

    :goto_1
    int-to-char v4, v4

    .line 397
    aput-char v4, v1, v5

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v5, v5, 0x1

    if-lt v3, v6, :cond_1

    add-int/lit8 v3, v3, 0x61

    sub-int/2addr v3, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x30

    :goto_2
    int-to-char v3, v3

    add-int/lit8 v2, v2, 0x1

    .line 343
    aput-char v3, v1, v5

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static synthetic ALLATORIxDEMO(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 0

    .line 474
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    .line 389
    invoke-static {p0}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Ljava/io/InputStream;)J

    .line 280
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 54
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "D>V[%C!"

    .line 368
    invoke-static {v0}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 62
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 459
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/mrz/stuff/b;->ALLATORIxDEMO([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static C([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 114
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/content/Context;)V
    .locals 12

    const-string v0, "AndroidManifest.xml"

    const-string v1, "\u0014\u0005\u0016UXD\\\u0019XGR"

    const-string v2, "\u0014\u0006\u0016UXD\\\u0019XGR"

    const-string v3, "Ys\u0017c\u00178\u0017g\u00068"

    .line 238
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 156
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 148
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    .line 333
    :cond_2
    invoke-static {v6}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    const/4 v1, 0x0

    .line 182
    :try_start_1
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v4}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    if-nez v3, :cond_4

    .line 447
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 413
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 189
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 76
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    .line 48
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 294
    :cond_5
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Z3C7:?Y08"

    invoke-static {v8}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 244
    :cond_6
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    .line 259
    :cond_7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 120
    invoke-static {v2, v3}, Lcom/mrz/stuff/b;->ALLATORIxDEMO(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v3

    if-nez v3, :cond_a

    .line 102
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 261
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 404
    :cond_a
    array-length v5, v3

    if-nez v5, :cond_b

    .line 451
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 370
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_b
    if-nez v1, :cond_c

    move-object v1, v3

    goto :goto_2

    .line 494
    :cond_c
    array-length v5, v1

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_9

    aget-object v8, v1, v7

    .line 324
    array-length v9, v3

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_e

    aget-object v11, v3, v10

    if-eqz v8, :cond_d

    .line 227
    invoke-virtual {v8, v11}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v8, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_f

    .line 374
    array-length v8, v1

    array-length v9, v3

    if-eq v8, v9, :cond_10

    .line 420
    :cond_f
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 190
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 453
    :cond_11
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    if-eqz v1, :cond_13

    .line 340
    array-length v0, v1

    if-lez v0, :cond_13

    const/4 v0, 0x0

    .line 151
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 27
    aget-object v2, v1, v0

    .line 300
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    const-string v5, "ts\u000c"

    .line 38
    invoke-static {v5}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mrz/stuff/b;->ALLATORIxDEMO([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "%_7&"

    .line 161
    invoke-static {v7}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/mrz/stuff/b;->ALLATORIxDEMO([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    new-instance v8, Ljava/lang/String;

    invoke-static {v3}, Lcom/mrz/stuff/b;->ALLATORIxDEMO([B)[C

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([C)V

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {}, Lcom/mrz/stuff/b;->ALLATORIxDEMO()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "Z[PG[XXE]"

    .line 197
    invoke-static {v3}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    const-string v5, "\u0002r\u000ec"

    .line 61
    invoke-static {v5}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    const-string v5, "D?P8V\"B$R"

    const-string v7, "zXI^\\S\u0019\r\u0010"

    .line 449
    invoke-virtual {v3, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 55
    invoke-static {v7}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 422
    invoke-static {v5}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m_\\\u0017J^^YXCLE\\\u0017PD\u0019^WTVEKRZC\u0019\u0016\u0018cq~j\u0017ur|cq\u0016\u0018"

    invoke-static {v3}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 169
    :cond_13
    invoke-static {v6}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    .line 296
    :catch_0
    :try_start_2
    invoke-static {v6}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    return-void

    :catch_2
    move-exception p0

    .line 351
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_14
    return-void
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 362
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 492
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    .line 313
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 194
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    move-object v0, v1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p0, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p0, v0

    goto :goto_6

    :catch_3
    move-exception p1

    move-object p0, v0

    .line 144
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_1

    .line 232
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_4
    if-eqz p0, :cond_2

    .line 194
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    return-void

    .line 178
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-void

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v0, :cond_3

    .line 232
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_5
    move-exception p0

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz p0, :cond_4

    .line 194
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 178
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    :cond_4
    :goto_9
    throw p1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 456
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
