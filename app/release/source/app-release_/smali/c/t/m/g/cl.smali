.class public final Lc/t/m/g/cl;
.super Lc/t/m/g/cm;
.source "TL"

# interfaces
.implements Lc/t/m/g/ck;


# static fields
.field public static final a:Lc/t/m/g/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lc/t/m/g/cl;

    invoke-direct {v0}, Lc/t/m/g/cl;-><init>()V

    sput-object v0, Lc/t/m/g/cl;->a:Lc/t/m/g/cl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "dummy"

    .line 20
    invoke-direct {p0, v0, v0}, Lc/t/m/g/cm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Lc/t/m/g/ck;
    .locals 1

    .line 16
    sget-object v0, Lc/t/m/g/cl;->a:Lc/t/m/g/cl;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
