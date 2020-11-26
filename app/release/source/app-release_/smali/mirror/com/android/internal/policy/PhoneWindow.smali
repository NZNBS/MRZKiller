.class public Lmirror/com/android/internal/policy/PhoneWindow;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static sWindowManager:Lmirror/RefStaticObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefStaticObject<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lmirror/com/android/internal/policy/PhoneWindow;

    const-string v1, "com.android.internal.policy.impl.PhoneWindow$WindowManagerHolder"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lmirror/com/android/internal/policy/PhoneWindow;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.android.internal.policy.PhoneWindow$WindowManagerHolder"

    .line 15
    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/com/android/internal/policy/PhoneWindow;->TYPE:Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
