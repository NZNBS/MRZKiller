.class public Lmirror/android/telephony/CellSignalStrengthCdma;
.super Ljava/lang/Object;
.source "CellSignalStrengthCdma.java"


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
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field public static mCdmaDbm:Lmirror/RefInt;

.field public static mCdmaEcio:Lmirror/RefInt;

.field public static mEvdoDbm:Lmirror/RefInt;

.field public static mEvdoEcio:Lmirror/RefInt;

.field public static mEvdoSnr:Lmirror/RefInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lmirror/android/telephony/CellSignalStrengthCdma;

    const-class v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/telephony/CellSignalStrengthCdma;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
