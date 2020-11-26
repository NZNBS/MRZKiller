.class final enum Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClearTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

.field public static final enum TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;


# instance fields
.field deliverIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 697
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->NOTHING:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 698
    new-instance v1, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v3, "SPEC_ACTIVITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->SPEC_ACTIVITY:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 699
    new-instance v3, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v5, "TASK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TASK:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    .line 700
    new-instance v5, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const-string v7, "TOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->TOP:Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 696
    sput-object v7, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, p1, p2, v0}, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 708
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 709
    iput-boolean p3, p0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->deliverIntent:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
    .locals 1

    .line 696
    const-class v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    return-object p0
.end method

.method public static values()[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;
    .locals 1

    .line 696
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    invoke-virtual {v0}, [Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/am/ActivityStack$ClearTarget;

    return-object v0
.end method
