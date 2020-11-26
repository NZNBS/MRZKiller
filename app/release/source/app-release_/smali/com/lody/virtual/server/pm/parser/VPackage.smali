.class public Lcom/lody/virtual/server/pm/parser/VPackage;
.super Ljava/lang/Object;
.source "VPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;,
        Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;,
        Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;,
        Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;,
        Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;,
        Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;,
        Lcom/lody/virtual/server/pm/parser/VPackage$Component;,
        Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;,
        Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;,
        Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;,
        Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/lody/virtual/server/pm/parser/VPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;",
            ">;"
        }
    .end annotation
.end field

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;",
            ">;"
        }
    .end annotation
.end field

.field public mAppMetaData:Landroid/os/Bundle;

.field public mExtras:Ljava/lang/Object;

.field public mPreferredOrder:I

.field public mSharedUserId:Ljava/lang/String;

.field public mSharedUserLabel:I

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;",
            ">;"
        }
    .end annotation
.end field

.field public permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;",
            ">;"
        }
    .end annotation
.end field

.field public protectedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;",
            ">;"
        }
    .end annotation
.end field

.field public receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/lody/virtual/server/pm/parser/VPackage$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/parser/VPackage$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/parser/VPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    .line 65
    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    .line 65
    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_3

    .line 92
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_4

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    invoke-direct {v2, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_6

    .line 107
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 109
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 110
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mPreferredOrder:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->usesLibraries:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionCode:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserLabel:I

    .line 118
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    .line 119
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 131
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 134
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v2, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v2, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 136
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 137
    invoke-virtual {v2, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 143
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 146
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 148
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 149
    invoke-virtual {v3, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    .line 155
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 158
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 160
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    .line 161
    invoke-virtual {v3, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 165
    :cond_8
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    .line 167
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 170
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    .line 172
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    .line 173
    invoke-virtual {v3, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 177
    :cond_b
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;

    .line 179
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 180
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 182
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 184
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 185
    invoke-virtual {v3, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 189
    :cond_e
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;

    .line 191
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 194
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    .line 196
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 197
    invoke-virtual {v3, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 201
    :cond_11
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    .line 203
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 206
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v3, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_12

    .line 208
    iget-object v1, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;

    .line 209
    invoke-virtual {v3, p1, p2}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    .line 213
    :cond_14
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 217
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mPreferredOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 222
    iget p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserLabel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 225
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
