.class public final enum Lorg/jdeferred/DeferredManager$StartPolicy;
.super Ljava/lang/Enum;
.source "DeferredManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/DeferredManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdeferred/DeferredManager$StartPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdeferred/DeferredManager$StartPolicy;

.field public static final enum AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

.field public static final enum DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

.field public static final enum MANAUL:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Lorg/jdeferred/DeferredManager$StartPolicy;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jdeferred/DeferredManager$StartPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    .line 74
    new-instance v1, Lorg/jdeferred/DeferredManager$StartPolicy;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jdeferred/DeferredManager$StartPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    .line 79
    new-instance v3, Lorg/jdeferred/DeferredManager$StartPolicy;

    const-string v5, "MANAUL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jdeferred/DeferredManager$StartPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jdeferred/DeferredManager$StartPolicy;->MANAUL:Lorg/jdeferred/DeferredManager$StartPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jdeferred/DeferredManager$StartPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 64
    sput-object v5, Lorg/jdeferred/DeferredManager$StartPolicy;->$VALUES:[Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 64
    const-class v0, Lorg/jdeferred/DeferredManager$StartPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object p0
.end method

.method public static values()[Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 64
    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->$VALUES:[Lorg/jdeferred/DeferredManager$StartPolicy;

    invoke-virtual {v0}, [Lorg/jdeferred/DeferredManager$StartPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method
