.class public final Lc/t/m/g/dw;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/tencent/map/geolocation/TencentLocation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/dw$a;
    }
.end annotation


# static fields
.field public static final a:Lc/t/m/g/dw;


# instance fields
.field private b:Lc/t/m/g/ds;

.field private c:Lc/t/m/g/dr;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lc/t/m/g/dp;

.field private final h:Landroid/os/Bundle;

.field private i:Ljava/lang/String;

.field private j:Landroid/location/Location;

.field private final k:J

.field private l:J

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lc/t/m/g/dw$1;

    invoke-direct {v0}, Lc/t/m/g/dw$1;-><init>()V

    .line 108
    new-instance v0, Lc/t/m/g/dw;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lc/t/m/g/dw;-><init>(I)V

    sput-object v0, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    const-string v0, "network"

    .line 127
    iput-object v0, p0, Lc/t/m/g/dw;->i:Ljava/lang/String;

    .line 136
    iput p1, p0, Lc/t/m/g/dw;->d:I

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dw;->k:J

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dw;->l:J

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lc/t/m/g/dw;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "icontrol"

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    const-string v1, "network"

    .line 127
    iput-object v1, p0, Lc/t/m/g/dw;->i:Ljava/lang/String;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lc/t/m/g/dw;->k:J

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lc/t/m/g/dw;->l:J

    .line 197
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "location"

    .line 199
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 200
    new-instance v2, Lc/t/m/g/ds;

    invoke-direct {v2, p1}, Lc/t/m/g/ds;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p1, "indoorinfo"

    .line 206
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 207
    new-instance v2, Lc/t/m/g/dr;

    invoke-direct {v2, p1}, Lc/t/m/g/dr;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lc/t/m/g/dw;->c:Lc/t/m/g/dr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const-string p1, "bearing"

    .line 210
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/dw;->f:Ljava/lang/String;

    const-string p1, "fackgps"

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lc/t/m/g/dw;->e:I

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string p1, "timestamp"

    invoke-virtual {v1, p1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lc/t/m/g/dw;->l:J

    .line 214
    :try_start_2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    iget-object v3, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string p1, "details"

    .line 220
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 227
    :try_start_3
    new-instance v0, Lc/t/m/g/dp;

    invoke-direct {v0, p1}, Lc/t/m/g/dp;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 228
    throw p1

    :cond_1
    const-string p1, "addrdesp"

    .line 233
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "detail"

    .line 234
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 243
    new-instance v0, Lc/t/m/g/dp;

    invoke-direct {v0, p1}, Lc/t/m/g/dp;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    .line 247
    :cond_2
    :goto_1
    iget-object p1, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    if-eqz p1, :cond_3

    .line 248
    iget-object p1, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    return-void

    :catch_2
    move-exception p1

    .line 201
    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lc/t/m/g/dw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/dw;J)J
    .locals 0

    .line 26
    iput-wide p1, p0, Lc/t/m/g/dw;->l:J

    return-wide p1
.end method

.method static synthetic a(Lc/t/m/g/dw;Lc/t/m/g/dp;)Lc/t/m/g/dp;
    .locals 0

    .line 26
    iput-object p1, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    return-object p1
.end method

.method static synthetic a(Lc/t/m/g/dw;Lc/t/m/g/ds;)Lc/t/m/g/ds;
    .locals 0

    .line 26
    iput-object p1, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    return-object p1
.end method

.method public static a(Lc/t/m/g/dw;I)Lc/t/m/g/dw;
    .locals 0

    .line 498
    iput p1, p0, Lc/t/m/g/dw;->m:I

    return-object p0
.end method

.method static synthetic a(Lc/t/m/g/dw;Landroid/location/Location;)Lc/t/m/g/dw;
    .locals 0

    .line 26
    iput-object p1, p0, Lc/t/m/g/dw;->j:Landroid/location/Location;

    return-object p0
.end method

.method public static a(Lc/t/m/g/dw;Z)Lc/t/m/g/dw;
    .locals 4

    if-eqz p0, :cond_1

    .line 480
    iget-object v0, p0, Lc/t/m/g/dw;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    const-string v1, ","

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 486
    :cond_0
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_1

    .line 489
    :try_start_0
    iget v1, v0, Lc/t/m/g/ds;->d:F

    float-to-double v1, v1

    const/16 v3, -0x46

    invoke-static {v1, v2, p1, v3}, Lcom/tencent/tencentmap/lbssdk/service/e;->r(DII)D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, Lc/t/m/g/ds;->d:F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object p0
.end method

