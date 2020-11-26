.class synthetic Lxcrash/TombstoneParser$1;
.super Ljava/lang/Object;
.source "TombstoneParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxcrash/TombstoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$xcrash$TombstoneParser$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 564
    invoke-static {}, Lxcrash/TombstoneParser$Status;->values()[Lxcrash/TombstoneParser$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lxcrash/TombstoneParser$1;->$SwitchMap$xcrash$TombstoneParser$Status:[I

    :try_start_0
    sget-object v1, Lxcrash/TombstoneParser$Status;->UNKNOWN:Lxcrash/TombstoneParser$Status;

    invoke-virtual {v1}, Lxcrash/TombstoneParser$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lxcrash/TombstoneParser$1;->$SwitchMap$xcrash$TombstoneParser$Status:[I

    sget-object v1, Lxcrash/TombstoneParser$Status;->HEAD:Lxcrash/TombstoneParser$Status;

    invoke-virtual {v1}, Lxcrash/TombstoneParser$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lxcrash/TombstoneParser$1;->$SwitchMap$xcrash$TombstoneParser$Status:[I

    sget-object v1, Lxcrash/TombstoneParser$Status;->SECTION:Lxcrash/TombstoneParser$Status;

    invoke-virtual {v1}, Lxcrash/TombstoneParser$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
