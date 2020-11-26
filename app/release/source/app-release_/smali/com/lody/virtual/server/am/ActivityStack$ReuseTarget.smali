.class final enum Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReuseTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

.field public static final enum MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 714
    new-instance v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->CURRENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    new-instance v1, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v3, "AFFINITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->AFFINITY:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    new-instance v3, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v5, "DOCUMENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->DOCUMENT:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    new-instance v5, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const-string v7, "MULTIPLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->MULTIPLE:Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 713
    sput-object v7, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 713
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;
    .locals 1

    .line 713
    const-class v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    return-object p0
.end method

.method public static values()[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;
    .locals 1

    .line 713
    sget-object v0, Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->$VALUES:[Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    invoke-virtual {v0}, [Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/server/am/ActivityStack$ReuseTarget;

    return-object v0
.end method
