.class public Lcom/tencent/lbssearch/b/a;
.super Ljava/lang/Object;
.source "TencentSearchImpl.java"

# interfaces
.implements Lcom/tencent/lbssearch/ITencentSearch;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/tencent/lbssearch/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/tencent/lbssearch/object/param/ParamObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 107
    invoke-interface {p2}, Lcom/tencent/lbssearch/object/param/ParamObject;->checkParams()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/tencent/lbssearch/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/lbssearch/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    const-string p3, "\u8bf7\u7533\u8bf7\u5e76\u586b\u5199\u5f00\u53d1\u8005\u5bc6\u94a5"

    .line 115
    invoke-interface {p4, p1, p3, p2}, Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;->onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 120
    :cond_2
    invoke-interface {p2}, Lcom/tencent/lbssearch/object/param/ParamObject;->buildParameters()Lcom/tencent/lbssearch/a/b/d;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v1, "key"

    .line 122
    invoke-virtual {p2, v1, v0}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "output"

    const-string v1, "json"

    .line 123
    invoke-virtual {p2, v0, v1}, Lcom/tencent/lbssearch/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/tencent/lbssearch/b/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/lbssearch/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/lbssearch/a/b/d;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "wrong parameter"

    .line 108
    invoke-static {p1}, Lcom/tencent/lbssearch/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public address2geo(Lcom/tencent/lbssearch/object/param/Address2GeoParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 63
    const-class v0, Lcom/tencent/lbssearch/object/result/Address2GeoResultObject;

    const-string v1, "https://apis.map.qq.com/ws/geocoder/v1"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public geo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 57
    const-class v0, Lcom/tencent/lbssearch/object/result/Geo2AddressResultObject;

    const-string v1, "https://apis.map.qq.com/ws/geocoder/v1"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getDirection(Lcom/tencent/lbssearch/object/param/RoutePlanningParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 100
    invoke-virtual {p1}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/lbssearch/object/param/RoutePlanningParam;->getResultClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getDistrictChildren(Lcom/tencent/lbssearch/object/param/DistrictChildrenParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 83
    const-class v0, Lcom/tencent/lbssearch/object/result/DistrictResultObject;

    const-string v1, "https://apis.map.qq.com/ws/district/v1/getchildren"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getDistrictList(Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 3

    .line 77
    new-instance v0, Lcom/tencent/lbssearch/object/param/DistrictChildrenParam;

    invoke-direct {v0}, Lcom/tencent/lbssearch/object/param/DistrictChildrenParam;-><init>()V

    const-class v1, Lcom/tencent/lbssearch/object/result/DistrictResultObject;

    const-string v2, "https://apis.map.qq.com/ws/district/v1/list"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getpano(Lcom/tencent/lbssearch/object/param/StreetViewParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 93
    const-class v0, Lcom/tencent/lbssearch/object/result/StreetViewResultObject;

    const-string v1, "https://apis.map.qq.com/ws/streetview/v1/getpano"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public mBikeGeo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 72
    const-class v0, Lcom/tencent/lbssearch/object/result/MBikeAddress2GeoResultObject;

    const-string v1, "https://apis.map.qq.com/customapi/mobike/geocoder"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public search(Lcom/tencent/lbssearch/object/param/SearchParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 45
    const-class v0, Lcom/tencent/lbssearch/object/result/SearchResultObject;

    const-string v1, "https://apis.map.qq.com/ws/place/v1/search"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public suggestion(Lcom/tencent/lbssearch/object/param/SuggestionParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 51
    const-class v0, Lcom/tencent/lbssearch/object/result/SuggestionResultObject;

    const-string v1, "https://apis.map.qq.com/ws/place/v1/suggestion"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public translate(Lcom/tencent/lbssearch/object/param/TranslateParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 2

    .line 88
    const-class v0, Lcom/tencent/lbssearch/object/result/TranslateResultObject;

    const-string v1, "https://apis.map.qq.com/ws/coord/v1/translate"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/tencent/lbssearch/b/a;->a(Ljava/lang/String;Lcom/tencent/lbssearch/object/param/ParamObject;Ljava/lang/Class;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method
