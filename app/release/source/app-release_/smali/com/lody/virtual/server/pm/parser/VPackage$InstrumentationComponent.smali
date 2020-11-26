.class public Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;
.super Lcom/lody/virtual/server/pm/parser/VPackage$Component;
.source "VPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/parser/VPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstrumentationComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/parser/VPackage$Component<",
        "Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public info:Landroid/content/pm/InstrumentationInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Instrumentation;)V
    .locals 0

    .line 438
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$Component;-><init>(Landroid/content/pm/PackageParser$Component;)V

    .line 439
    iget-object p1, p1, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iput-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->info:Landroid/content/pm/InstrumentationInfo;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 442
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/parser/VPackage$Component;-><init>()V

    .line 443
    const-class v0, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstrumentationInfo;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->info:Landroid/content/pm/InstrumentationInfo;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->className:Ljava/lang/String;

    .line 445
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->metaData:Landroid/os/Bundle;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->intents:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->intents:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
