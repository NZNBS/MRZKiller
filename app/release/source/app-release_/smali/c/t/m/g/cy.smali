.class public final Lc/t/m/g/cy;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/cy$a;,
        Lc/t/m/g/cy$b;
    }
.end annotation


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/tencent/map/geolocation/TencentLocationListener;


# instance fields
.field private A:Z

.field private volatile B:J

.field private volatile C:I

.field private D:D

.field private E:I

.field private F:I

.field private G:I

.field private H:Lcom/tencent/map/geolocation/TencentLocation;

.field private I:Lcom/tencent/map/geolocation/TencentDistanceListener;

.field private J:J

.field private final K:Ljava/lang/Object;

.field private final L:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private M:Lc/t/m/g/dw;

.field private N:D

.field private O:D

.field private P:Lc/t/m/g/dw;

.field private Q:I

.field private R:J

.field private S:Lc/t/m/g/cy$b;

.field private T:Ljava/lang/String;

.field private volatile U:Z

.field private c:I

.field private d:Lc/t/m/g/cy$a;

.field private e:Z

.field private f:Lc/t/m/g/b;

.field private g:Lc/t/m/g/da;

.field private h:Z

.field private i:Lc/t/m/g/cx;

.field private j:Lc/t/m/g/dd;

.field private k:Lc/t/m/g/cv;

.field private l:Lc/t/m/g/cs;

.field private m:Lc/t/m/g/cz;

.field private n:Lc/t/m/g/db;

.field private o:Landroid/os/HandlerThread;

.field private volatile p:I

.field private q:Lc/t/m/g/dc;

.field private r:Lc/t/m/g/ck;

.field private s:Lc/t/m/g/dg;

.field private t:Lc/t/m/g/dk;

.field private u:Lc/t/m/g/dh;

.field private final v:Lc/t/m/g/ci;

.field private w:Lc/t/m/g/cj;

.field private x:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/map/geolocation/TencentLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 125
    sput-object v0, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "ERROR_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "ERROR_NO_CELL&WIFI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "DEFLECT_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    const/16 v1, 0x194

    const-string v2, "ERROR_SERVER_NOT_LOCATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    invoke-static {}, Lc/t/m/g/b$a;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/cf;->a(Ljava/util/HashMap;)V

    .line 137
    new-instance v0, Lc/t/m/g/cy$1;

    invoke-direct {v0}, Lc/t/m/g/cy$1;-><init>()V

    sput-object v0, Lc/t/m/g/cy;->b:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-void
.end method

