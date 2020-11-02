.class public Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;
.super Ljava/lang/Object;
.source "SearchParam.java"

# interfaces
.implements Lcom/tencent/lbssearch/object/param/SearchParam$Boundary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lbssearch/object/param/SearchParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nearby"
.end annotation


# instance fields
.field private point:Lcom/tencent/lbssearch/object/Location;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public point(Lcom/tencent/lbssearch/object/Location;)Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;->point:Lcom/tencent/lbssearch/object/Location;

    return-object p0
.end method

.method public r(I)Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;
    .locals 0

    .line 97
    iput p1, p0, Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;->r:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nearby("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;->point:Lcom/tencent/lbssearch/object/Location;

    iget v1, v1, Lcom/tencent/lbssearch/object/Location;->lat:F

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;->point:Lcom/tencent/lbssearch/object/Location;

    iget v2, v2, Lcom/tencent/lbssearch/object/Location;->lng:F

    .line 85
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/lbssearch/object/param/SearchParam$Nearby;->r:I

    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
