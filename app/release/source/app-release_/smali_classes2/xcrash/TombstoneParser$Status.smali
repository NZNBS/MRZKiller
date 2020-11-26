.class final enum Lxcrash/TombstoneParser$Status;
.super Ljava/lang/Enum;
.source "TombstoneParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxcrash/TombstoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxcrash/TombstoneParser$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lxcrash/TombstoneParser$Status;

.field public static final enum HEAD:Lxcrash/TombstoneParser$Status;

.field public static final enum SECTION:Lxcrash/TombstoneParser$Status;

.field public static final enum UNKNOWN:Lxcrash/TombstoneParser$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 330
    new-instance v0, Lxcrash/TombstoneParser$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxcrash/TombstoneParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxcrash/TombstoneParser$Status;->UNKNOWN:Lxcrash/TombstoneParser$Status;

    .line 331
    new-instance v1, Lxcrash/TombstoneParser$Status;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lxcrash/TombstoneParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxcrash/TombstoneParser$Status;->HEAD:Lxcrash/TombstoneParser$Status;

    .line 332
    new-instance v3, Lxcrash/TombstoneParser$Status;

    const-string v5, "SECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lxcrash/TombstoneParser$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxcrash/TombstoneParser$Status;->SECTION:Lxcrash/TombstoneParser$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lxcrash/TombstoneParser$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 329
    sput-object v5, Lxcrash/TombstoneParser$Status;->$VALUES:[Lxcrash/TombstoneParser$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lxcrash/TombstoneParser$Status;
    .locals 1

    .line 329
    const-class v0, Lxcrash/TombstoneParser$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxcrash/TombstoneParser$Status;

    return-object p0
.end method

.method public static values()[Lxcrash/TombstoneParser$Status;
    .locals 1

    .line 329
    sget-object v0, Lxcrash/TombstoneParser$Status;->$VALUES:[Lxcrash/TombstoneParser$Status;

    invoke-virtual {v0}, [Lxcrash/TombstoneParser$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxcrash/TombstoneParser$Status;

    return-object v0
.end method
