.class public Lcom/tencent/lbssearch/object/param/StreetViewParam;
.super Ljava/lang/Object;
.source "StreetViewParam.java"

# interfaces
.implements Lcom/tencent/lbssearch/object/param/ParamObject;


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final RADIUS:Ljava/lang/String; = "radius"


# instance fields
.field private id:Ljava/lang/String;

.field private location:Lcom/tencent/lbssearch/object/Location;

.field private radius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildParameters()Lcom/tencent/lbssearch/a/b/d;
    .locals 3

    .line 58
    new-instance v0, Lcom/tencent/lbssearch/a/b/d;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/b/d;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->location:Lcom/tencent/lbssearch/object/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->location:Lcom/tencent/lbssearch/object/Location;

    iget v2, v2, Lcom/tencent/lbssearch/object/Location;->lat:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->location:Lcom/tencent/lbssearch/object/Location;

    iget v2, v2, Lcom/tencent/lbssearch/object/Location;->lng:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    iget v1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->radius:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public checkParams()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->location:Lcom/tencent/lbssearch/object/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public id(Ljava/lang/String;)Lcom/tencent/lbssearch/object/param/StreetViewParam;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->id:Ljava/lang/String;

    return-object p0
.end method

.method public location(Lcom/tencent/lbssearch/object/Location;)Lcom/tencent/lbssearch/object/param/StreetViewParam;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->location:Lcom/tencent/lbssearch/object/Location;

    return-object p0
.end method

.method public radius(I)Lcom/tencent/lbssearch/object/param/StreetViewParam;
    .locals 0

    .line 45
    iput p1, p0, Lcom/tencent/lbssearch/object/param/StreetViewParam;->radius:I

    return-object p0
.end method
