.class Lcom/tencent/lbssearch/a/a/b/c$1;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/a/b/c;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/lbssearch/a/a/b/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/lbssearch/a/a/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/tencent/lbssearch/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/b/c;Lcom/tencent/lbssearch/a/a/h;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/c$1;->c:Lcom/tencent/lbssearch/a/a/b/c;

    iput-object p2, p0, Lcom/tencent/lbssearch/a/a/b/c$1;->a:Lcom/tencent/lbssearch/a/a/h;

    iput-object p3, p0, Lcom/tencent/lbssearch/a/a/b/c$1;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/c$1;->a:Lcom/tencent/lbssearch/a/a/h;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/c$1;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/tencent/lbssearch/a/a/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
