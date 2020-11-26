.class public Lcom/tencent/lbssearch/a/d/q;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public final a:Lcom/tencent/lbssearch/a/d/h;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/tencent/lbssearch/a/d/q;->a:Lcom/tencent/lbssearch/a/d/h;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbssearch/a/d/h;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/q;->a:Lcom/tencent/lbssearch/a/d/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/tencent/lbssearch/a/d/q;->a:Lcom/tencent/lbssearch/a/d/h;

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/tencent/lbssearch/a/d/q;->b:J

    return-void
.end method
