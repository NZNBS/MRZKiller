.class public Landroid/content/res/XResForwarder;
.super Ljava/lang/Object;
.source "XResForwarder.java"


# instance fields
.field private final id:I

.field private final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroid/content/res/XResForwarder;->res:Landroid/content/res/Resources;

    .line 22
    iput p2, p0, Landroid/content/res/XResForwarder;->id:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 32
    iget v0, p0, Landroid/content/res/XResForwarder;->id:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 27
    iget-object v0, p0, Landroid/content/res/XResForwarder;->res:Landroid/content/res/Resources;

    return-object v0
.end method
