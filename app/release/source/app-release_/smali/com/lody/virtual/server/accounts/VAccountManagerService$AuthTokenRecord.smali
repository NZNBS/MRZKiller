.class final Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;
.super Ljava/lang/Object;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AuthTokenRecord"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public authToken:Ljava/lang/String;

.field private authTokenType:Ljava/lang/String;

.field public expiryEpochMillis:J

.field private packageName:Ljava/lang/String;

.field public userId:I


# direct methods
.method constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    .line 1046
    iput-object p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    .line 1047
    iput-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1048
    iput-object p4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    .line 1037
    iput-object p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    .line 1038
    iput-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1039
    iput-object p4, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1040
    iput-object p5, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authToken:Ljava/lang/String;

    .line 1041
    iput-wide p6, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->expiryEpochMillis:J

    return-void
.end method

.method static synthetic access$700(Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;)Ljava/lang/String;
    .locals 0

    .line 1026
    iget-object p0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1055
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1057
    :cond_1
    check-cast p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;

    .line 1058
    iget v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    iget v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    .line 1059
    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    iget-object v3, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1060
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1061
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1066
    iget v0, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->account:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->authTokenType:Ljava/lang/String;

    .line 1067
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthTokenRecord;->packageName:Ljava/lang/String;

    .line 1068
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
