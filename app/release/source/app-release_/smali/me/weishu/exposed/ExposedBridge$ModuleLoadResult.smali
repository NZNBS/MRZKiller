.class final enum Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;
.super Ljava/lang/Enum;
.source "ExposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/weishu/exposed/ExposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModuleLoadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

.field public static final enum DISABLED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

.field public static final enum FAILED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

.field public static final enum IGNORED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

.field public static final enum INVALID:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

.field public static final enum NOT_EXIST:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

.field public static final enum SUCCESS:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 101
    new-instance v0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->DISABLED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    .line 102
    new-instance v1, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const-string v3, "NOT_EXIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->NOT_EXIST:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    .line 103
    new-instance v3, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const-string v5, "INVALID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->INVALID:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    .line 104
    new-instance v5, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->SUCCESS:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    .line 105
    new-instance v7, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->FAILED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    .line 106
    new-instance v9, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const-string v11, "IGNORED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->IGNORED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    const/4 v11, 0x6

    new-array v11, v11, [Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 100
    sput-object v11, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->$VALUES:[Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;
    .locals 1

    .line 100
    const-class v0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object p0
.end method

.method public static values()[Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;
    .locals 1

    .line 100
    sget-object v0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->$VALUES:[Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    invoke-virtual {v0}, [Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object v0
.end method