.method public constructor <init>(Lc/t/m/g/ci;)V
    .locals 5

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 147
    iput v0, p0, Lc/t/m/g/cy;->c:I

    const-wide/16 v1, 0x0

    .line 176
    iput-wide v1, p0, Lc/t/m/g/cy;->z:J

    const/4 v3, 0x0

    .line 177
    iput-boolean v3, p0, Lc/t/m/g/cy;->A:Z

    .line 178
    iput-wide v1, p0, Lc/t/m/g/cy;->B:J

    .line 179
    iput v3, p0, Lc/t/m/g/cy;->C:I

    const-wide/16 v1, 0x0

    .line 180
    iput-wide v1, p0, Lc/t/m/g/cy;->D:D

    .line 181
    iput v3, p0, Lc/t/m/g/cy;->E:I

    .line 182
    iput v3, p0, Lc/t/m/g/cy;->F:I

    .line 183
    iput v3, p0, Lc/t/m/g/cy;->G:I

    .line 188
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lc/t/m/g/cy;->K:Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const/16 v1, 0x194

    .line 205
    iput v1, p0, Lc/t/m/g/cy;->Q:I

    .line 210
    sget-object v1, Lc/t/m/g/cy$b;->d:Lc/t/m/g/cy$b;

    iput-object v1, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    .line 213
    iput-boolean v3, p0, Lc/t/m/g/cy;->U:Z

    .line 216
    iput v3, p0, Lc/t/m/g/cy;->p:I

    .line 217
    iput-object p1, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    .line 218
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->isLoadLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "tencentloc"

    .line 220
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x3

    .line 222
    iput p1, p0, Lc/t/m/g/cy;->p:I

    return-void

    .line 228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    .line 229
    iget-object v1, v1, Lc/t/m/g/cj;->h:Ljava/lang/String;

    invoke-static {v1}, Lc/t/m/g/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lc/t/m/g/cy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->T:Ljava/lang/String;

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    .line 233
    iput p1, p0, Lc/t/m/g/cy;->p:I

    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    .line 238
    invoke-virtual {p1, p0}, Lc/t/m/g/ci;->a(Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lc/t/m/g/cl;->b()Lc/t/m/g/ck;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->r:Lc/t/m/g/ck;

    .line 243
    new-instance v1, Lc/t/m/g/dc;

    invoke-direct {v1}, Lc/t/m/g/dc;-><init>()V

    iput-object v1, p0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    .line 244
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    .line 247
    new-instance v1, Lc/t/m/g/cz;

    invoke-direct {v1, p1}, Lc/t/m/g/cz;-><init>(Lc/t/m/g/ci;)V

    iput-object v1, p0, Lc/t/m/g/cy;->m:Lc/t/m/g/cz;

    .line 248
    new-instance v1, Lc/t/m/g/db;

    invoke-direct {v1, p1}, Lc/t/m/g/db;-><init>(Lc/t/m/g/ci;)V

    iput-object v1, p0, Lc/t/m/g/cy;->n:Lc/t/m/g/db;

    .line 249
    iget-object v1, p1, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-static {v1}, Lc/t/m/g/cv;->a(Landroid/content/Context;)Lc/t/m/g/cv;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    .line 250
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 251
    new-instance v1, Lc/t/m/g/cs;

    iget-object v2, p1, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc/t/m/g/cs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    .line 254
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lc/t/m/g/cy;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 256
    iput-object v2, p0, Lc/t/m/g/cy;->f:Lc/t/m/g/b;

    .line 258
    invoke-direct {p0}, Lc/t/m/g/cy;->m()Lc/t/m/g/dd;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    .line 259
    invoke-virtual {p1}, Lc/t/m/g/ci;->e()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Lc/t/m/g/da;

    invoke-direct {v2, p1}, Lc/t/m/g/da;-><init>(Lc/t/m/g/ci;)V

    :goto_2
    iput-object v2, p0, Lc/t/m/g/cy;->g:Lc/t/m/g/da;

    new-array v1, v0, [Ljava/lang/Object;

    .line 260
    invoke-direct {p0}, Lc/t/m/g/cy;->l()Lc/t/m/g/cx;

    move-result-object v4

    iput-object v4, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    aput-object v4, v1, v3

    .line 257
    invoke-static {v2, v1}, Lc/t/m/g/b$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lc/t/m/g/cy;->e:Z

    goto :goto_4

    .line 262
    :cond_5
    iput-object v2, p0, Lc/t/m/g/cy;->g:Lc/t/m/g/da;

    .line 264
    invoke-direct {p0}, Lc/t/m/g/cy;->m()Lc/t/m/g/dd;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    .line 265
    invoke-virtual {p1}, Lc/t/m/g/ci;->e()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Lc/t/m/g/b;

    invoke-direct {v2, p1}, Lc/t/m/g/b;-><init>(Lc/t/m/g/ci;)V

    :goto_3
    iput-object v2, p0, Lc/t/m/g/cy;->f:Lc/t/m/g/b;

    new-array v1, v0, [Ljava/lang/Object;

    .line 266
    invoke-direct {p0}, Lc/t/m/g/cy;->l()Lc/t/m/g/cx;

    move-result-object v4

    iput-object v4, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    aput-object v4, v1, v3

    .line 263
    invoke-static {v2, v1}, Lc/t/m/g/b$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lc/t/m/g/cy;->e:Z

    .line 270
    :goto_4
    iget-boolean v1, p0, Lc/t/m/g/cy;->e:Z

    if-eqz v1, :cond_7

    .line 271
    iput v0, p0, Lc/t/m/g/cy;->p:I

    return-void

    .line 275
    :cond_7
    iget-object v0, p1, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lc/t/m/g/ci;->h()Lc/t/m/g/cj;

    move-result-object p1

    invoke-virtual {p1}, Lc/t/m/g/cj;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "txsdk"

    invoke-static {v0, v1, p1}, Lc/t/m/g/cf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lc/t/m/g/cy;->T:Ljava/lang/String;

    invoke-static {p1}, Lc/t/m/g/cf;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A(Lc/t/m/g/cy;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    return-object p0
.end method

.method static synthetic B(Lc/t/m/g/cy;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lc/t/m/g/cy;->z:J

    return-wide v0
.end method

.method static synthetic C(Lc/t/m/g/cy;)Lc/t/m/g/cx;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    return-object p0
.end method

.method static synthetic a(Lc/t/m/g/cy;I)I
    .locals 0

    .line 63
    iput p1, p0, Lc/t/m/g/cy;->C:I

    return p1
.end method

.method static synthetic a(Lc/t/m/g/cy;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lc/t/m/g/cy;->R:J

    return-wide p1
.end method

.method static synthetic a(Lc/t/m/g/cy;)Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->K:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ","

    .line 1457
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 1460
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1461
    array-length v3, p0

    if-le v3, v0, :cond_0

    aget-object v3, p0, v1

    if-eqz v3, :cond_0

    aget-object v3, p0, v0

    if-eqz v3, :cond_0

    aget-object v3, p0, v1

    aget-object v4, p0, v0

    .line 1463
    invoke-static {v3, v4}, Lcom/tencent/tencentmap/lbssdk/service/e;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1464
    aget-object p0, p0, v1

    return-object p0

    :cond_1
    return-object v2

    .line 1466
    :cond_2
    invoke-static {p0}, Lcom/tencent/tencentmap/lbssdk/service/e;->v(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    .line 1467
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(II)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    goto :goto_3

    :pswitch_0
    const-string v1, "gps"

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const-string p1, "unknown"

    goto :goto_3

    :cond_0
    const-string p1, "gps unavailable"

    goto :goto_3

    :cond_1
    const-string p1, "gps available"

    goto :goto_3

    :pswitch_1
    const-string v1, "cell"

    if-ne p2, v2, :cond_2

    const-string p1, "cell enabled"

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "cell disabled"

    goto :goto_0

    :cond_3
    const-string p1, "unknown"

    .line 1013
    :goto_0
    sget-boolean v2, Lc/t/m/g/dx;->a:Z

    if-eqz v2, :cond_a

    const-string p1, "location permission denied"

    :goto_1
    const/4 p2, 0x2

    goto :goto_3

    :pswitch_2
    const-string v1, "gps"

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    const-string p1, "unknown"

    goto :goto_3

    :cond_4
    const-string p1, "gps enabled"

    goto :goto_3

    :cond_5
    const-string p1, "gps disabled"

    goto :goto_3

    :pswitch_3
    const-string v1, "wifi"

    const/4 p1, 0x5

    if-eqz p2, :cond_8

    if-eq p2, v2, :cond_7

    if-eq p2, p1, :cond_6

    const-string v2, "unknown"

    goto :goto_2

    :cond_6
    const-string v2, "location service switch is off"

    goto :goto_2

    :cond_7
    const-string v2, "wifi enabled"

    goto :goto_2

    :cond_8
    const-string v2, "wifi disabled"

    :goto_2
    if-eq p2, p1, :cond_9

    .line 1035
    sget-boolean p1, Lc/t/m/g/ec;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "location permission denied"

    goto :goto_1

    :cond_9
    move-object p1, v2

    .line 1046
    :cond_a
    :goto_3
    iget-object v0, p0, Lc/t/m/g/cy;->K:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v2, :cond_b

    .line 1048
    invoke-interface {v2, v1, p2, p1}, Lcom/tencent/map/geolocation/TencentLocationListener;->onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V

    .line 1050
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2ee1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(IJ)V
    .locals 1

    .line 824
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0, p1}, Lc/t/m/g/cy$a;->removeMessages(I)V

    .line 826
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    invoke-virtual {v0, p1, p2, p3}, Lc/t/m/g/cy$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private a(ILc/t/m/g/dw;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_2

    .line 624
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v7

    cmpl-double v9, v7, v4

    if-eqz v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v7

    cmpl-double v9, v7, v4

    if-eqz v9, :cond_2

    .line 626
    iget v7, v0, Lc/t/m/g/cy;->c:I

    if-ne v7, v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lc/t/m/g/dy;->a(DD)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 628
    :goto_0
    invoke-static {v2, v7}, Lc/t/m/g/dw;->a(Lc/t/m/g/dw;I)Lc/t/m/g/dw;

    .line 631
    :cond_2
    invoke-direct/range {p0 .. p0}, Lc/t/m/g/cy;->j()Z

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const v11, 0x459c4000    # 5000.0f

    const-string v12, "gps"

    const/16 v13, 0x2ede

    const-string v14, "network"

    if-eqz v7, :cond_6

    .line 634
    iget v4, v0, Lc/t/m/g/cy;->Q:I

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 637
    :goto_1
    iput v1, v0, Lc/t/m/g/cy;->Q:I

    .line 638
    iput-object v2, v0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    .line 639
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getAccuracy()F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_4

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getAccuracy()F

    move-result v5

    cmpl-float v5, v5, v10

    if-lez v5, :cond_4

    .line 640
    iget-object v5, v0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    invoke-virtual {v5, v2}, Lc/t/m/g/dc;->a(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 641
    iget-boolean v5, v0, Lc/t/m/g/cy;->A:Z

    if-eqz v5, :cond_4

    .line 642
    iput-object v2, v0, Lc/t/m/g/cy;->H:Lcom/tencent/map/geolocation/TencentLocation;

    .line 644
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v10

    iput-wide v10, v0, Lc/t/m/g/cy;->N:D

    .line 645
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v10

    iput-wide v10, v0, Lc/t/m/g/cy;->O:D

    .line 646
    iget-object v5, v0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v5}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 647
    iget-object v5, v0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v5}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v10

    cmp-long v5, v10, v8

    if-lez v5, :cond_5

    const/16 v5, 0x2edf

    iget-object v7, v0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v7}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v10

    invoke-direct {v0, v5, v10, v11}, Lc/t/m/g/cy;->a(IJ)V

    :cond_5
    if-eqz v4, :cond_d

    .line 650
    invoke-direct {v0, v13}, Lc/t/m/g/cy;->b(I)V

    goto/16 :goto_3

    :cond_6
    if-nez v1, :cond_d

    .line 652
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v15

    cmpl-double v7, v15, v4

    if-eqz v7, :cond_d

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v15

    cmpl-double v7, v15, v4

    if-eqz v7, :cond_d

    .line 653
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v4

    iget-wide v8, v0, Lc/t/m/g/cy;->N:D

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_d

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v4

    move-object/from16 v17, v14

    iget-wide v13, v0, Lc/t/m/g/cy;->O:D

    sub-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v13, v4, v7

    if-ltz v13, :cond_c

    .line 656
    iget-object v4, v0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    iget-object v5, v0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    iget-object v7, v0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    invoke-virtual {v7}, Lc/t/m/g/cx;->d()Z

    move-result v7

    invoke-virtual {v4, v2, v5, v7}, Lc/t/m/g/dc;->a(Lcom/tencent/map/geolocation/TencentLocation;Lc/t/m/g/ci;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "discard "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 675
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v4

    iput-wide v4, v0, Lc/t/m/g/cy;->N:D

    .line 676
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v4

    iput-wide v4, v0, Lc/t/m/g/cy;->O:D

    .line 678
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getAccuracy()F

    move-result v4

    cmpg-float v4, v4, v11

    if-gez v4, :cond_c

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getAccuracy()F

    move-result v4

    cmpl-float v4, v4, v10

    if-lez v4, :cond_c

    .line 679
    iget-object v4, v0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    invoke-virtual {v4, v2}, Lc/t/m/g/dc;->a(Lc/t/m/g/dw;)V

    .line 680
    iget-object v4, v0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    invoke-virtual {v4, v2}, Lc/t/m/g/dc;->a(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 681
    iget-boolean v4, v0, Lc/t/m/g/cy;->A:Z

    if-eqz v4, :cond_c

    .line 682
    iget-object v4, v0, Lc/t/m/g/cy;->H:Lcom/tencent/map/geolocation/TencentLocation;

    if-eqz v4, :cond_b

    .line 683
    invoke-interface {v4}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v18

    iget-object v4, v0, Lc/t/m/g/cy;->H:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v4}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v24

    invoke-static/range {v18 .. v25}, Lc/t/m/g/b$a;->a(DDDD)D

    move-result-wide v4

    .line 684
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v17

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v7, v4, v10

    if-gtz v7, :cond_9

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    cmpl-double v7, v4, v10

    if-lez v7, :cond_e

    .line 685
    :cond_9
    iget-wide v10, v0, Lc/t/m/g/cy;->D:D

    add-double/2addr v10, v4

    iput-wide v10, v0, Lc/t/m/g/cy;->D:D

    .line 686
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 687
    iget v4, v0, Lc/t/m/g/cy;->F:I

    add-int/2addr v4, v6

    iput v4, v0, Lc/t/m/g/cy;->F:I

    goto :goto_2

    .line 689
    :cond_a
    iget v4, v0, Lc/t/m/g/cy;->E:I

    add-int/2addr v4, v6

    iput v4, v0, Lc/t/m/g/cy;->E:I

    .line 691
    :goto_2
    iget v4, v0, Lc/t/m/g/cy;->G:I

    add-int/2addr v4, v6

    iput v4, v0, Lc/t/m/g/cy;->G:I

    .line 692
    iput-object v2, v0, Lc/t/m/g/cy;->H:Lcom/tencent/map/geolocation/TencentLocation;

    goto :goto_4

    :cond_b
    move-object/from16 v8, v17

    .line 695
    iput-object v2, v0, Lc/t/m/g/cy;->H:Lcom/tencent/map/geolocation/TencentLocation;

    goto :goto_4

    :cond_c
    move-object/from16 v8, v17

    goto :goto_4

    :cond_d
    :goto_3
    move-object v8, v14

    .line 701
    :cond_e
    :goto_4
    iget v4, v0, Lc/t/m/g/cy;->Q:I

    if-eqz v4, :cond_f

    if-nez v1, :cond_f

    const/4 v3, 0x1

    :cond_f
    if-nez v4, :cond_10

    .line 704
    iget-object v4, v0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-nez v1, :cond_10

    if-eqz v2, :cond_10

    .line 705
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v3, 0x1

    .line 709
    :cond_10
    iget v4, v0, Lc/t/m/g/cy;->Q:I

    if-nez v4, :cond_11

    iget-object v4, v0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez v1, :cond_11

    if-eqz v2, :cond_11

    .line 710
    invoke-virtual/range {p2 .. p2}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    move v6, v3

    .line 714
    :goto_5
    iput v1, v0, Lc/t/m/g/cy;->Q:I

    .line 715
    iput-object v2, v0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    .line 716
    iget-object v1, v0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_12

    iget-object v1, v0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x2ede

    .line 717
    invoke-direct {v0, v1}, Lc/t/m/g/cy;->b(I)V

    goto :goto_6

    :cond_12
    const/16 v1, 0x2ede

    :goto_6
    if-eqz v6, :cond_13

    .line 719
    iget-object v2, v0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v2}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 720
    invoke-direct {v0, v1}, Lc/t/m/g/cy;->b(I)V

    :cond_13
    return-void
.end method

.method private a(Landroid/os/Looper;)V
    .locals 8

    .line 383
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    invoke-static {v0}, Lc/t/m/g/b$a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lc/t/m/g/cy$a;

    invoke-direct {v0, p0, p1}, Lc/t/m/g/cy$a;-><init>(Lc/t/m/g/cy;Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    invoke-virtual {v0, v1}, Lc/t/m/g/cy$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    invoke-virtual {v0}, Lc/t/m/g/cy$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p1, :cond_2

    new-instance v0, Lc/t/m/g/cy$a;

    invoke-direct {v0, p0, p1}, Lc/t/m/g/cy$a;-><init>(Lc/t/m/g/cy;Landroid/os/Looper;)V

    goto :goto_0

    .line 384
    :cond_2
    :goto_1
    invoke-direct {p0}, Lc/t/m/g/cy;->h()V

    .line 385
    iget-object p1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "use_network"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget-object v0, Lc/t/m/g/cy$b;->b:Lc/t/m/g/cy$b;

    iget-object v3, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    iget-object v5, p0, Lc/t/m/g/cy;->n:Lc/t/m/g/db;

    iget-boolean v6, v5, Lc/t/m/g/db;->g:Z

    if-nez v6, :cond_4

    iput-boolean v2, v5, Lc/t/m/g/db;->g:Z

    iput-boolean v0, v5, Lc/t/m/g/db;->h:Z

    iget-object v6, v5, Lc/t/m/g/db;->b:Lc/t/m/g/ci;

    invoke-virtual {v6}, Lc/t/m/g/ci;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lc/t/m/g/db$1;

    invoke-direct {v7, v5, v3}, Lc/t/m/g/db$1;-><init>(Lc/t/m/g/db;Landroid/os/Handler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lc/t/m/g/db;->f:J

    :cond_4
    iget-boolean v5, p0, Lc/t/m/g/cy;->h:Z

    if-eqz v5, :cond_5

    if-eqz p1, :cond_6

    iget-object v5, p0, Lc/t/m/g/cy;->g:Lc/t/m/g/da;

    invoke-static {v5}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lc/t/m/g/cy;->g:Lc/t/m/g/da;

    invoke-virtual {v5, v3, v0}, Lc/t/m/g/da;->a(Landroid/os/Handler;Z)V

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iget-object v5, p0, Lc/t/m/g/cy;->f:Lc/t/m/g/b;

    invoke-static {v5}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lc/t/m/g/cy;->f:Lc/t/m/g/b;

    invoke-virtual {v5}, Lc/t/m/g/b;->a()V

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    iget-object p1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    invoke-static {p1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    iget-object v5, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    iget-wide v5, v5, Lc/t/m/g/cj;->m:J

    invoke-virtual {p1, v5, v6}, Lc/t/m/g/dd;->a(J)V

    iget-object p1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    invoke-virtual {p1, v3, v0}, Lc/t/m/g/dd;->a(Landroid/os/Handler;Z)V

    :cond_7
    iget-object p1, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    invoke-static {p1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowGPS()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    iget v5, p0, Lc/t/m/g/cy;->c:I

    if-ne v5, v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v2}, Lc/t/m/g/cx;->b(Z)V

    iget-object p1, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    invoke-virtual {p1, v0}, Lc/t/m/g/cx;->a(Z)V

    :cond_9
    if-eqz v0, :cond_b

    iget-object p1, p0, Lc/t/m/g/cy;->n:Lc/t/m/g/db;

    iget-object v0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->k()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lc/t/m/g/b$a;->a([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    new-instance v4, Lc/t/m/g/db$a;

    const-string v5, "http://ue.indoorloc.map.qq.com/"

    invoke-direct {v4, v3, v2, v5, v1}, Lc/t/m/g/db$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    iput-object v0, v4, Lc/t/m/g/db$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lc/t/m/g/db;->a(Lc/t/m/g/db$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_b
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object p1

    const-string v0, "collect_bles"

    invoke-virtual {p1, v0}, Lc/t/m/g/cg;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    iput-object v1, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    :cond_c
    iget-object p1, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    invoke-static {p1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    invoke-virtual {p1}, Lc/t/m/g/cs;->a()V

    :cond_d
    iget-object p1, p0, Lc/t/m/g/cy;->m:Lc/t/m/g/cz;

    invoke-virtual {p1, v3}, Lc/t/m/g/cz;->a(Landroid/os/Handler;)V

    iget-object p1, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    invoke-static {p1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    invoke-virtual {p1, v3}, Lc/t/m/g/cv;->a(Landroid/os/Handler;)V

    :cond_e
    return-void
.end method

.method static synthetic a(Lc/t/m/g/cy;ILc/t/m/g/dw;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lc/t/m/g/cy;->a(ILc/t/m/g/dw;)V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/cy;Lc/t/m/g/dw;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lc/t/m/g/cy;->a(Lc/t/m/g/dw;)V

    return-void
.end method

.method private final a(Lc/t/m/g/dw;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 466
    iget-object v0, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lc/t/m/g/dw;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    invoke-virtual {v1}, Lc/t/m/g/cv;->b()D

    move-result-wide v1

    const-string v3, "direction"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 470
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lc/t/m/g/dw;->getExtra()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method static synthetic b(Lc/t/m/g/cy;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lc/t/m/g/cy;->J:J

    return-wide p1
.end method

.method static synthetic b(Lc/t/m/g/cy;Lc/t/m/g/dw;)Lc/t/m/g/dw;
    .locals 0

    .line 63
    iput-object p1, p0, Lc/t/m/g/cy;->P:Lc/t/m/g/dw;

    return-object p1
.end method

.method static synthetic b(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    .line 816
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0, p1}, Lc/t/m/g/cy$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lc/t/m/g/cy;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lc/t/m/g/cy;->B:J

    return-wide p1
.end method

.method static synthetic c(Lc/t/m/g/cy;)Lc/t/m/g/cy$b;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    return-object p0
.end method

.method static synthetic d(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    return-object p0
.end method

.method static synthetic e(Lc/t/m/g/cy;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lc/t/m/g/cy;->B:J

    return-wide v0
.end method

.method static synthetic f(Lc/t/m/g/cy;)Lc/t/m/g/dw;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    return-object p0
.end method

.method static synthetic g(Lc/t/m/g/cy;)I
    .locals 0

    .line 63
    iget p0, p0, Lc/t/m/g/cy;->Q:I

    return p0
.end method

.method static synthetic g()Landroid/util/SparseArray;
    .locals 1

    .line 63
    sget-object v0, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method private h()V
    .locals 10

    const/4 v0, 0x0

    .line 552
    sput-boolean v0, Lc/t/m/g/dx;->a:Z

    .line 553
    iget-object v1, p0, Lc/t/m/g/cy;->m:Lc/t/m/g/cz;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lc/t/m/g/cy;->m:Lc/t/m/g/cz;

    invoke-virtual {v1}, Lc/t/m/g/cz;->a()V

    .line 556
    :cond_0
    iget-object v1, p0, Lc/t/m/g/cy;->n:Lc/t/m/g/db;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Lc/t/m/g/cy;->n:Lc/t/m/g/db;

    iget-boolean v2, v1, Lc/t/m/g/db;->g:Z

    if-eqz v2, :cond_2

    iput-boolean v0, v1, Lc/t/m/g/db;->g:Z

    iget-object v2, v1, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v2, v1, Lc/t/m/g/db;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Lc/t/m/g/db$a;->d:Lc/t/m/g/db$a;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v2, v1, Lc/t/m/g/db;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v1, Lc/t/m/g/db;->f:J

    sub-long/2addr v2, v6

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v0

    const/4 v2, 0x1

    iget-wide v8, v1, Lc/t/m/g/db;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    iget-wide v8, v1, Lc/t/m/g/db;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    iget-wide v8, v1, Lc/t/m/g/db;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const-string v2, "shutdown: duration=%ds, sent=%dB, recv=%dB, reqCount=%d"

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    iput-wide v4, v1, Lc/t/m/g/db;->c:J

    iput-wide v4, v1, Lc/t/m/g/db;->d:J

    iput-wide v4, v1, Lc/t/m/g/db;->e:J

    iput-wide v4, v1, Lc/t/m/g/db;->f:J

    .line 559
    :cond_2
    iget-object v1, p0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 560
    iget-object v1, p0, Lc/t/m/g/cy;->q:Lc/t/m/g/dc;

    invoke-virtual {v1}, Lc/t/m/g/dc;->a()V

    .line 562
    :cond_3
    iget-object v1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 563
    iget-object v1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    invoke-virtual {v1}, Lc/t/m/g/dd;->a()V

    .line 565
    :cond_4
    iget-boolean v1, p0, Lc/t/m/g/cy;->h:Z

    if-eqz v1, :cond_5

    .line 566
    iget-object v1, p0, Lc/t/m/g/cy;->g:Lc/t/m/g/da;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 567
    iget-object v1, p0, Lc/t/m/g/cy;->g:Lc/t/m/g/da;

    invoke-virtual {v1}, Lc/t/m/g/da;->a()V

    goto :goto_0

    .line 570
    :cond_5
    iget-object v1, p0, Lc/t/m/g/cy;->f:Lc/t/m/g/b;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 571
    iget-object v1, p0, Lc/t/m/g/cy;->f:Lc/t/m/g/b;

    invoke-virtual {v1}, Lc/t/m/g/b;->b()V

    .line 574
    :cond_6
    :goto_0
    iget-object v1, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 575
    iget-object v1, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    invoke-virtual {v1}, Lc/t/m/g/cx;->b()V

    .line 577
    :cond_7
    iget-object v1, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 578
    iget-object v1, p0, Lc/t/m/g/cy;->k:Lc/t/m/g/cv;

    invoke-virtual {v1}, Lc/t/m/g/cv;->a()V

    .line 580
    :cond_8
    iget-object v1, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    invoke-static {v1}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 581
    iget-object v1, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    invoke-virtual {v1}, Lc/t/m/g/cs;->b()V

    .line 584
    :cond_9
    iget-boolean v1, p0, Lc/t/m/g/cy;->U:Z

    if-eqz v1, :cond_a

    .line 585
    invoke-static {}, Lc/t/m/g/cf;->a()Lc/t/m/g/cf;

    move-result-object v1

    invoke-virtual {v1}, Lc/t/m/g/cf;->c()V

    .line 586
    iput-boolean v0, p0, Lc/t/m/g/cy;->U:Z

    :cond_a
    return-void
.end method

.method static synthetic h(Lc/t/m/g/cy;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lc/t/m/g/cy;->A:Z

    return p0
.end method

.method static synthetic i(Lc/t/m/g/cy;)Lcom/tencent/map/geolocation/TencentDistanceListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->I:Lcom/tencent/map/geolocation/TencentDistanceListener;

    return-object p0
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x0

    .line 593
    iput v0, p0, Lc/t/m/g/cy;->C:I

    const/4 v1, 0x0

    .line 594
    iput-object v1, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    .line 595
    iput-object v1, p0, Lc/t/m/g/cy;->s:Lc/t/m/g/dg;

    .line 596
    iput-object v1, p0, Lc/t/m/g/cy;->u:Lc/t/m/g/dh;

    const-wide/16 v1, 0x0

    .line 597
    iput-wide v1, p0, Lc/t/m/g/cy;->J:J

    .line 598
    sput v0, Lc/t/m/g/di;->a:I

    .line 600
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 601
    iget-object v0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    const-string v3, "cell"

    invoke-virtual {v0, v3}, Lc/t/m/g/ci;->a(Ljava/lang/String;)Lc/t/m/g/cm;

    move-result-object v0

    invoke-virtual {v0}, Lc/t/m/g/cm;->a()V

    .line 603
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    if-eqz v0, :cond_1

    const-string v3, ""

    .line 604
    iput-object v3, v0, Lc/t/m/g/cj;->q:Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    iput-wide v1, v0, Lc/t/m/g/cj;->p:J

    .line 606
    iget-object v0, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    iput-wide v1, v0, Lc/t/m/g/cj;->o:J

    .line 607
    iget-object v0, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    iput-wide v1, v0, Lc/t/m/g/cj;->n:J

    :cond_1
    return-void
.end method

.method static synthetic j(Lc/t/m/g/cy;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lc/t/m/g/cy;->D:D

    return-wide v0
.end method

.method private j()Z
    .locals 2

    .line 727
    iget v0, p0, Lc/t/m/g/cy;->Q:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private k()Z
    .locals 2

    .line 736
    iget-object v0, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Lc/t/m/g/cx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    invoke-virtual {v0}, Lc/t/m/g/cx;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic k(Lc/t/m/g/cy;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lc/t/m/g/cy;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lc/t/m/g/cy;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lc/t/m/g/cy;->J:J

    return-wide v0
.end method

.method private l()Lc/t/m/g/cx;
    .locals 2

    .line 1422
    iget-object v0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1426
    :cond_0
    new-instance v0, Lc/t/m/g/cx;

    iget-object v1, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-direct {v0, v1}, Lc/t/m/g/cx;-><init>(Lc/t/m/g/ci;)V

    return-object v0
.end method

.method static synthetic m(Lc/t/m/g/cy;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lc/t/m/g/cy;->R:J

    return-wide v0
.end method

.method private m()Lc/t/m/g/dd;
    .locals 2

    .line 1449
    iget-object v0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1453
    :cond_0
    new-instance v0, Lc/t/m/g/dd;

    iget-object v1, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-direct {v0, v1}, Lc/t/m/g/dd;-><init>(Lc/t/m/g/ci;)V

    return-object v0
.end method

.method static synthetic n(Lc/t/m/g/cy;)I
    .locals 0

    .line 63
    iget p0, p0, Lc/t/m/g/cy;->c:I

    return p0
.end method

.method static synthetic o(Lc/t/m/g/cy;)Lc/t/m/g/di;
    .locals 9

    .line 63
    iget-object v0, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    iget-object v1, p0, Lc/t/m/g/cy;->s:Lc/t/m/g/dg;

    iget-object v2, p0, Lc/t/m/g/cy;->u:Lc/t/m/g/dh;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lc/t/m/g/cy;->k()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v3

    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-static {v1}, Lc/t/m/g/dx;->a(Lc/t/m/g/ci;)Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lc/t/m/g/dg;->a(Lc/t/m/g/ci;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lc/t/m/g/dg;

    move-result-object v1

    invoke-static {v1}, Lc/t/m/g/dx;->a(Lc/t/m/g/dg;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lc/t/m/g/dk;->a(J)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v0, v3

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_4

    iget v4, v1, Lc/t/m/g/dg;->d:I

    iget v5, v1, Lc/t/m/g/dg;->e:I

    iget-object v6, v2, Lc/t/m/g/dh;->a:Landroid/location/Location;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cellkey"

    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "location"

    invoke-virtual {v7, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    const-string v5, "cell"

    invoke-virtual {v4, v5}, Lc/t/m/g/ci;->a(Ljava/lang/String;)Lc/t/m/g/cm;

    move-result-object v4

    invoke-virtual {v4, v7}, Lc/t/m/g/cm;->b(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v1, v3

    :cond_4
    new-instance v4, Lc/t/m/g/di;

    iget-object p0, p0, Lc/t/m/g/cy;->l:Lc/t/m/g/cs;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lc/t/m/g/cs;->c()Ljava/util/List;

    move-result-object v3

    :cond_5
    invoke-direct {v4, v0, v1, v2, v3}, Lc/t/m/g/di;-><init>(Lc/t/m/g/dk;Lc/t/m/g/dg;Lc/t/m/g/dh;Ljava/util/List;)V

    return-object v4
.end method

.method static synthetic p(Lc/t/m/g/cy;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->T:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lc/t/m/g/cy;)Lc/t/m/g/ci;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    return-object p0
.end method

.method static synthetic r(Lc/t/m/g/cy;)Lc/t/m/g/db;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->n:Lc/t/m/g/db;

    return-object p0
.end method

.method static synthetic s(Lc/t/m/g/cy;)Lc/t/m/g/ck;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->r:Lc/t/m/g/ck;

    return-object p0
.end method

.method static synthetic t(Lc/t/m/g/cy;)I
    .locals 0

    .line 63
    iget p0, p0, Lc/t/m/g/cy;->C:I

    return p0
.end method

.method static synthetic u(Lc/t/m/g/cy;)Lc/t/m/g/dd;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    return-object p0
.end method

.method static synthetic v(Lc/t/m/g/cy;)Lc/t/m/g/cj;
    .locals 0

    .line 63
    iget-object p0, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    return-object p0
.end method

.method static synthetic w(Lc/t/m/g/cy;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lc/t/m/g/cy;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic x(Lc/t/m/g/cy;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lc/t/m/g/cy;->U:Z

    return p0
.end method

.method static synthetic y(Lc/t/m/g/cy;)Z
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lc/t/m/g/cy;->U:Z

    return v0
.end method

.method static synthetic z(Lc/t/m/g/cy;)Lc/t/m/g/dk;
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/map/geolocation/TencentDistanceListener;)I
    .locals 2

    .line 325
    iget-object v0, p0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 327
    :cond_0
    iget-boolean v0, p0, Lc/t/m/g/cy;->A:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 330
    :cond_1
    iput-boolean v1, p0, Lc/t/m/g/cy;->A:Z

    .line 331
    iput-object p1, p0, Lc/t/m/g/cy;->I:Lcom/tencent/map/geolocation/TencentDistanceListener;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 7

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cy;->z:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    if-eqz p1, :cond_0

    .line 341
    iget-object p2, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return v2

    .line 347
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cy;->z:J

    if-eqz p1, :cond_2

    .line 349
    iget-object v0, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_2
    iget-object p1, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    iget p1, p0, Lc/t/m/g/cy;->Q:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    if-eqz p1, :cond_6

    .line 354
    invoke-virtual {p1}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v3, "gps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    invoke-virtual {p1}, Lc/t/m/g/dw;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x15f90

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    .line 355
    invoke-virtual {p1}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v3, "network"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    invoke-virtual {p1}, Lc/t/m/g/dw;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    cmp-long p1, v3, v5

    if-gtz p1, :cond_6

    .line 357
    :cond_4
    :try_start_0
    iget-object p1, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 358
    iget-object v3, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    iget v4, p0, Lc/t/m/g/cy;->Q:I

    sget-object v5, Lc/t/m/g/cy;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v3, v4, v5}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_5
    iget-object p1, p0, Lc/t/m/g/cy;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    iput-wide v0, p0, Lc/t/m/g/cy;->z:J

    return v2

    .line 367
    :cond_6
    iget-object p1, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    sget-object v3, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    if-ne p1, v3, :cond_7

    const/16 p1, 0xf9d

    .line 369
    invoke-direct {p0, p1}, Lc/t/m/g/cy;->b(I)V

    return v2

    .line 374
    :cond_7
    sget-object p1, Lc/t/m/g/cy$b;->c:Lc/t/m/g/cy$b;

    iput-object p1, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    .line 375
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object p1

    .line 376
    sget-object v0, Lc/t/m/g/cy;->b:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-virtual {p0, p1, v0, p2}, Lc/t/m/g/cy;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 5

    .line 292
    iget v0, p0, Lc/t/m/g/cy;->p:I

    if-eqz v0, :cond_0

    .line 293
    iget p1, p0, Lc/t/m/g/cy;->p:I

    return p1

    .line 295
    :cond_0
    invoke-direct {p0}, Lc/t/m/g/cy;->i()V

    .line 296
    iget-object v0, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lc/t/m/g/cj;->n:J

    :cond_1
    const/16 v0, 0x194

    .line 302
    iput v0, p0, Lc/t/m/g/cy;->Q:I

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    .line 304
    iget-object v1, p0, Lc/t/m/g/cy;->K:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    iput-object p2, p0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 306
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iget-object p2, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    if-eqz p2, :cond_2

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {p2}, Lc/t/m/g/cj;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 308
    iget-object p2, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-virtual {p2}, Lc/t/m/g/ci;->a()V

    .line 310
    :cond_2
    iget-object p2, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getQQ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lc/t/m/g/cj;->g:Ljava/lang/String;

    .line 311
    iget-object p2, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-static {p2, p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V

    .line 313
    iget-object p2, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    iget-object p2, p2, Lc/t/m/g/cj;->e:Ljava/lang/String;

    invoke-static {p2}, Lc/t/m/g/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 314
    iget-object p2, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lc/t/m/g/cj;->e:Ljava/lang/String;

    .line 316
    :cond_3
    iget-object p2, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v1

    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v3

    const-string v4, "min_wifi_scan_interval"

    invoke-virtual {v3, v4}, Lc/t/m/g/cg;->c(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p2, Lc/t/m/g/cj;->m:J

    .line 317
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide p1

    iput-wide p1, p0, Lc/t/m/g/cy;->B:J

    .line 318
    sget-object p1, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    iput-object p1, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    .line 319
    iget-object p1, p0, Lc/t/m/g/cy;->o:Landroid/os/HandlerThread;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v0, p0, Lc/t/m/g/cy;->o:Landroid/os/HandlerThread;

    .line 320
    :cond_4
    invoke-direct {p0, p3}, Lc/t/m/g/cy;->a(Landroid/os/Looper;)V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 306
    monitor-exit v1

    throw p1
.end method

.method public final a()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .line 457
    iget v0, p0, Lc/t/m/g/cy;->Q:I

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    invoke-direct {p0, v0}, Lc/t/m/g/cy;->a(Lc/t/m/g/dw;)V

    .line 459
    iget-object v0, p0, Lc/t/m/g/cy;->M:Lc/t/m/g/dw;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 796
    iget v0, p0, Lc/t/m/g/cy;->c:I

    if-ne v0, p1, :cond_0

    return-void

    .line 799
    :cond_0
    iput p1, p0, Lc/t/m/g/cy;->c:I

    return-void
.end method

.method public final b()Lcom/tencent/map/geolocation/TencentDistanceAnalysis;
    .locals 6

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lc/t/m/g/cy;->I:Lcom/tencent/map/geolocation/TencentDistanceListener;

    const-wide/16 v1, 0x0

    .line 477
    iput-wide v1, p0, Lc/t/m/g/cy;->D:D

    const/4 v1, 0x0

    .line 478
    iput-boolean v1, p0, Lc/t/m/g/cy;->A:Z

    .line 479
    iput-object v0, p0, Lc/t/m/g/cy;->H:Lcom/tencent/map/geolocation/TencentLocation;

    .line 480
    new-instance v0, Lc/t/m/g/dq;

    invoke-direct {v0}, Lc/t/m/g/dq;-><init>()V

    .line 481
    iget v2, p0, Lc/t/m/g/cy;->E:I

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    iget v4, p0, Lc/t/m/g/cy;->G:I

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    const/4 v4, 0x4

    .line 482
    invoke-static {v2, v3, v4}, Lc/t/m/g/b$a;->a(DI)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-virtual {v0, v2, v3}, Lc/t/m/g/dq;->a(D)V

    .line 483
    iget v2, p0, Lc/t/m/g/cy;->E:I

    invoke-virtual {v0, v2}, Lc/t/m/g/dq;->a(I)V

    .line 484
    iget v2, p0, Lc/t/m/g/cy;->F:I

    invoke-virtual {v0, v2}, Lc/t/m/g/dq;->b(I)V

    .line 485
    iput v1, p0, Lc/t/m/g/cy;->E:I

    .line 486
    iput v1, p0, Lc/t/m/g/cy;->F:I

    .line 487
    iput v1, p0, Lc/t/m/g/cy;->G:I

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    .line 492
    iput v0, p0, Lc/t/m/g/cy;->C:I

    return v0
.end method

.method public final d()Z
    .locals 3

    .line 497
    iget v0, p0, Lc/t/m/g/cy;->C:I

    if-lez v0, :cond_2

    .line 498
    iget-object v0, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    invoke-static {v0}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    iget-object v1, p0, Lc/t/m/g/cy;->w:Lc/t/m/g/cj;

    iget-wide v1, v1, Lc/t/m/g/cj;->m:J

    invoke-virtual {v0, v1, v2}, Lc/t/m/g/dd;->a(J)V

    .line 501
    :cond_0
    iget-wide v0, p0, Lc/t/m/g/cy;->B:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cy;->B:J

    :cond_1
    const/4 v0, 0x0

    .line 504
    iput v0, p0, Lc/t/m/g/cy;->C:I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 2

    .line 510
    invoke-direct {p0}, Lc/t/m/g/cy;->h()V

    .line 511
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    invoke-static {v0}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lc/t/m/g/cy;->d:Lc/t/m/g/cy$a;

    invoke-virtual {v0}, Lc/t/m/g/cy$a;->a()V

    .line 516
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cy;->K:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 517
    :try_start_0
    iput-object v1, p0, Lc/t/m/g/cy;->x:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    iget-object v0, p0, Lc/t/m/g/cy;->r:Lc/t/m/g/ck;

    invoke-static {v0}, Lc/t/m/g/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lc/t/m/g/cy;->r:Lc/t/m/g/ck;

    invoke-interface {v0}, Lc/t/m/g/ck;->a()V

    .line 523
    :cond_1
    invoke-direct {p0}, Lc/t/m/g/cy;->i()V

    .line 524
    invoke-static {}, Lc/t/m/g/cg;->a()Lc/t/m/g/cg;

    move-result-object v0

    const-string v1, "start_daemon"

    invoke-virtual {v0, v1}, Lc/t/m/g/cg;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    sget-object v1, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    invoke-static {v0}, Lc/t/m/g/ec;->c(Lc/t/m/g/ci;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "daemon_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/cy;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lc/t/m/g/cy$b;->b:Lc/t/m/g/cy$b;

    iput-object v0, p0, Lc/t/m/g/cy;->S:Lc/t/m/g/cy$b;

    iget-object v0, p0, Lc/t/m/g/cy;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/t/m/g/cy;->a(Landroid/os/Looper;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cy;->R:J

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 518
    monitor-exit v0

    throw v1
.end method

.method public final f()I
    .locals 1

    .line 812
    iget v0, p0, Lc/t/m/g/cy;->c:I

    return v0
.end method

.method public final onCellInfoEvent(Lc/t/m/g/dg;)V
    .locals 7

    .line 831
    iput-object p1, p0, Lc/t/m/g/cy;->s:Lc/t/m/g/dg;

    iget-object p1, p0, Lc/t/m/g/cy;->j:Lc/t/m/g/dd;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/t/m/g/dd;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    :cond_1
    iget-object v1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x4e20

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    if-eq p1, v0, :cond_2

    iget-wide v3, p0, Lc/t/m/g/cy;->J:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lc/t/m/g/cy;->J:J

    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    :cond_2
    const/16 p1, 0xf9f

    invoke-direct {p0, p1}, Lc/t/m/g/cy;->b(I)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final onGpsInfoEvent(Lc/t/m/g/dh;)V
    .locals 10

    .line 839
    iget-object v0, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    sget-object v1, Lc/t/m/g/cu;->a:Landroid/location/Location;

    if-eq v0, v1, :cond_3

    iput-object p1, p0, Lc/t/m/g/cy;->u:Lc/t/m/g/dh;

    invoke-static {}, Lc/t/m/g/cw;->a()Lc/t/m/g/cw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/t/m/g/cw;->a(Lc/t/m/g/dh;)I

    iget v0, p0, Lc/t/m/g/cy;->c:I

    iget-object v1, p0, Lc/t/m/g/cy;->L:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v1

    iget-object v2, p0, Lc/t/m/g/cy;->P:Lc/t/m/g/dw;

    new-instance v3, Landroid/location/Location;

    iget-object v4, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    const-string v5, "lat"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "lng"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-static {v0}, Lc/t/m/g/b$a;->a(I)Z

    move-result v0

    const/4 v4, 0x0

    const-string v9, "gps"

    if-eqz v0, :cond_1

    new-instance v0, Lc/t/m/g/dw$a;

    invoke-direct {v0}, Lc/t/m/g/dw$a;-><init>()V

    iput-object v2, v0, Lc/t/m/g/dw$a;->b:Lc/t/m/g/dw;

    iput-object v9, v0, Lc/t/m/g/dw$a;->d:Ljava/lang/String;

    iput v1, v0, Lc/t/m/g/dw$a;->c:I

    new-instance v1, Landroid/location/Location;

    iget-object p1, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lc/t/m/g/dw$a;->a(Landroid/location/Location;)Lc/t/m/g/dw$a;

    move-result-object p1

    invoke-virtual {p1}, Lc/t/m/g/dw$a;->a()Lc/t/m/g/dw;

    move-result-object p1

    invoke-virtual {v3, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {p1, v3}, Lc/t/m/g/dw;->a(Landroid/location/Location;)V

    invoke-direct {p0, v4, p1}, Lc/t/m/g/cy;->a(ILc/t/m/g/dw;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lc/t/m/g/cy;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf9f

    invoke-direct {p0, v0}, Lc/t/m/g/cy;->b(I)V

    :cond_2
    new-instance v0, Lc/t/m/g/dw$a;

    invoke-direct {v0}, Lc/t/m/g/dw$a;-><init>()V

    iput-object v2, v0, Lc/t/m/g/dw$a;->b:Lc/t/m/g/dw;

    iput-object v9, v0, Lc/t/m/g/dw$a;->d:Ljava/lang/String;

    iput v1, v0, Lc/t/m/g/dw$a;->c:I

    new-instance v1, Landroid/location/Location;

    iget-object p1, p1, Lc/t/m/g/dh;->a:Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lc/t/m/g/dw$a;->a(Landroid/location/Location;)Lc/t/m/g/dw$a;

    move-result-object p1

    invoke-virtual {p1}, Lc/t/m/g/dw$a;->a()Lc/t/m/g/dw;

    move-result-object p1

    invoke-virtual {v3, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {p1, v3}, Lc/t/m/g/dw;->a(Landroid/location/Location;)V

    invoke-direct {p0, v4, p1}, Lc/t/m/g/cy;->a(ILc/t/m/g/dw;)V

    const/16 p1, 0x2ee4

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lc/t/m/g/cy;->a(II)V

    :goto_1
    iget-object p1, p0, Lc/t/m/g/cy;->i:Lc/t/m/g/cx;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lc/t/m/g/cx;->c()Z

    :cond_3
    return-void
.end method

.method public final onNetworkEvent(Ljava/lang/Integer;)V
    .locals 2

    .line 847
    iget-object v0, p0, Lc/t/m/g/cy;->v:Lc/t/m/g/ci;

    iget-object v0, v0, Lc/t/m/g/ci;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/t/m/g/b$a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 848
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f3f

    const-wide/16 v0, 0x3e8

    .line 859
    invoke-direct {p0, p1, v0, v1}, Lc/t/m/g/cy;->a(IJ)V

    :goto_0
    return-void
.end method

.method public final onStatusEvent(Landroid/os/Message;)V
    .locals 1

    .line 843
    iget v0, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lc/t/m/g/cy;->a(II)V

    return-void
.end method

.method public final onWifiInfoEvent(Lc/t/m/g/dk;)V
    .locals 5

    .line 835
    iget-object v0, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    if-eqz v0, :cond_0

    iget v0, p0, Lc/t/m/g/cy;->C:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lc/t/m/g/dk;->a:Lc/t/m/g/dk;

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lc/t/m/g/cy;->J:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lc/t/m/g/dk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    invoke-virtual {v0, p1}, Lc/t/m/g/dk;->a(Lc/t/m/g/dk;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0xf9f

    invoke-direct {p0, v0}, Lc/t/m/g/cy;->b(I)V

    :cond_1
    iput-object p1, p0, Lc/t/m/g/cy;->t:Lc/t/m/g/dk;

    return-void
.end method
