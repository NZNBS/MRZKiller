.class Lcom/tencent/lbssearch/a/a/b/c$11;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/a/b/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/tencent/lbssearch/a/a/b/h;
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
.field final synthetic a:Lcom/tencent/lbssearch/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/tencent/lbssearch/a/a/b/c;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/c$11;->a:Lcom/tencent/lbssearch/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method
