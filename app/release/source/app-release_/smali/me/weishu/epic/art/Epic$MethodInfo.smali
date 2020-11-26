.class public Lme/weishu/epic/art/Epic$MethodInfo;
.super Ljava/lang/Object;
.source "Epic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/weishu/epic/art/Epic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInfo"
.end annotation


# instance fields
.field public isStatic:Z

.field public method:Lme/weishu/epic/art/method/ArtMethod;

.field public paramNumber:I

.field public paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lme/weishu/epic/art/Epic$MethodInfo;->method:Lme/weishu/epic/art/method/ArtMethod;

    invoke-virtual {v0}, Lme/weishu/epic/art/method/ArtMethod;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
