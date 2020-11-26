.class Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/pm/IntentResolver;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/pm/IntentResolver;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TF;>;)V"
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->this$0:Lcom/lody/virtual/server/pm/IntentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p2, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mCur:Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->next()Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mCur:Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->this$0:Lcom/lody/virtual/server/pm/IntentResolver;

    invoke-virtual {v1, v0}, Lcom/lody/virtual/server/pm/IntentResolver;->removeFilterInternal(Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
