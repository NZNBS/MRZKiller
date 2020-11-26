.class public Lcom/lody/virtual/remote/PendingResultData;
.super Ljava/lang/Object;
.source "PendingResultData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/remote/PendingResultData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAbortBroadcast:Z

.field public mFinished:Z

.field public mFlags:I

.field public mInitialStickyHint:Z

.field public mOrderedHint:Z

.field public mResultCode:I

.field public mResultData:Ljava/lang/String;

.field public mResultExtras:Landroid/os/Bundle;

.field public mSendingUser:I

.field public mToken:Landroid/os/IBinder;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/lody/virtual/remote/PendingResultData$1;

    invoke-direct {v0}, Lcom/lody/virtual/remote/PendingResultData$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/remote/PendingResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->ctor:Lmirror/RefConstructor;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mType:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    .line 41
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mOrderedHint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    .line 42
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mInitialStickyHint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    .line 43
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 44
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mSendingUser:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mSendingUser:I

    .line 45
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mFlags:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mFlags:I

    .line 46
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mResultCode:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    .line 47
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mResultData:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    .line 48
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mResultExtras:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 49
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mAbortBroadcast:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mAbortBroadcast:Z

    .line 50
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->mFinished:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lody/virtual/remote/PendingResultData;->mFinished:Z

    goto/16 :goto_0

    .line 51
    :cond_0
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->ctor:Lmirror/RefConstructor;

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mType:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    .line 53
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mOrderedHint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    .line 54
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mInitialStickyHint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    .line 55
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 56
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mSendingUser:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mSendingUser:I

    .line 57
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mResultCode:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    .line 58
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mResultData:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    .line 59
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mResultExtras:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 60
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mAbortBroadcast:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mAbortBroadcast:Z

    .line 61
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->mFinished:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lody/virtual/remote/PendingResultData;->mFinished:Z

    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mType:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    .line 64
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mOrderedHint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    .line 65
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mInitialStickyHint:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    .line 66
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mToken:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 67
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mResultCode:Lmirror/RefInt;

    invoke-virtual {v0, p1}, Lmirror/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    .line 68
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mResultData:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    .line 69
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mResultExtras:Lmirror/RefObject;

    invoke-virtual {v0, p1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 70
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mAbortBroadcast:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mAbortBroadcast:Z

    .line 71
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->mFinished:Lmirror/RefBoolean;

    invoke-virtual {v0, p1}, Lmirror/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lody/virtual/remote/PendingResultData;->mFinished:Z

    :goto_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mSendingUser:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mFlags:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/lody/virtual/remote/PendingResultData;->mAbortBroadcast:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/lody/virtual/remote/PendingResultData;->mFinished:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 12

    .line 91
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->ctor:Lmirror/RefConstructor;

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->ctor:Lmirror/RefConstructor;

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    iget-object v9, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    aput-object v9, v10, v8

    iget-object v8, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    aput-object v8, v10, v7

    iget v7, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    iget-boolean v6, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v10, v5

    iget-boolean v5, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v10, v4

    iget-object v4, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    aput-object v4, v10, v3

    iget v3, p0, Lcom/lody/virtual/remote/PendingResultData;->mSendingUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    iget v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-virtual {v0, v10}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0

    .line 94
    :cond_0
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->ctor:Lmirror/RefConstructor;

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultJBMR1;->ctor:Lmirror/RefConstructor;

    new-array v1, v1, [Ljava/lang/Object;

    iget v10, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v9

    iget-object v9, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    aput-object v9, v1, v8

    iget-object v8, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    aput-object v8, v1, v7

    iget v7, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    iget-boolean v6, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    iget-boolean v5, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    aput-object v4, v1, v3

    iget v3, p0, Lcom/lody/virtual/remote/PendingResultData;->mSendingUser:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0

    .line 97
    :cond_1
    sget-object v0, Lmirror/android/content/BroadcastReceiver$PendingResult;->ctor:Lmirror/RefConstructor;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    aput-object v2, v1, v7

    iget v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-boolean v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    iget-boolean v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/remote/PendingResultData;->build()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 107
    iget p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-boolean p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mOrderedHint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 109
    iget-boolean p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mInitialStickyHint:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 110
    iget-object p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 111
    iget p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mSendingUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mResultExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 116
    iget-boolean p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mAbortBroadcast:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    iget-boolean p2, p0, Lcom/lody/virtual/remote/PendingResultData;->mFinished:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
