.class final Lc/t/m/g/ci$2;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/t/m/g/ci;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lc/t/m/g/ci;


# direct methods
.method constructor <init>(Lc/t/m/g/ci;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lc/t/m/g/ci$2;->a:Lc/t/m/g/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lc/t/m/g/ci$2;->a:Lc/t/m/g/ci;

    invoke-virtual {v0}, Lc/t/m/g/ci;->l()V

    .line 144
    iget-object v0, p0, Lc/t/m/g/ci$2;->a:Lc/t/m/g/ci;

    invoke-static {v0}, Lc/t/m/g/ci;->a(Lc/t/m/g/ci;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
