.class final Lc/t/m/g/dd$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/dd;-><init>(Lc/t/m/g/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/dd;


# direct methods
.method constructor <init>(Lc/t/m/g/dd;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lc/t/m/g/dd$1;->a:Lc/t/m/g/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lc/t/m/g/dd$1;->a:Lc/t/m/g/dd;

    invoke-static {v0}, Lc/t/m/g/dd;->a(Lc/t/m/g/dd;)Z

    .line 72
    iget-object v0, p0, Lc/t/m/g/dd$1;->a:Lc/t/m/g/dd;

    invoke-static {v0}, Lc/t/m/g/dd;->b(Lc/t/m/g/dd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/t/m/g/dd;->b(J)V

    .line 73
    iget-object v0, p0, Lc/t/m/g/dd$1;->a:Lc/t/m/g/dd;

    invoke-static {v0}, Lc/t/m/g/dd;->b(Lc/t/m/g/dd;)J

    return-void
.end method
