.class public Lcom/tencent/lbssearch/object/param/Address2GeoParam;
.super Ljava/lang/Object;
.source "Address2GeoParam.java"

# interfaces
.implements Lcom/tencent/lbssearch/object/param/ParamObject;


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final REGION:Ljava/lang/String; = "region"


# instance fields
.field private address:Ljava/lang/String;

.field private region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public address(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/Address2GeoParam;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->address:Ljava/lang/String;

    return-object p0
.end method

.method public buildParameters()Lcom/tencent/lbssearch/a/b/d;
    .locals 3

    .line 45
    new-instance v0, Lcom/tencent/lbssearch/a/b/d;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/b/d;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->address:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->region:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->region:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public checkParams()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public region(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/Address2GeoParam;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/Address2GeoParam;->region:Ljava/lang/String;

    return-object p0
.end method