.method static synthetic a(Lc/t/m/g/dw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    iput-object p1, p0, Lc/t/m/g/dw;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lc/t/m/g/dw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 503
    sget-object v0, Lc/t/m/g/dw;->a:Lc/t/m/g/dw;

    if-eq p0, v0, :cond_0

    return-void

    .line 504
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "location failed"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic b(Lc/t/m/g/dw;)Landroid/os/Bundle;
    .locals 0

    .line 26
    iget-object p0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic b(Lc/t/m/g/dw;I)Lc/t/m/g/dw;
    .locals 0

    .line 26
    iput p1, p0, Lc/t/m/g/dw;->d:I

    return-object p0
.end method

.method static synthetic b(Lc/t/m/g/dw;Ljava/lang/String;)Lc/t/m/g/dw;
    .locals 0

    .line 26
    iput-object p1, p0, Lc/t/m/g/dw;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/t/m/g/dw;)Lc/t/m/g/dw;
    .locals 6

    .line 26
    new-instance v0, Lc/t/m/g/dw;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lc/t/m/g/dw;-><init>(I)V

    if-nez p0, :cond_0

    new-instance p0, Lc/t/m/g/ds;

    invoke-direct {p0}, Lc/t/m/g/ds;-><init>()V

    iput-object p0, v0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    new-instance v2, Lc/t/m/g/ds;

    invoke-direct {v2}, Lc/t/m/g/ds;-><init>()V

    if-eqz v1, :cond_1

    iget-wide v3, v1, Lc/t/m/g/ds;->a:D

    iput-wide v3, v2, Lc/t/m/g/ds;->a:D

    iget-wide v3, v1, Lc/t/m/g/ds;->b:D

    iput-wide v3, v2, Lc/t/m/g/ds;->b:D

    iget-wide v3, v1, Lc/t/m/g/ds;->c:D

    iput-wide v3, v2, Lc/t/m/g/ds;->c:D

    iget v3, v1, Lc/t/m/g/ds;->d:F

    iput v3, v2, Lc/t/m/g/ds;->d:F

    iget-object v3, v1, Lc/t/m/g/ds;->e:Ljava/lang/String;

    iput-object v3, v2, Lc/t/m/g/ds;->e:Ljava/lang/String;

    iget-object v1, v1, Lc/t/m/g/ds;->f:Ljava/lang/String;

    iput-object v1, v2, Lc/t/m/g/ds;->f:Ljava/lang/String;

    :cond_1
    iput-object v2, v0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    iget v1, p0, Lc/t/m/g/dw;->d:I

    iput v1, v0, Lc/t/m/g/dw;->d:I

    iget-object v1, p0, Lc/t/m/g/dw;->f:Ljava/lang/String;

    iput-object v1, v0, Lc/t/m/g/dw;->f:Ljava/lang/String;

    iget-object v1, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Lc/t/m/g/dp;

    invoke-direct {v2}, Lc/t/m/g/dp;-><init>()V

    iget v3, v1, Lc/t/m/g/dp;->a:I

    iput v3, v2, Lc/t/m/g/dp;->a:I

    iget-object v3, v1, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    invoke-static {v3}, Lc/t/m/g/du;->a(Lc/t/m/g/du;)Lc/t/m/g/du;

    move-result-object v3

    iput-object v3, v2, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v1, v1, Lc/t/m/g/dp;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/map/geolocation/TencentPoi;

    iget-object v4, v2, Lc/t/m/g/dp;->b:Ljava/util/ArrayList;

    new-instance v5, Lc/t/m/g/dt;

    invoke-direct {v5, v3}, Lc/t/m/g/dt;-><init>(Lcom/tencent/map/geolocation/TencentPoi;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    iget-object v1, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    iget-object p0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(J)Lc/t/m/g/dw;
    .locals 0

    .line 142
    iput-wide p1, p0, Lc/t/m/g/dw;->l:J

    return-object p0
.end method

.method public final a(DD)V
    .locals 3

    .line 190
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v1

    iput-wide p1, v0, Lc/t/m/g/ds;->a:D

    .line 191
    iget-object p1, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    mul-double p3, p3, v1

    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v1

    iput-wide p2, p1, Lc/t/m/g/ds;->b:D

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 178
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v4

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    mul-double v2, v2, v4

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    .line 182
    iget-object v4, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    iput-wide v0, v4, Lc/t/m/g/ds;->a:D

    .line 183
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    iput-wide v2, v0, Lc/t/m/g/ds;->b:D

    .line 184
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lc/t/m/g/ds;->c:D

    .line 185
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iput p1, v0, Lc/t/m/g/ds;->d:F

    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAccuracy()F
    .locals 1

    .line 285
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_0

    iget v0, v0, Lc/t/m/g/ds;->d:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 3

    .line 318
    iget v0, p0, Lc/t/m/g/dw;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    const-string v2, ""

    if-ne v0, v1, :cond_2

    .line 322
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->l:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v2

    .line 324
    :cond_2
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lc/t/m/g/ds;->f:Ljava/lang/String;

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final getAltitude()D
    .locals 2

    .line 281
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lc/t/m/g/ds;->c:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getAreaStat()Ljava/lang/Integer;
    .locals 1

    .line 360
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget v0, v0, Lc/t/m/g/dp;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBearing()F
    .locals 1

    .line 394
    iget-object v0, p0, Lc/t/m/g/dw;->j:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    return v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getCityCode()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getCoordinateType()I
    .locals 1

    .line 409
    iget v0, p0, Lc/t/m/g/dw;->m:I

    return v0
.end method

.method public final getDirection()D
    .locals 2

    .line 565
    iget-object v0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "direction"

    .line 566
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    return-wide v0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getElapsedRealtime()J
    .locals 2

    .line 413
    iget-wide v0, p0, Lc/t/m/g/dw;->k:J

    return-wide v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    .line 375
    iget-object v0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGPSRssi()I
    .locals 3

    .line 380
    iget-object v0, p0, Lc/t/m/g/dw;->j:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 383
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "rssi"

    .line 387
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getIndoorBuildingFloor()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lc/t/m/g/dw;->c:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dr;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getIndoorBuildingId()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lc/t/m/g/dw;->c:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dr;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getIndoorLocationType()I
    .locals 1

    .line 300
    iget-object v0, p0, Lc/t/m/g/dw;->c:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget v0, v0, Lc/t/m/g/dr;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 273
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lc/t/m/g/ds;->a:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 277
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lc/t/m/g/ds;->b:D

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .line 304
    iget v0, p0, Lc/t/m/g/dw;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    const-string v2, ""

    if-ne v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->c:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v2

    .line 310
    :cond_2
    iget-object v0, p0, Lc/t/m/g/dw;->b:Lc/t/m/g/ds;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lc/t/m/g/ds;->e:Ljava/lang/String;

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final getNation()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getPoiList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/map/geolocation/TencentPoi;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    iget-object v1, v1, Lc/t/m/g/dp;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 365
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lc/t/m/g/dw;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getSpeed()F
    .locals 1

    .line 399
    iget-object v0, p0, Lc/t/m/g/dw;->j:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    return v0
.end method

.method public final getStreet()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getStreetNo()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->k:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 404
    iget-wide v0, p0, Lc/t/m/g/dw;->l:J

    return-wide v0
.end method

.method public final getTown()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->h:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getVillage()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object v0, v0, Lc/t/m/g/du;->i:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final isMockGps()I
    .locals 1

    .line 573
    iget v0, p0, Lc/t/m/g/dw;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxLocation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "level="

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/t/m/g/dw;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "name="

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "address="

    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "provider="

    .line 439
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "latitude="

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "longitude="

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "altitude="

    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "accuracy="

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cityCode="

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "areaStat="

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getAreaStat()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "nation="

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getNation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "province="

    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "city="

    .line 449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "district="

    .line 450
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "street="

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "streetNo="

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getStreetNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "town="

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getTown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "village="

    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getVillage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bearing="

    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "time="

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/t/m/g/dw;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "poilist=["

    .line 459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Lc/t/m/g/dw;->getPoiList()Ljava/util/List;

    move-result-object v2

    .line 461
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/map/geolocation/TencentPoi;

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 78
    iget p2, p0, Lc/t/m/g/dw;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p0}, Lc/t/m/g/dw;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lc/t/m/g/dw;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    invoke-virtual {p0}, Lc/t/m/g/dw;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    invoke-virtual {p0}, Lc/t/m/g/dw;->getAccuracy()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    invoke-virtual {p0}, Lc/t/m/g/dw;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    invoke-virtual {p0}, Lc/t/m/g/dw;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lc/t/m/g/dw;->getNation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lc/t/m/g/dw;->getProvince()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lc/t/m/g/dw;->getCity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lc/t/m/g/dw;->getDistrict()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lc/t/m/g/dw;->getStreet()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lc/t/m/g/dw;->getStreetNo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lc/t/m/g/dw;->g:Lc/t/m/g/dp;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lc/t/m/g/dp;->c:Lc/t/m/g/du;

    iget-object p2, p2, Lc/t/m/g/du;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lc/t/m/g/dw;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lc/t/m/g/dw;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object p2, p0, Lc/t/m/g/dw;->h:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
