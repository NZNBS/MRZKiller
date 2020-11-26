.class final enum Lc/t/m/g/cw$a;
.super Ljava/lang/Enum;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/t/m/g/cw$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/t/m/g/cw$a;

.field public static final enum b:Lc/t/m/g/cw$a;

.field public static final enum c:Lc/t/m/g/cw$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lc/t/m/g/cw$a;

    const-string v1, "UNKNOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cw$a;->a:Lc/t/m/g/cw$a;

    new-instance v0, Lc/t/m/g/cw$a;

    const-string v1, "MOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cw$a;->b:Lc/t/m/g/cw$a;

    new-instance v0, Lc/t/m/g/cw$a;

    const-string v1, "STATIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lc/t/m/g/cw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/t/m/g/cw$a;->c:Lc/t/m/g/cw$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
