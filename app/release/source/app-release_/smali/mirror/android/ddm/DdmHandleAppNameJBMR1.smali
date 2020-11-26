.class public Lmirror/android/ddm/DdmHandleAppNameJBMR1;
.super Ljava/lang/Object;
.source "DdmHandleAppNameJBMR1.java"


# static fields
.field public static Class:Ljava/lang/Class;

.field public static setAppName:Lmirror/RefStaticMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lmirror/MethodParams;
        value = {
            Ljava/lang/String;,
            I
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-class v0, Lmirror/android/ddm/DdmHandleAppNameJBMR1;

    const-string v1, "android.ddm.DdmHandleAppName"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/ddm/DdmHandleAppNameJBMR1;->Class:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
