.class public Lcom/tencent/lbssearch/object/param/SuggestionParam;
.super Ljava/lang/Object;
.source "SuggestionParam.java"

# interfaces
.implements Lcom/tencent/lbssearch/object/param/ParamObject;


# static fields
.field private static final FILTER:Ljava/lang/String; = "filter"

.field private static final KEYWORD:Ljava/lang/String; = "keyword"

.field private static final REGION:Ljava/lang/String; = "region"


# instance fields
.field private filter:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildParameters()Lcom/tencent/lbssearch/a/b/d;
    .locals 3

    .line 57
    new-instance v0, Lcom/tencent/lbssearch/a/b/d;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/b/d;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->keyword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->keyword:Ljava/lang/String;

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->region:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->region:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->filter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->filter:Ljava/lang/String;

    const-string v2, "filter"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public checkParams()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public varargs filter([Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/SuggestionParam;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/tencent/lbssearch/a/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->filter:Ljava/lang/String;

    return-object p0
.end method

.method public keyword(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/SuggestionParam;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/SuggestionParam;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/SuggestionParam;->region:Ljava/lang/String;

    return-object p0
.end method
