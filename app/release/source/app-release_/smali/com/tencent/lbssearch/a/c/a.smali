.class public Lcom/tencent/lbssearch/a/c/a;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/lbssearch/a/c/a;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 42
    invoke-static {v0, p0, v1}, Lcom/tencent/lbssearch/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 2

    const/16 v0, 0x65

    if-eq v0, p2, :cond_0

    .line 61
    sget-object v1, Lcom/tencent/lbssearch/a/c/a;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "js"

    :cond_1
    if-ne v0, p2, :cond_2

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x77

    if-ne v0, p2, :cond_3

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-ne v0, p2, :cond_4

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v0, 0x69

    if-ne v0, p2, :cond_5

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x76

    .line 54
    invoke-static {v0, p0, v1}, Lcom/tencent/lbssearch/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method
