.class public Lmirror/android/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmirror/android/location/LocationManager$ListenerTransport;,
        Lmirror/android/location/LocationManager$GpsStatusListenerTransportVIVO;,
        Lmirror/android/location/LocationManager$GpsStatusListenerTransportSumsungS5;,
        Lmirror/android/location/LocationManager$GpsStatusListenerTransportOPPO_R815T;,
        Lmirror/android/location/LocationManager$GpsStatusListenerTransport;,
        Lmirror/android/location/LocationManager$GnssStatusListenerTransport;
    }
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

.field public static mGnssNmeaListeners:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field public static mGnssStatusListeners:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field public static mGpsNmeaListeners:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field public static mGpsStatusListeners:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field public static mListeners:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field public static mNmeaListeners:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-class v0, Lmirror/android/location/LocationManager;

    const-string v1, "android.location.LocationManager"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/location/LocationManager;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
