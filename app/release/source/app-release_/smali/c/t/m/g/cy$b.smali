.class final enum Lc/t/m/g/cy$b;
.super Ljava/lang/Enum;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/t/m/g/cy$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/t/m/g/cy$b;

.field public static final enum b:Lc/t/m/g/cy$b;

.field public static final enum c:Lc/t/m/g/cy$b;

.field public static final enum d:Lc/t/m/g/cy$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 208
    new-instance v0, Lc/t/m/g/cy$b;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cy$b;->a:Lc/t/m/g/cy$b;

    new-instance v0, Lc/t/m/g/cy$b;

    const-string v1, "Daemon"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cy$b;->b:Lc/t/m/g/cy$b;

    new-instance v0, Lc/t/m/g/cy$b;

    const-string v1, "Single"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cy$b;->c:Lc/t/m/g/cy$b;

    new-instance v0, Lc/t/m/g/cy$b;

    const-string v1, "Stop"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cy$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cy$b;->d:Lc/t/m/g/cy$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
