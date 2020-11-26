.class public Landroid/content/res/XResources$ResourceNames;
.super Ljava/lang/Object;
.source "XResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceNames"
.end annotation


# instance fields
.field public final fullName:Ljava/lang/String;

.field public final id:I

.field public final name:Ljava/lang/String;

.field public final pkg:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Landroid/content/res/XResources$ResourceNames;->id:I

    .line 280
    iput-object p2, p0, Landroid/content/res/XResources$ResourceNames;->pkg:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Landroid/content/res/XResources$ResourceNames;->name:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Landroid/content/res/XResources$ResourceNames;->type:Ljava/lang/String;

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/res/XResources$ResourceNames;->fullName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/XResources$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/XResources$ResourceNames;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Landroid/content/res/XResources$ResourceNames;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Landroid/content/res/XResources$ResourceNames;->name:Ljava/lang/String;

    .line 291
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Landroid/content/res/XResources$ResourceNames;->type:Ljava/lang/String;

    .line 292
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    iget p1, p0, Landroid/content/res/XResources$ResourceNames;->id:I

    if-ne p4, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
