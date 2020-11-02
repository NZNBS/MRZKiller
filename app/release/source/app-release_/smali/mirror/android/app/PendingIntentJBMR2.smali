.class public Lmirror/android/app/PendingIntentJBMR2;
.super Ljava/lang/Object;
.source "PendingIntentJBMR2.java"


# static fields
.field public static Class:Ljava/lang/Class;

.field public static getIntent:Lmirror/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefMethod<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-class v0, Lmirror/android/app/PendingIntentJBMR2;

    const-class v1, Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/app/PendingIntentJBMR2;->Class:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
