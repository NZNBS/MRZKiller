.class public final Lc/t/m/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Lc/t/m/g/d;


# static fields
.field private static a:Lc/t/m/g/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/t/m/g/g;

    invoke-direct {v0}, Lc/t/m/g/g;-><init>()V

    sput-object v0, Lc/t/m/g/g;->a:Lc/t/m/g/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/t/m/g/g;
    .locals 1

    sget-object v0, Lc/t/m/g/g;->a:Lc/t/m/g/g;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Lc/t/m/g/e;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lc/t/m/g/i;

    invoke-direct {v0, p1, p2}, Lc/t/m/g/i;-><init>(Ljava/lang/String;[B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lc/t/m/g/e;)Lc/t/m/g/f;
    .locals 4

    if-eqz p1, :cond_4

    instance-of v0, p1, Lc/t/m/g/i;

    if-eqz v0, :cond_3

    check-cast p1, Lc/t/m/g/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, v1, v2}, Lc/t/m/g/ce;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lc/t/m/g/i;->k:Ljava/lang/String;

    const-string v0, "app_http_use_proxy"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    new-instance v0, Lc/t/m/g/k;

    invoke-direct {v0, p1}, Lc/t/m/g/k;-><init>(Lc/t/m/g/i;)V

    iget v3, p1, Lc/t/m/g/i;->g:I

    if-gtz v3, :cond_0

    invoke-virtual {v0}, Lc/t/m/g/j;->a()Lc/t/m/g/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/t/m/g/i;->a(Lc/t/m/g/ah;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/t/m/g/w$a;->a()Lc/t/m/g/w;

    move-result-object v1

    iget-object v1, v1, Lc/t/m/g/w;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lc/t/m/g/h;

    invoke-direct {v3, v0, p1}, Lc/t/m/g/h;-><init>(Lc/t/m/g/j;Lc/t/m/g/i;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lc/t/m/g/i;->c()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lc/t/m/g/i;->d()Lc/t/m/g/ah;

    move-result-object v0

    if-eqz v1, :cond_1

    iput-boolean v2, p1, Lc/t/m/g/i;->j:Z

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lc/t/m/g/ah;

    const/16 v1, -0xe

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "force return timeout:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lc/t/m/g/i;->g:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lc/t/m/g/ah;-><init>(ILjava/lang/String;)V

    :cond_2
    new-instance p1, Lc/t/m/g/f;

    invoke-direct {p1, v0}, Lc/t/m/g/f;-><init>(Lc/t/m/g/ah;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "execute...IHttpRequest should be create by API:createRequest"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "execute...IHttpRequest is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
