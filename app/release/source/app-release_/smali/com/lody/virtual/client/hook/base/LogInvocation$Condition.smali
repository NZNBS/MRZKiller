.class public abstract enum Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
.super Ljava/lang/Enum;
.source "LogInvocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/base/LogInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

.field public static final enum ALWAYS:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

.field public static final enum NEVER:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

.field public static final enum NOT_HOOKED:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

.field public static final enum ON_ERROR:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$1;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->NEVER:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    .line 29
    new-instance v1, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$2;

    const-string v3, "ALWAYS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->ALWAYS:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    .line 38
    new-instance v3, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$3;

    const-string v5, "ON_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->ON_ERROR:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    .line 48
    new-instance v5, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$4;

    const-string v7, "NOT_HOOKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->NOT_HOOKED:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 18
    sput-object v7, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->$VALUES:[Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/lody/virtual/client/hook/base/LogInvocation$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
    .locals 1

    .line 18
    const-class v0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-object p0
.end method

.method public static values()[Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;
    .locals 1

    .line 18
    sget-object v0, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->$VALUES:[Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    invoke-virtual {v0}, [Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    return-object v0
.end method


# virtual methods
.method public abstract getLogLevel(ZZ)I
.end method
