.class public Lcom/lody/virtual/server/pm/parser/VPackage$Component;
.super Ljava/lang/Object;
.source "VPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/parser/VPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field private componentName:Landroid/content/ComponentName;

.field public intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TII;>;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public owner:Lcom/lody/virtual/server/pm/parser/VPackage;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->className:Ljava/lang/String;

    .line 340
    iget-object p1, p1, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->metaData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->componentName:Landroid/content/ComponentName;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$Component;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method
