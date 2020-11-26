.class public Lmirror/android/content/BroadcastReceiver$PendingResultMNC;
.super Ljava/lang/Object;
.source "BroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/android/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingResultMNC"
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static ctor:Lmirror/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefConstructor<",
            "Landroid/content/BroadcastReceiver$PendingResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lmirror/MethodParams;
        value = {
            I,
            Ljava/lang/String;,
            Landroid/os/Bundle;,
            I,
            Z,
            Z,
            Landroid/os/IBinder;,
            I,
            I
        }
    .end annotation
.end field

.field public static mAbortBroadcast:Lmirror/RefBoolean;

.field public static mFinished:Lmirror/RefBoolean;

.field public static mFlags:Lmirror/RefInt;

.field public static mInitialStickyHint:Lmirror/RefBoolean;

.field public static mOrderedHint:Lmirror/RefBoolean;

.field public static mResultCode:Lmirror/RefInt;

.field public static mResultData:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mResultExtras:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendingUser:Lmirror/RefInt;

.field public static mToken:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static mType:Lmirror/RefInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;

    const-class v1, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/content/BroadcastReceiver$PendingResultMNC;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
