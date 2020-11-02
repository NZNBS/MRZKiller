.class public final Lc/t/m/g/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lc/t/m/g/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/t/m/g/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/t/m/g/w;-><init>(B)V

    sput-object v0, Lc/t/m/g/w$a;->a:Lc/t/m/g/w;

    return-void
.end method

.method public static synthetic a()Lc/t/m/g/w;
    .locals 1

    sget-object v0, Lc/t/m/g/w$a;->a:Lc/t/m/g/w;

    return-object v0
.end method
