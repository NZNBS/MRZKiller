.class public Lcom/tencent/lbssearch/object/param/TranslateParam;
.super Ljava/lang/Object;
.source "TranslateParam.java"

# interfaces
.implements Lcom/tencent/lbssearch/object/param/ParamObject;


# static fields
.field private static final LOCATIONS:Ljava/lang/String; = "locations"

.field private static final TYPES:Ljava/lang/String; = "type"


# instance fields
.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/lbssearch/object/Location;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->DEFAULT:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    iput-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->type:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    return-void
.end method


# virtual methods
.method public addLocation(Lcom/tencent/lbssearch/object/Location;)Lcom/tencent/lbssearch/object/param/TranslateParam;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public buildParameters()Lcom/tencent/lbssearch/a/b/d;
    .locals 6

    .line 68
    new-instance v0, Lcom/tencent/lbssearch/a/b/d;

    invoke-direct {v0}, Lcom/tencent/lbssearch/a/b/d;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    .line 71
    :goto_0
    iget-object v4, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-eqz v1, :cond_0

    const-string v4, ";"

    goto :goto_1

    :cond_0
    move-object v4, v2

    .line 76
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/lbssearch/object/Location;

    iget v4, v4, Lcom/tencent/lbssearch/object/Location;->lat:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/lbssearch/object/Location;

    iget v4, v4, Lcom/tencent/lbssearch/object/Location;->lng:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "locations"

    .line 79
    invoke-virtual {v0, v1, v3}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2
    sget-object v1, Lcom/tencent/lbssearch/object/param/TranslateParam$1;->$SwitchMap$com$tencent$lbssearch$object$param$CoordTypeEnum:[I

    iget-object v2, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->type:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    invoke-virtual {v2}, Lcom/tencent/lbssearch/object/param/CoordTypeEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "type"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "6"

    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v1, "5"

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v1, "4"

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v1, "3"

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string v1, "2"

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string v1, "1"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public checkParams()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public coord_type(Lcom/tencent/lbssearch/object/param/CoordTypeEnum;)Lcom/tencent/lbssearch/object/param/TranslateParam;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->type:Lcom/tencent/lbssearch/object/param/CoordTypeEnum;

    return-object p0
.end method

.method public varargs locations([Lcom/tencent/lbssearch/object/Location;)Lcom/tencent/lbssearch/object/param/TranslateParam;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/tencent/lbssearch/object/param/TranslateParam;->locations:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
