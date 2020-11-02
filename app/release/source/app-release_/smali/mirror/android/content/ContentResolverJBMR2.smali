.class public Lmirror/android/content/ContentResolverJBMR2;
.super Ljava/lang/Object;
.source "ContentResolverJBMR2.java"


# static fields
.field public static Class:Ljava/lang/Class;

.field public static mPackageName:Lmirror/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmirror/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const-class v0, Lmirror/android/content/ContentResolverJBMR2;

    const-class v1, Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/content/ContentResolverJBMR2;->Class:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
