.class public final Lcom/lody/virtual/server/am/AttributeCache$Package;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/am/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field private final mMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "[I",
            "Lcom/lody/virtual/server/am/AttributeCache$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/am/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    .line 124
    iput-object p1, p0, Lcom/lody/virtual/server/am/AttributeCache$Package;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/server/am/AttributeCache$Package;)Landroid/util/SparseArray;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/lody/virtual/server/am/AttributeCache$Package;->mMap:Landroid/util/SparseArray;

    return-object p0
.end method
