.class public Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;
.super Lcom/lody/virtual/server/pm/parser/VPackage$Component;
.source "VPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/parser/VPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/parser/VPackage$Component<",
        "Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public info:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Service;)V
    .locals 4

    .line 386
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$Component;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 387
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    .line 389
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    new-instance v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    check-cast v1, Landroid/content/pm/PackageParser$IntentInfo;

    invoke-direct {v3, v1}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 396
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/parser/VPackage$Component;-><init>()V

    .line 397
    const-class v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->className:Ljava/lang/String;

    .line 399
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->metaData:Landroid/os/Bundle;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
