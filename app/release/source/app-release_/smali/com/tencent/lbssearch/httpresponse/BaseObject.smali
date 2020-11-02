.class public Lcom/tencent/lbssearch/httpresponse/BaseObject;
.super Ljava/lang/Object;
.source "BaseObject.java"


# instance fields
.field public message:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isStatusOk()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/tencent/lbssearch/httpresponse/BaseObject;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
