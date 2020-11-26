.class public Lcom/allenliu/versionchecklib/core/VersionParams;
.super Ljava/lang/Object;
.source "VersionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allenliu/versionchecklib/core/VersionParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/allenliu/versionchecklib/core/VersionParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customDownloadActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/allenliu/versionchecklib/core/VersionDialogActivity;",
            ">;"
        }
    .end annotation
.end field

.field private downloadAPKPath:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

.field public isForceRedownload:Z

.field private isShowDownloadingDialog:Z

.field private isShowNotification:Z

.field public isSilentDownload:Z

.field private onlyDownload:Z

.field private paramBundle:Landroid/os/Bundle;

.field private pauseRequestTime:J

.field private requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

.field private requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

.field private requestUrl:Ljava/lang/String;

.field private service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/allenliu/versionchecklib/core/AVersionService;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private updateMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 320
    new-instance v0, Lcom/allenliu/versionchecklib/core/VersionParams$1;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/core/VersionParams$1;-><init>()V

    sput-object v0, Lcom/allenliu/versionchecklib/core/VersionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestUrl:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadAPKPath:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->pauseRequestTime:J

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->values()[Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/http/HttpParams;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->customDownloadActivityClass:Ljava/lang/Class;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload:Z

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->service:Ljava/lang/Class;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->onlyDownload:Z

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->title:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadUrl:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->updateMsg:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->paramBundle:Landroid/os/Bundle;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/allenliu/versionchecklib/core/VersionParams$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/core/http/HttpHeaders;JLcom/allenliu/versionchecklib/core/http/HttpRequestMethod;Lcom/allenliu/versionchecklib/core/http/HttpParams;Ljava/lang/Class;ZZLjava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/allenliu/versionchecklib/core/http/HttpHeaders;",
            "J",
            "Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;",
            "Lcom/allenliu/versionchecklib/core/http/HttpParams;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/allenliu/versionchecklib/core/VersionDialogActivity;",
            ">;ZZ",
            "Ljava/lang/Class<",
            "+",
            "Lcom/allenliu/versionchecklib/core/AVersionService;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p11

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestUrl:Ljava/lang/String;

    move-object v3, p2

    .line 67
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadAPKPath:Ljava/lang/String;

    move-object v3, p3

    .line 68
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    move-wide v3, p4

    .line 69
    iput-wide v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->pauseRequestTime:J

    move-object v3, p6

    .line 70
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    move-object v3, p7

    .line 71
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-object v3, p8

    .line 72
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->customDownloadActivityClass:Ljava/lang/Class;

    move v3, p9

    .line 73
    iput-boolean v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload:Z

    move v3, p10

    .line 74
    iput-boolean v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload:Z

    .line 75
    iput-object v2, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->service:Ljava/lang/Class;

    move/from16 v3, p12

    .line 76
    iput-boolean v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->onlyDownload:Z

    move-object/from16 v3, p13

    .line 77
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->title:Ljava/lang/String;

    move-object/from16 v3, p14

    .line 78
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadUrl:Ljava/lang/String;

    move-object/from16 v3, p15

    .line 79
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->updateMsg:Ljava/lang/String;

    move-object/from16 v3, p16

    .line 80
    iput-object v3, v0, Lcom/allenliu/versionchecklib/core/VersionParams;->paramBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "requestUrl is needed."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "you must define your service which extends AVService."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$1002(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadAPKPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->updateMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpHeaders;)Lcom/allenliu/versionchecklib/core/http/HttpHeaders;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpParams;)Lcom/allenliu/versionchecklib/core/http/HttpParams;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    return-object p1
.end method

.method static synthetic access$202(Lcom/allenliu/versionchecklib/core/VersionParams;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->pauseRequestTime:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;)Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object p1
.end method

.method static synthetic access$402(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->customDownloadActivityClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$502(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->onlyDownload:Z

    return p1
.end method

.method static synthetic access$602(Lcom/allenliu/versionchecklib/core/VersionParams;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->service:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$702(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification:Z

    return p1
.end method

.method static synthetic access$802(Lcom/allenliu/versionchecklib/core/VersionParams;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog:Z

    return p1
.end method

.method static synthetic access$902(Lcom/allenliu/versionchecklib/core/VersionParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->paramBundle:Landroid/os/Bundle;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomDownloadActivityClass()Ljava/lang/Class;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->customDownloadActivityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDownloadAPKPath()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadAPKPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaders()Lcom/allenliu/versionchecklib/core/http/HttpHeaders;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    return-object v0
.end method

.method public getParamBundle()Landroid/os/Bundle;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->paramBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPauseRequestTime()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->pauseRequestTime:J

    return-wide v0
.end method

.method public getRequestMethod()Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object v0
.end method

.method public getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/allenliu/versionchecklib/core/AVersionService;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->service:Ljava/lang/Class;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMsg()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->updateMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isForceRedownload()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload:Z

    return v0
.end method

.method public isOnlyDownload()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->onlyDownload:Z

    return v0
.end method

.method public isShowDownloadingDialog()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog:Z

    return v0
.end method

.method public isShowNotification()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification:Z

    return v0
.end method

.method public isSilentDownload()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload:Z

    return v0
.end method

.method public setParamBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->paramBundle:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 280
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadAPKPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 283
    iget-wide v0, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->pauseRequestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 286
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->customDownloadActivityClass:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 287
    iget-boolean p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isForceRedownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 288
    iget-boolean p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 289
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->service:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 290
    iget-boolean p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->onlyDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 291
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->updateMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->paramBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 295
    iget-boolean p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 296
    iget-boolean p2, p0, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
