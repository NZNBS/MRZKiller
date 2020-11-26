.class public final enum Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;
.super Ljava/lang/Enum;
.source "HttpRequestMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

.field public static final enum GET:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

.field public static final enum POST:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

.field public static final enum POSTJSON:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->POST:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    new-instance v1, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->GET:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    new-instance v3, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    const-string v5, "POSTJSON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->POSTJSON:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->$VALUES:[Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;
    .locals 1

    .line 7
    const-class v0, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;
    .locals 1

    .line 7
    sget-object v0, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->$VALUES:[Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    invoke-virtual {v0}, [Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object v0
.end method
