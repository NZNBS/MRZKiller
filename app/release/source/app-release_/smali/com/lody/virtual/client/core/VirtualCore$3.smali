.class synthetic Lcom/lody/virtual/client/core/VirtualCore$3;
.super Ljava/lang/Object;
.source "VirtualCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/core/VirtualCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lody$virtual$client$core$VirtualCore$ProcessType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 231
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->values()[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$3;->$SwitchMap$com$lody$virtual$client$core$VirtualCore$ProcessType:[I

    :try_start_0
    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$3;->$SwitchMap$com$lody$virtual$client$core$VirtualCore$ProcessType:[I

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$3;->$SwitchMap$com$lody$virtual$client$core$VirtualCore$ProcessType:[I

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$3;->$SwitchMap$com$lody$virtual$client$core$VirtualCore$ProcessType:[I

    sget-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
