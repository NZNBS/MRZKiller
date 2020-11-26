.class Landroid/content/res/XResources$XMLInstanceDetails;
.super Ljava/lang/Object;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XMLInstanceDetails"
.end annotation


# instance fields
.field public final callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/callbacks/XC_LayoutInflated;",
            ">;"
        }
    .end annotation
.end field

.field public final res:Landroid/content/res/XResources;

.field public final resNames:Landroid/content/res/XResources$ResourceNames;

.field final synthetic this$0:Landroid/content/res/XResources;

.field public final variant:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/res/XResources;Landroid/content/res/XResources$ResourceNames;Ljava/lang/String;Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XResources$ResourceNames;",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/callbacks/XC_LayoutInflated;",
            ">;)V"
        }
    .end annotation

    .line 1577
    iput-object p1, p0, Landroid/content/res/XResources$XMLInstanceDetails;->this$0:Landroid/content/res/XResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iput-object p1, p0, Landroid/content/res/XResources$XMLInstanceDetails;->res:Landroid/content/res/XResources;

    .line 1578
    iput-object p2, p0, Landroid/content/res/XResources$XMLInstanceDetails;->resNames:Landroid/content/res/XResources$ResourceNames;

    .line 1579
    iput-object p3, p0, Landroid/content/res/XResources$XMLInstanceDetails;->variant:Ljava/lang/String;

    .line 1580
    iput-object p4, p0, Landroid/content/res/XResources$XMLInstanceDetails;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/XResources;Landroid/content/res/XResources$ResourceNames;Ljava/lang/String;Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;Landroid/content/res/XResources$1;)V
    .locals 0

    .line 1571
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/XResources$XMLInstanceDetails;-><init>(Landroid/content/res/XResources;Landroid/content/res/XResources$ResourceNames;Ljava/lang/String;Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    return-void
.end method
