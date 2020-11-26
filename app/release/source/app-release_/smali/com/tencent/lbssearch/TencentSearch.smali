.class public Lcom/tencent/lbssearch/TencentSearch;
.super Ljava/lang/Object;
.source "TencentSearch.java"

# interfaces
.implements Lcom/tencent/lbssearch/ITencentSearch;


# instance fields
.field private mApi:Lcom/tencent/lbssearch/ITencentSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/tencent/lbssearch/b/a;

    invoke-direct {v0, p1}, Lcom/tencent/lbssearch/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    return-void
.end method


# virtual methods
.method public address2geo(Lcom/tencent/lbssearch/object/param/Address2GeoParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->address2geo(Lcom/tencent/lbssearch/object/param/Address2GeoParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public geo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->geo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getDirection(Lcom/tencent/lbssearch/object/param/RoutePlanningParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->getDirection(Lcom/tencent/lbssearch/object/param/RoutePlanningParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getDistrictChildren(Lcom/tencent/lbssearch/object/param/DistrictChildrenParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->getDistrictChildren(Lcom/tencent/lbssearch/object/param/DistrictChildrenParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getDistrictList(Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1}, Lcom/tencent/lbssearch/ITencentSearch;->getDistrictList(Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public getpano(Lcom/tencent/lbssearch/object/param/StreetViewParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->getpano(Lcom/tencent/lbssearch/object/param/StreetViewParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public mBikeGeo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->mBikeGeo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public search(Lcom/tencent/lbssearch/object/param/SearchParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->search(Lcom/tencent/lbssearch/object/param/SearchParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public suggestion(Lcom/tencent/lbssearch/object/param/SuggestionParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->suggestion(Lcom/tencent/lbssearch/object/param/SuggestionParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method

.method public translate(Lcom/tencent/lbssearch/object/param/TranslateParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/tencent/lbssearch/TencentSearch;->mApi:Lcom/tencent/lbssearch/ITencentSearch;

    invoke-interface {v0, p1, p2}, Lcom/tencent/lbssearch/ITencentSearch;->translate(Lcom/tencent/lbssearch/object/param/TranslateParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V

    return-void
.end method
