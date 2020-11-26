.class final Lcom/tencent/lbssearch/a/b/a$1;
.super Ljava/lang/Object;
.source "HttpProvider.java"

# interfaces
.implements Lcom/tencent/lbssearch/a/d/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/lbssearch/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/lbssearch/a/b/d;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/lbssearch/a/d/l$b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/tencent/lbssearch/a/b/a$1;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/tencent/lbssearch/a/b/a$1;->b:Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/lbssearch/a/b/a$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http get return data:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/lbssearch/a/c/a;->b(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/lbssearch/a/b/a$1;->a:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/tencent/lbssearch/a/b/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/lbssearch/httpresponse/BaseObject;

    .line 48
    iget-object v0, p0, Lcom/tencent/lbssearch/a/b/a$1;->b:Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/tencent/lbssearch/httpresponse/BaseObject;->isStatusOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/lbssearch/a/b/a$1;->b:Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;

    iget v1, p1, Lcom/tencent/lbssearch/httpresponse/BaseObject;->status:I

    invoke-interface {v0, v1, p1}, Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;->onSuccess(ILcom/tencent/lbssearch/httpresponse/BaseObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/tencent/lbssearch/a/b/a$1;->b:Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;

    iget v2, p1, Lcom/tencent/lbssearch/httpresponse/BaseObject;->status:I

    iget-object p1, p1, Lcom/tencent/lbssearch/httpresponse/BaseObject;->message:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/tencent/lbssearch/a/b/a$1;->b:Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;

    const/4 v1, -0x1

    const-string v2, "unknown error"

    invoke-interface {p1, v1, v2, v0}, Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
