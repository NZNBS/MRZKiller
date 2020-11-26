.class abstract Lcom/tencent/lbssearch/a/a/b/a/h$b;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/a/a/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final g:Ljava/lang/String;

.field final h:Z

.field final i:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/tencent/lbssearch/a/a/b/a/h$b;->g:Ljava/lang/String;

    .line 140
    iput-boolean p2, p0, Lcom/tencent/lbssearch/a/a/b/a/h$b;->h:Z

    .line 141
    iput-boolean p3, p0, Lcom/tencent/lbssearch/a/a/b/a/h$b;->i:Z

    return-void
.end method


# virtual methods
.method abstract a(Lcom/tencent/lbssearch/a/a/d/a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract a(Lcom/tencent/lbssearch/a/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
