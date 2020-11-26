.class final Lc/t/m/g/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lc/t/m/g/aw;


# direct methods
.method constructor <init>(Lc/t/m/g/aw;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/ax;->a:Lc/t/m/g/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/ax;->a:Lc/t/m/g/aw;

    iget-object v2, v1, Lc/t/m/g/aw;->a:Lc/t/m/g/bj;

    invoke-virtual {v2, v0}, Lc/t/m/g/bj;->a(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lc/t/m/g/ce;->a([B)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lc/t/m/g/p;

    invoke-direct {v3, v0}, Lc/t/m/g/p;-><init>(Ljava/lang/String;)V

    const-string v0, "ipInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "resultMap"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3, v4}, Lc/t/m/g/aw;->a(Lc/t/m/g/p;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    iput-object v3, v1, Lc/t/m/g/aw;->b:Lc/t/m/g/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
