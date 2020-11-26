.class public interface abstract Lcom/tencent/lbssearch/ITencentSearch;
.super Ljava/lang/Object;
.source "ITencentSearch.java"


# virtual methods
.method public abstract address2geo(Lcom/tencent/lbssearch/object/param/Address2GeoParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract geo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract getDirection(Lcom/tencent/lbssearch/object/param/RoutePlanningParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract getDistrictChildren(Lcom/tencent/lbssearch/object/param/DistrictChildrenParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract getDistrictList(Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract getpano(Lcom/tencent/lbssearch/object/param/StreetViewParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract mBikeGeo2address(Lcom/tencent/lbssearch/object/param/Geo2AddressParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract search(Lcom/tencent/lbssearch/object/param/SearchParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract suggestion(Lcom/tencent/lbssearch/object/param/SuggestionParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method

.method public abstract translate(Lcom/tencent/lbssearch/object/param/TranslateParam;Lcom/tencent/lbssearch/httpresponse/HttpResponseListener;)V
.end method
