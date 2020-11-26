.class public Lmirror/com/android/internal/R_Hide$styleable;
.super Ljava/lang/Object;
.source "R_Hide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/com/android/internal/R_Hide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "styleable"
.end annotation


# static fields
.field public static AccountAuthenticator:Lmirror/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticObject<",
            "[I>;"
        }
    .end annotation
.end field

.field public static AccountAuthenticator_accountPreferences:Lmirror/RefStaticInt;

.field public static AccountAuthenticator_accountType:Lmirror/RefStaticInt;

.field public static AccountAuthenticator_customTokens:Lmirror/RefStaticInt;

.field public static AccountAuthenticator_icon:Lmirror/RefStaticInt;

.field public static AccountAuthenticator_label:Lmirror/RefStaticInt;

.field public static AccountAuthenticator_smallIcon:Lmirror/RefStaticInt;

.field public static AlertDialog_bottomBright:Lmirror/RefStaticInt;

.field public static AlertDialog_bottomDark:Lmirror/RefStaticInt;

.field public static AlertDialog_bottomMedium:Lmirror/RefStaticInt;

.field public static AlertDialog_centerBright:Lmirror/RefStaticInt;

.field public static AlertDialog_centerDark:Lmirror/RefStaticInt;

.field public static AlertDialog_fullBright:Lmirror/RefStaticInt;

.field public static AlertDialog_fullDark:Lmirror/RefStaticInt;

.field public static AlertDialog_topBright:Lmirror/RefStaticInt;

.field public static AlertDialog_topDark:Lmirror/RefStaticInt;

.field public static SyncAdapter:Lmirror/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticObject<",
            "[I>;"
        }
    .end annotation
.end field

.field public static SyncAdapter_accountType:Lmirror/RefStaticInt;

.field public static SyncAdapter_allowParallelSyncs:Lmirror/RefStaticInt;

.field public static SyncAdapter_contentAuthority:Lmirror/RefStaticInt;

.field public static SyncAdapter_isAlwaysSyncable:Lmirror/RefStaticInt;

.field public static SyncAdapter_settingsActivity:Lmirror/RefStaticInt;

.field public static SyncAdapter_supportsUploading:Lmirror/RefStaticInt;

.field public static SyncAdapter_userVisible:Lmirror/RefStaticInt;

.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static Window:Lmirror/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticObject<",
            "[I>;"
        }
    .end annotation
.end field

.field public static Window_windowBackground:Lmirror/RefStaticInt;

.field public static Window_windowFullscreen:Lmirror/RefStaticInt;

.field public static Window_windowIsFloating:Lmirror/RefStaticInt;

.field public static Window_windowIsTranslucent:Lmirror/RefStaticInt;

.field public static Window_windowShowWallpaper:Lmirror/RefStaticInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Lmirror/com/android/internal/R_Hide$styleable;

    const-string v1, "com.android.internal.R$styleable"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/com/android/internal/R_Hide$styleable;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
