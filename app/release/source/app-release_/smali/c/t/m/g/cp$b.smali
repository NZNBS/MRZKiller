.class final Lc/t/m/g/cp$b;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/t/m/g/co;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:J

.field d:Landroid/location/Location;

.field e:Z

.field final f:[F


# direct methods
.method constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cp$b;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lc/t/m/g/cp$b;->b:Z

    const-wide/32 v1, 0xea60

    .line 108
    iput-wide v1, p0, Lc/t/m/g/cp$b;->c:J

    const/4 v1, 0x0

    .line 114
    iput-object v1, p0, Lc/t/m/g/cp$b;->d:Landroid/location/Location;

    .line 122
    iput-boolean v0, p0, Lc/t/m/g/cp$b;->e:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 125
    fill-array-data v0, :array_0

    iput-object v0, p0, Lc/t/m/g/cp$b;->f:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method
