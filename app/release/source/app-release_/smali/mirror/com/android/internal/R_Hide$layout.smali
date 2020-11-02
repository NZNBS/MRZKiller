.class public Lmirror/com/android/internal/R_Hide$layout;
.super Ljava/lang/Object;
.source "R_Hide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/com/android/internal/R_Hide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "layout"
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

.field public static resolver_list:Lmirror/RefStaticInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lmirror/com/android/internal/R_Hide$id;

    const-string v1, "com.android.internal.R$layout"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/com/android/internal/R_Hide$layout;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
