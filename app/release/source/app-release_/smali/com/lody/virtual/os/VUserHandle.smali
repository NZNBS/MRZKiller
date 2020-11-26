.class public final Lcom/lody/virtual/os/VUserHandle;
.super Ljava/lang/Object;
.source "VUserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALL:Lcom/lody/virtual/os/VUserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/os/VUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Lcom/lody/virtual/os/VUserHandle;

.field public static final CURRENT_OR_SELF:Lcom/lody/virtual/os/VUserHandle;

.field public static final FIRST_ISOLATED_UID:I = 0x182b8

.field public static final FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final LAST_ISOLATED_UID:I = 0x1869f

.field public static final LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Lcom/lody/virtual/os/VUserHandle;

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field private static final userHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/lody/virtual/os/VUserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->ALL:Lcom/lody/virtual/os/VUserHandle;

    .line 47
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->CURRENT:Lcom/lody/virtual/os/VUserHandle;

    .line 57
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->CURRENT_OR_SELF:Lcom/lody/virtual/os/VUserHandle;

    .line 66
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->OWNER:Lcom/lody/virtual/os/VUserHandle;

    .line 95
    new-instance v0, Lcom/lody/virtual/os/VUserHandle$1;

    invoke-direct {v0}, Lcom/lody/virtual/os/VUserHandle$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/lody/virtual/os/VUserHandle;->userHandles:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    return-void
.end method

.method public static accept(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 138
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static formatUid(I)Ljava/lang/String;
    .locals 1

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    invoke-static {v0, p0}, Lcom/lody/virtual/os/VUserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .locals 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 286
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x75

    .line 288
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 289
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 290
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p1

    const v1, 0x182b8

    if-lt p1, v1, :cond_1

    const v2, 0x1869f

    if-gt p1, v2, :cond_1

    const/16 v0, 0x69

    .line 292
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    sub-int/2addr p1, v1

    .line 293
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    const/16 v1, 0x61

    .line 295
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    sub-int/2addr p1, v0

    .line 296
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x73

    .line 298
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 299
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    return-void
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x75

    .line 252
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p1

    const v1, 0x182b8

    if-lt p1, v1, :cond_1

    const v2, 0x1869f

    if-gt p1, v2, :cond_1

    const/16 v0, 0x69

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v1

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-lt p1, v0, :cond_2

    const/16 v1, 0x61

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v0, 0x73

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static getAppId(I)I
    .locals 1

    const v0, 0x186a0

    .line 228
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getAppIdFromSharedAppGid(I)I
    .locals 3

    .line 240
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    const v1, 0xc350

    if-lt v0, v1, :cond_0

    const v2, 0xea5f

    if-gt v0, v2, :cond_0

    add-int/lit16 v0, v0, 0x2710

    sub-int/2addr v0, v1

    return v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a shared app gid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCallingUserHandle()Lcom/lody/virtual/os/VUserHandle;
    .locals 3

    .line 201
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    .line 202
    sget-object v1, Lcom/lody/virtual/os/VUserHandle;->userHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/os/VUserHandle;

    if-nez v2, :cond_0

    .line 205
    new-instance v2, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v2, v0}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    .line 206
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v2
.end method

.method public static getCallingUserId()I
    .locals 1

    .line 190
    invoke-static {}, Lcom/lody/virtual/os/VBinder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getUid(II)I
    .locals 1

    const v0, 0x186a0

    mul-int p0, p0, v0

    .line 217
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserId(I)I
    .locals 1

    const v0, 0x186a0

    .line 182
    div-int/2addr p0, v0

    return p0
.end method

.method public static isApp(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 169
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isIsolated(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p0

    const v1, 0x182b8

    if-lt p0, v1, :cond_0

    const v1, 0x1869f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static final isSameApp(II)Z
    .locals 0

    .line 153
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameUser(II)Z
    .locals 0

    .line 134
    invoke-static {p0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static myAppId()I
    .locals 1

    .line 232
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static myUserHandle()Lcom/lody/virtual/os/VUserHandle;
    .locals 2

    .line 347
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    return-object v0
.end method

.method public static myUserId()I
    .locals 1

    .line 310
    invoke-static {}, Lcom/lody/virtual/client/VClientImpl;->get()Lcom/lody/virtual/client/VClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/VClientImpl;->getVUid()I

    move-result v0

    invoke-static {v0}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lcom/lody/virtual/os/VUserHandle;
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    .line 343
    new-instance v0, Lcom/lody/virtual/os/VUserHandle;

    invoke-direct {v0, p0}, Lcom/lody/virtual/os/VUserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static writeToParcel(Lcom/lody/virtual/os/VUserHandle;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/os/VUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/16 p0, -0x2710

    .line 326
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 376
    :try_start_0
    check-cast p1, Lcom/lody/virtual/os/VUserHandle;

    .line 377
    iget v1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    iget p1, p1, Lcom/lody/virtual/os/VUserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    return v0
.end method

.method public final isOwner()Z
    .locals 1

    .line 356
    sget-object v0, Lcom/lody/virtual/os/VUserHandle;->OWNER:Lcom/lody/virtual/os/VUserHandle;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/os/VUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VUserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 394
    iget p2, p0, Lcom/lody/virtual/os/VUserHandle;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
