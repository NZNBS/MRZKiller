.class public Lcom/tencent/lbssearch/a/d/h;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:J


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/tencent/lbssearch/a/d/h;->a:I

    .line 38
    iput-object p2, p0, Lcom/tencent/lbssearch/a/d/h;->b:[B

    .line 39
    iput-object p3, p0, Lcom/tencent/lbssearch/a/d/h;->c:Ljava/util/Map;

    .line 40
    iput-boolean p4, p0, Lcom/tencent/lbssearch/a/d/h;->d:Z

    .line 41
    iput-wide p5, p0, Lcom/tencent/lbssearch/a/d/h;->e:J

    return-void
.end method
