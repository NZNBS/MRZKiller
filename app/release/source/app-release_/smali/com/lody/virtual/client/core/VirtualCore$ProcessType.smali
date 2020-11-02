.class final enum Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
.super Ljava/lang/Enum;
.source "VirtualCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/core/VirtualCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lody/virtual/client/core/VirtualCore$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

.field public static final enum VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 916
    new-instance v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v1, "Server"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Server:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 920
    new-instance v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v3, "VAppClient"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->VAppClient:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 924
    new-instance v3, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v5, "Main"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->Main:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    .line 928
    new-instance v5, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const-string v7, "CHILD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->CHILD:Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 912
    sput-object v7, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->$VALUES:[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 912
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
    .locals 1

    .line 912
    const-class v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    return-object p0
.end method

.method public static values()[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;
    .locals 1

    .line 912
    sget-object v0, Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->$VALUES:[Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    invoke-virtual {v0}, [Lcom/lody/virtual/client/core/VirtualCore$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lody/virtual/client/core/VirtualCore$ProcessType;

    return-object v0
.end method
