.class Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;
.super Ljava/lang/Object;
.source "DexposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/DexposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalHookInfo"
.end annotation


# instance fields
.field final callbacks:Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->callbacks:Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;

    .line 537
    iput-object p2, p0, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->parameterTypes:[Ljava/lang/Class;

    .line 538
    iput-object p3, p0, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;->returnType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;Lde/robv/android/xposed/DexposedBridge$1;)V
    .locals 0

    .line 530
    invoke-direct {p0, p1, p2, p3}, Lde/robv/android/xposed/DexposedBridge$AdditionalHookInfo;-><init>(Lde/robv/android/xposed/DexposedBridge$CopyOnWriteSortedSet;[Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
