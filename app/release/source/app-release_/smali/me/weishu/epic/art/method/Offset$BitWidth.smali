.class final enum Lme/weishu/epic/art/method/Offset$BitWidth;
.super Ljava/lang/Enum;
.source "Offset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/weishu/epic/art/method/Offset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BitWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme/weishu/epic/art/method/Offset$BitWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/weishu/epic/art/method/Offset$BitWidth;

.field public static final enum DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

.field public static final enum QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;


# instance fields
.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Lme/weishu/epic/art/method/Offset$BitWidth;

    const-string v1, "DWORD"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lme/weishu/epic/art/method/Offset$BitWidth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lme/weishu/epic/art/method/Offset$BitWidth;->DWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    .line 58
    new-instance v1, Lme/weishu/epic/art/method/Offset$BitWidth;

    const-string v3, "QWORD"

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-direct {v1, v3, v4, v5}, Lme/weishu/epic/art/method/Offset$BitWidth;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lme/weishu/epic/art/method/Offset$BitWidth;->QWORD:Lme/weishu/epic/art/method/Offset$BitWidth;

    const/4 v3, 0x2

    new-array v3, v3, [Lme/weishu/epic/art/method/Offset$BitWidth;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 56
    sput-object v3, Lme/weishu/epic/art/method/Offset$BitWidth;->$VALUES:[Lme/weishu/epic/art/method/Offset$BitWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lme/weishu/epic/art/method/Offset$BitWidth;->width:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/weishu/epic/art/method/Offset$BitWidth;
    .locals 1

    .line 56
    const-class v0, Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme/weishu/epic/art/method/Offset$BitWidth;

    return-object p0
.end method

.method public static values()[Lme/weishu/epic/art/method/Offset$BitWidth;
    .locals 1

    .line 56
    sget-object v0, Lme/weishu/epic/art/method/Offset$BitWidth;->$VALUES:[Lme/weishu/epic/art/method/Offset$BitWidth;

    invoke-virtual {v0}, [Lme/weishu/epic/art/method/Offset$BitWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/weishu/epic/art/method/Offset$BitWidth;

    return-object v0
.end method
