.class final Lc/t/m/g/da$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/da;-><init>(Lc/t/m/g/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/da;


# direct methods
.method constructor <init>(Lc/t/m/g/da;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lc/t/m/g/da$1;->a:Lc/t/m/g/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lc/t/m/g/da$1;->a:Lc/t/m/g/da;

    invoke-static {v0}, Lc/t/m/g/da;->a(Lc/t/m/g/da;)V

    .line 47
    iget-object v0, p0, Lc/t/m/g/da$1;->a:Lc/t/m/g/da;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/t/m/g/da;->a:Z

    return-void
.end method
