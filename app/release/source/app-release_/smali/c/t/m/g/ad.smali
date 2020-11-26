.class public abstract Lc/t/m/g/ad;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:[B

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:J

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/ad;->b:Z

    iput-boolean v0, p0, Lc/t/m/g/ad;->h:Z

    iput-boolean v0, p0, Lc/t/m/g/ad;->i:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lc/t/m/g/ah;
.end method

.method public abstract a(Z)V
.end method
