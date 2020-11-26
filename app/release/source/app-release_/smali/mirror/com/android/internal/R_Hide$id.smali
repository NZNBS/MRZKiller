.class public Lmirror/com/android/internal/R_Hide$id;
.super Ljava/lang/Object;
.source "R_Hide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmirror/com/android/internal/R_Hide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "id"
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

.field public static alertTitle:Lmirror/RefStaticInt;

.field public static button1:Lmirror/RefStaticInt;

.field public static button2:Lmirror/RefStaticInt;

.field public static button3:Lmirror/RefStaticInt;

.field public static buttonPanel:Lmirror/RefStaticInt;

.field public static contentPanel:Lmirror/RefStaticInt;

.field public static custom:Lmirror/RefStaticInt;

.field public static customPanel:Lmirror/RefStaticInt;

.field public static icon:Lmirror/RefStaticInt;

.field public static leftSpacer:Lmirror/RefStaticInt;

.field public static message:Lmirror/RefStaticInt;

.field public static resolver_list:Lmirror/RefStaticInt;

.field public static rightSpacer:Lmirror/RefStaticInt;

.field public static scrollView:Lmirror/RefStaticInt;

.field public static text1:Lmirror/RefStaticInt;

.field public static text2:Lmirror/RefStaticInt;

.field public static titleDivider:Lmirror/RefStaticInt;

.field public static titleDividerTop:Lmirror/RefStaticInt;

.field public static title_template:Lmirror/RefStaticInt;

.field public static topPanel:Lmirror/RefStaticInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lmirror/com/android/internal/R_Hide$id;

    const-string v1, "com.android.internal.R$id"

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/com/android/internal/R_Hide$id;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
