.class Lcom/tencent/lbssearch/a/a/b/a/h$1;
.super Lcom/tencent/lbssearch/a/a/b/a/h$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/a/b/a/h;->a(Lcom/tencent/lbssearch/a/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/tencent/lbssearch/a/a/c/a;ZZ)Lcom/tencent/lbssearch/a/a/b/a/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/tencent/lbssearch/a/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/lbssearch/a/a/w<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/tencent/lbssearch/a/a/f;

.field final synthetic c:Lcom/tencent/lbssearch/a/a/c/a;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/tencent/lbssearch/a/a/b/a/h;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/b/a/h;Ljava/lang/String;ZZLcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/c/a;Ljava/lang/reflect/Field;Z)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->f:Lcom/tencent/lbssearch/a/a/b/a/h;

    iput-object p5, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->b:Lcom/tencent/lbssearch/a/a/f;

    iput-object p6, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->c:Lcom/tencent/lbssearch/a/a/c/a;

    iput-object p7, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/lbssearch/a/a/b/a/h$b;-><init>(Ljava/lang/String;ZZ)V

    .line 83
    invoke-virtual {p5, p6}, Lcom/tencent/lbssearch/a/a/f;->a(Lcom/tencent/lbssearch/a/a/c/a;)Lcom/tencent/lbssearch/a/a/w;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->a:Lcom/tencent/lbssearch/a/a/w;

    return-void
.end method


# virtual methods
.method a(Lcom/tencent/lbssearch/a/a/d/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->a:Lcom/tencent/lbssearch/a/a/w;

    invoke-virtual {v0, p1}, Lcom/tencent/lbssearch/a/a/w;->b(Lcom/tencent/lbssearch/a/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 95
    iget-boolean v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->e:Z

    if-nez v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 88
    new-instance v0, Lcom/tencent/lbssearch/a/a/b/a/k;

    iget-object v1, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->b:Lcom/tencent/lbssearch/a/a/f;

    iget-object v2, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->a:Lcom/tencent/lbssearch/a/a/w;

    iget-object v3, p0, Lcom/tencent/lbssearch/a/a/b/a/h$1;->c:Lcom/tencent/lbssearch/a/a/c/a;

    .line 89
    invoke-virtual {v3}, Lcom/tencent/lbssearch/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/lbssearch/a/a/b/a/k;-><init>(Lcom/tencent/lbssearch/a/a/f;Lcom/tencent/lbssearch/a/a/w;Ljava/lang/reflect/Type;)V

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/tencent/lbssearch/a/a/w;->a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V

    return-void
.end method
