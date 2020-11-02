.class public Lcom/lody/virtual/server/pm/parser/PackageParserEx;
.super Ljava/lang/Object;
.source "PackageParserEx.java"


# static fields
.field private static final FAKE_SIG:Ljava/lang/String; = "308203553082023da0030201020204378edaaa300d06092a864886f70d01010b0500305a310d300b0603550406130466616b65310d300b0603550408130466616b65310d300b0603550407130466616b65310d300b060355040a130466616b65310d300b060355040b130466616b65310d300b0603550403130466616b653020170d3138303533303034343434385a180f32313237313230353034343434385a305a310d300b0603550406130466616b65310d300b0603550408130466616b65310d300b0603550407130466616b65310d300b060355040a130466616b65310d300b060355040b130466616b65310d300b0603550403130466616b6530820122300d06092a864886f70d01010105000382010f003082010a0282010100b766ff6afd8a53edd4cee4985bc90e0c515157b5e9f731818961f7250d0d1ac7c7fb80eb5aeb8c28478732e8ff38cff574bfa0eba8039f73af1532f939c4ef9684719efbaba2dd3c583a20907c1c55248a63098c6da23dcfc877763d5fe6061dddd399cf2f49e3250e23f9e687a4d182bcd0662179ba4c9983448e34b4c83e5abbf4f87e87add9157c75fd40de3416744507a3517915f35b6fcad78766e8e1879df8ab823a6ffa335e4790f6e29c87393732025b63ce3a38e42cb0d48cdceb902f191d7d45823db9a0678895e8bfc59b2af7526ca4c2dc3dbe7e70c7c840e666b9629d36e5ddf1d9a80c37f1ab1bc1fb30432914008fbde95d5d3db7853565510203010001a321301f301d0603551d0e04160414d8513e1ae21c64e9ebeee3507e24ea375eef958e300d06092a864886f70d01010b0500038201010088bf20b36428558359536dddcfff16fe233656a92364cb544d8acc43b0859f880a8da339dd430616085edf035e4e6e6dd2281ceb14adde2f05e9ac58d547a09083eece0c6d405289cb7918f85754ee545eefe35e30c103cad617905e94eb4fb68e6920a60d30577855f9feb6e3a664856f74aa9f824aa7d4a3adf85e162c67b9a4261e3185f038ead96112ae3e574d280425e90567352fb82bc9173302122025eaecfabd94d0f9be69a85c415f7cf7759c9651734300952027b316c37aaa1b2418865a3fc7b6bd1072c92ccaacdaa1cf9586d9b8310ceee066ce68859107dfc45ccce729ad9e75b53b584fa37dcd64da8673b1279c6c5861ed3792deac156c8a"

.field private static final TAG:Ljava/lang/String; = "PackageParserEx"

.field private static final sSharedLibCache:Lcom/lody/virtual/helper/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lody/virtual/helper/collection/ArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/lody/virtual/helper/collection/ArrayMap;

    invoke-direct {v0}, Lcom/lody/virtual/helper/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->sSharedLibCache:Lcom/lody/virtual/helper/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOwner(Lcom/lody/virtual/server/pm/parser/VPackage;)V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 287
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 288
    iget-object v2, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 289
    iput-object v1, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    .line 293
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 294
    iget-object v2, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;

    .line 295
    iput-object v1, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceIntentInfo;->service:Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    goto :goto_1

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    .line 299
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 300
    iget-object v2, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;

    .line 301
    iput-object v1, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;->activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    goto :goto_2

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    .line 305
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    .line 306
    iget-object v2, v1, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;

    .line 307
    iput-object v1, v3, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;->provider:Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    goto :goto_3

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;

    .line 311
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    goto :goto_4

    .line 313
    :cond_8
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;

    .line 314
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    goto :goto_5

    .line 316
    :cond_9
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;

    .line 317
    iput-object p0, v1, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    goto :goto_6

    :cond_a
    return-void
.end method

.method private static buildPackageCache(Landroid/content/pm/PackageParser$Package;)Lcom/lody/virtual/server/pm/parser/VPackage;
    .locals 5

    .line 164
    new-instance v0, Lcom/lody/virtual/server/pm/parser/VPackage;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/parser/VPackage;-><init>()V

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissions:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 173
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 174
    iget-object v3, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    new-instance v4, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    invoke-direct {v4, v2}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Service;

    .line 177
    iget-object v3, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    new-instance v4, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    invoke-direct {v4, v2}, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;-><init>(Landroid/content/pm/PackageParser$Service;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 180
    iget-object v3, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    new-instance v4, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    invoke-direct {v4, v2}, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 183
    iget-object v3, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    new-instance v4, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    invoke-direct {v4, v2}, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 185
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    .line 186
    iget-object v3, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    new-instance v4, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;

    invoke-direct {v4, v2}, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 188
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    .line 189
    iget-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    sget-object v1, Lmirror/android/content/pm/PackageParser$Package;->protectedBroadcasts:Lmirror/RefObject;

    if-eqz v1, :cond_5

    .line 191
    sget-object v1, Lmirror/android/content/pm/PackageParser$Package;->protectedBroadcasts:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 194
    iget-object v2, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_6

    .line 199
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_5

    .line 201
    :cond_6
    sget-object v1, Lmirror/android/content/pm/PackageParser$Package;->mSigningDetails:Lmirror/RefObject;

    invoke-virtual {v1, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 202
    sget-object v2, Lmirror/android/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates:Lmirror/RefMethod;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 204
    iput-object v2, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 205
    iget-object v2, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    sget-object v4, Lmirror/android/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:Lmirror/RefObject;

    invoke-virtual {v4, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    aput-object v1, v2, v3

    goto :goto_5

    .line 207
    :cond_7
    sget-object v2, Lmirror/android/content/pm/PackageParser$SigningDetails;->hasSignatures:Lmirror/RefMethod;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 209
    sget-object v2, Lmirror/android/content/pm/PackageParser$SigningDetails;->signatures:Lmirror/RefObject;

    invoke-virtual {v2, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 210
    array-length v2, v1

    .line 211
    new-array v4, v2, [Landroid/content/pm/Signature;

    iput-object v4, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 212
    iget-object v4, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_8
    :goto_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 217
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    .line 218
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mPreferredOrder:I

    .line 219
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionName:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    .line 221
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserLabel:I

    .line 222
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->usesLibraries:Ljava/util/ArrayList;

    .line 223
    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionCode:I

    .line 224
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 225
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    .line 226
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 227
    invoke-static {v0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->addOwner(Lcom/lody/virtual/server/pm/parser/VPackage;)V

    return-object v0
.end method

.method private static buildSignature(Landroid/content/pm/PackageParser$Package;[Landroid/content/pm/Signature;)V
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 80
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lmirror/android/content/pm/PackageParser$Package;->mSigningDetails:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 83
    sget-object v0, Lmirror/android/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:Lmirror/RefObject;

    invoke-virtual {v0, p0, p1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lmirror/android/content/pm/PackageParser$SigningDetails;->signatures:Lmirror/RefObject;

    invoke-virtual {v0, p0, p1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static checkUseInstalledOrHidden(Lcom/lody/virtual/server/pm/PackageUserState;I)Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/lody/virtual/server/pm/PackageUserState;->hidden:Z

    if-eqz p0, :cond_1

    :cond_0
    and-int/lit16 p0, p1, 0x2000

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static generateActivityInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 446
    :cond_0
    invoke-static {p2, p1}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->checkUseInstalledOrHidden(Lcom/lody/virtual/server/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 450
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 455
    :cond_2
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    invoke-static {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 429
    :cond_0
    invoke-static {p2, p1}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->checkUseInstalledOrHidden(Lcom/lody/virtual/server/pm/PackageUserState;I)Z

    move-result p2

    if-nez p2, :cond_1

    return-object v0

    .line 434
    :cond_1
    new-instance p2, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p2, v0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    .line 436
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mAppMetaData:Landroid/os/Bundle;

    iput-object p0, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 438
    :cond_2
    invoke-static {p2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->initApplicationAsUser(Landroid/content/pm/ApplicationInfo;I)V

    return-object p2
.end method

.method public static generateInstrumentationInfo(Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 498
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->info:Landroid/content/pm/InstrumentationInfo;

    return-object p0

    .line 500
    :cond_1
    new-instance p1, Landroid/content/pm/InstrumentationInfo;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 501
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generatePackageInfo(Lcom/lody/virtual/server/pm/parser/VPackage;IJJLcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 4

    .line 322
    invoke-static {p6, p1}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->checkUseInstalledOrHidden(Lcom/lody/virtual/server/pm/PackageUserState;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    .line 326
    invoke-static {p0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->readSignature(Lcom/lody/virtual/server/pm/parser/VPackage;)V

    .line 328
    :cond_1
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 330
    iget v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 331
    iget v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 332
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserId:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 334
    iget v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSharedUserLabel:I

    iput v1, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 335
    invoke-static {p0, p1, p6, p7}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 336
    iput-wide p2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 337
    iput-wide p4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 338
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 339
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 340
    iget-object p3, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 341
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_2
    and-int/lit16 p2, p1, 0x100

    if-eqz p2, :cond_3

    .line 344
    sget-object p2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->gids:[I

    :cond_3
    and-int/lit16 p2, p1, 0x4000

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 347
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_5

    .line 349
    new-array p2, p2, [Landroid/content/pm/ConfigurationInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 350
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->configPreferences:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 352
    :cond_5
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    if-lez p2, :cond_7

    .line 354
    new-array p2, p2, [Landroid/content/pm/FeatureInfo;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 355
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->reqFeatures:Ljava/util/ArrayList;

    iget-object p4, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_7
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_9

    .line 359
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 362
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    const/4 p5, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge p5, p2, :cond_8

    .line 364
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    add-int/lit8 v3, v1, 0x1

    .line 365
    invoke-static {v2, p1, p6, p7}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateActivityInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    aput-object v2, p4, v1

    add-int/lit8 p5, p5, 0x1

    move v1, v3

    goto :goto_2

    .line 367
    :cond_8
    iput-object p4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_9
    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_b

    .line 371
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 374
    new-array p4, p2, [Landroid/content/pm/ActivityInfo;

    const/4 p5, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge p5, p2, :cond_a

    .line 376
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;

    add-int/lit8 v3, v1, 0x1

    .line 377
    invoke-static {v2, p1, p6, p7}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateActivityInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    aput-object v2, p4, v1

    add-int/lit8 p5, p5, 0x1

    move v1, v3

    goto :goto_3

    .line 379
    :cond_a
    iput-object p4, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_b
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_d

    .line 383
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 386
    new-array p4, p2, [Landroid/content/pm/ServiceInfo;

    const/4 p5, 0x0

    const/4 v1, 0x0

    :goto_4
    if-ge p5, p2, :cond_c

    .line 388
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;

    add-int/lit8 v3, v1, 0x1

    .line 389
    invoke-static {v2, p1, p6, p7}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateServiceInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    aput-object v2, p4, v1

    add-int/lit8 p5, p5, 0x1

    move v1, v3

    goto :goto_4

    .line 391
    :cond_c
    iput-object p4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_d
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_f

    .line 395
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 398
    new-array p4, p2, [Landroid/content/pm/ProviderInfo;

    const/4 p5, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge p5, p2, :cond_e

    .line 400
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;

    add-int/lit8 v3, v1, 0x1

    .line 401
    invoke-static {v2, p1, p6, p7}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateProviderInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    aput-object v2, p4, v1

    add-int/lit8 p5, p5, 0x1

    move v1, v3

    goto :goto_5

    .line 403
    :cond_e
    iput-object p4, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_f
    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_10

    .line 407
    iget-object p2, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 409
    new-array p4, p2, [Landroid/content/pm/InstrumentationInfo;

    iput-object p4, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 p4, 0x0

    :goto_6
    if-ge p4, p2, :cond_10

    .line 411
    iget-object p5, v0, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object p6, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->instrumentation:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {p6, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;

    .line 411
    invoke-static {p6, p1}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateInstrumentationInfo(Lcom/lody/virtual/server/pm/parser/VPackage$InstrumentationComponent;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_10
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_12

    .line 417
    iget-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    array-length p1, p1

    goto :goto_7

    :cond_11
    const/4 p1, 0x0

    :goto_7
    if-lez p1, :cond_12

    .line 419
    new-array p2, p1, [Landroid/content/pm/Signature;

    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 420
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    iget-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    return-object v0
.end method

.method public static generatePermissionGroupInfo(Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 520
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object p0

    .line 522
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 523
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionGroupComponent;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generatePermissionInfo(Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;I)Landroid/content/pm/PermissionInfo;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 509
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->info:Landroid/content/pm/PermissionInfo;

    return-object p0

    .line 511
    :cond_1
    new-instance p1, Landroid/content/pm/PermissionInfo;

    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {p1, v0}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 512
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;->metaData:Landroid/os/Bundle;

    iput-object p0, p1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object p1
.end method

.method public static generateProviderInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 477
    :cond_0
    invoke-static {p2, p1}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->checkUseInstalledOrHidden(Lcom/lody/virtual/server/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 481
    :cond_1
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 484
    iget-object v2, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    :cond_2
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_3

    .line 488
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 490
    :cond_3
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    invoke-static {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1
.end method

.method public static generateServiceInfo(Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 462
    :cond_0
    invoke-static {p2, p1}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->checkUseInstalledOrHidden(Lcom/lody/virtual/server/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 465
    :cond_1
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 470
    :cond_2
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage$ServiceComponent;->owner:Lcom/lody/virtual/server/pm/parser/VPackage;

    invoke-static {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->generateApplicationInfo(Lcom/lody/virtual/server/pm/parser/VPackage;ILcom/lody/virtual/server/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private static initApplicationAsUser(Landroid/content/pm/ApplicationInfo;I)V
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lody/virtual/os/VEnvironment;->getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 271
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 272
    sget-object p1, Lmirror/android/content/pm/ApplicationInfoL;->scanSourceDir:Lmirror/RefObject;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    sget-object p1, Lmirror/android/content/pm/ApplicationInfoL;->scanPublicSourceDir:Lmirror/RefObject;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    .line 276
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    .line 277
    sget-object p1, Lmirror/android/content/pm/ApplicationInfoN;->deviceEncryptedDataDir:Lmirror/RefObject;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    sget-object p1, Lmirror/android/content/pm/ApplicationInfoN;->credentialEncryptedDataDir:Lmirror/RefObject;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    :cond_1
    sget-object p1, Lmirror/android/content/pm/ApplicationInfoN;->deviceProtectedDataDir:Lmirror/RefObject;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    sget-object p1, Lmirror/android/content/pm/ApplicationInfoN;->credentialProtectedDataDir:Lmirror/RefObject;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static initApplicationInfoBase(Lcom/lody/virtual/server/pm/PackageSetting;Lcom/lody/virtual/server/pm/parser/VPackage;)V
    .locals 6

    .line 232
    iget-object p1, p1, Lcom/lody/virtual/server/pm/parser/VPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 233
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 234
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 238
    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->libPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 239
    iget v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->appId:I

    iput v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 240
    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    new-array v0, v0, [Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->apkPath:Ljava/lang/String;

    aput-object v1, v0, v3

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 245
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 246
    sget-object v0, Lmirror/android/content/pm/ApplicationInfoL;->scanSourceDir:Lmirror/RefObject;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    sget-object v0, Lmirror/android/content/pm/ApplicationInfoL;->scanPublicSourceDir:Lmirror/RefObject;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    sget-object v0, Lmirror/android/content/pm/ApplicationInfoL;->primaryCpuAbi:Lmirror/RefObject;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    sget-object v1, Lmirror/android/content/pm/ApplicationInfoL;->primaryCpuAbi:Lmirror/RefObject;

    invoke-virtual {v1, p1, v0}, Lmirror/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    :cond_1
    iget-boolean v0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->dependSystem:Z

    if-eqz v0, :cond_4

    .line 253
    sget-object v0, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->sSharedLibCache:Lcom/lody/virtual/helper/collection/ArrayMap;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/helper/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_3

    .line 255
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 257
    :try_start_0
    iget-object v4, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    const/16 v5, 0x400

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 258
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-nez v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    .line 260
    :cond_2
    iget-object p0, p0, Lcom/lody/virtual/server/pm/PackageSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/lody/virtual/helper/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 265
    :cond_3
    :goto_0
    iput-object v1, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public static parsePackage(Ljava/io/File;)Lcom/lody/virtual/server/pm/parser/VPackage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, p0, v1}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    .line 56
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v3, "android.permission.FAKE_PACKAGE_SIGNATURE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v4, "fake-signature"

    .line 58
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Landroid/content/pm/Signature;

    .line 60
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->buildSignature(Landroid/content/pm/PackageParser$Package;[Landroid/content/pm/Signature;)V

    .line 61
    sget-object v0, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using fake-signature feature on : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    invoke-static {v0, p0, v3}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 66
    sget-object v2, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->TAG:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v5, "collectCertificates failed"

    invoke-static {v2, v5, v4}, Lcom/lody/virtual/helper/utils/VLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/lody/virtual/client/env/Constants;->FAKE_SIGNATURE_FLAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v0, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using fake signature: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v3, [Landroid/content/pm/Signature;

    .line 69
    new-instance v2, Landroid/content/pm/Signature;

    const-string v3, "308203553082023da0030201020204378edaaa300d06092a864886f70d01010b0500305a310d300b0603550406130466616b65310d300b0603550408130466616b65310d300b0603550407130466616b65310d300b060355040a130466616b65310d300b060355040b130466616b65310d300b0603550403130466616b653020170d3138303533303034343434385a180f32313237313230353034343434385a305a310d300b0603550406130466616b65310d300b0603550408130466616b65310d300b0603550407130466616b65310d300b060355040a130466616b65310d300b060355040b130466616b65310d300b0603550403130466616b6530820122300d06092a864886f70d01010105000382010f003082010a0282010100b766ff6afd8a53edd4cee4985bc90e0c515157b5e9f731818961f7250d0d1ac7c7fb80eb5aeb8c28478732e8ff38cff574bfa0eba8039f73af1532f939c4ef9684719efbaba2dd3c583a20907c1c55248a63098c6da23dcfc877763d5fe6061dddd399cf2f49e3250e23f9e687a4d182bcd0662179ba4c9983448e34b4c83e5abbf4f87e87add9157c75fd40de3416744507a3517915f35b6fcad78766e8e1879df8ab823a6ffa335e4790f6e29c87393732025b63ce3a38e42cb0d48cdceb902f191d7d45823db9a0678895e8bfc59b2af7526ca4c2dc3dbe7e70c7c840e666b9629d36e5ddf1d9a80c37f1ab1bc1fb30432914008fbde95d5d3db7853565510203010001a321301f301d0603551d0e04160414d8513e1ae21c64e9ebeee3507e24ea375eef958e300d06092a864886f70d01010b0500038201010088bf20b36428558359536dddcfff16fe233656a92364cb544d8acc43b0859f880a8da339dd430616085edf035e4e6e6dd2281ceb14adde2f05e9ac58d547a09083eece0c6d405289cb7918f85754ee545eefe35e30c103cad617905e94eb4fb68e6920a60d30577855f9feb6e3a664856f74aa9f824aa7d4a3adf85e162c67b9a4261e3185f038ead96112ae3e574d280425e90567352fb82bc9173302122025eaecfabd94d0f9be69a85c415f7cf7759c9651734300952027b316c37aaa1b2418865a3fc7b6bd1072c92ccaacdaa1cf9586d9b8310ceee066ce68859107dfc45ccce729ad9e75b53b584fa37dcd64da8673b1279c6c5861ed3792deac156c8a"

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->buildSignature(Landroid/content/pm/PackageParser$Package;[Landroid/content/pm/Signature;)V

    .line 75
    :goto_0
    invoke-static {p0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->buildPackageCache(Landroid/content/pm/PackageParser$Package;)Lcom/lody/virtual/server/pm/parser/VPackage;

    move-result-object p0

    return-object p0

    .line 71
    :cond_1
    throw v0
.end method

.method public static readPackageCache(Ljava/lang/String;)Lcom/lody/virtual/server/pm/parser/VPackage;
    .locals 3

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getPackageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 92
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 93
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/FileUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 94
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 95
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 100
    new-instance p0, Lcom/lody/virtual/server/pm/parser/VPackage;

    invoke-direct {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage;-><init>(Landroid/os/Parcel;)V

    .line 101
    invoke-static {p0}, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->addOwner(Lcom/lody/virtual/server/pm/parser/VPackage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 98
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid version."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw p0
.end method

.method public static readSignature(Lcom/lody/virtual/server/pm/parser/VPackage;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getSignatureFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 118
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    invoke-static {v2}, Lcom/lody/virtual/helper/utils/FileUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 120
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 121
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 122
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 123
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 125
    :try_start_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw p0
.end method

.method public static savePackageCache(Lcom/lody/virtual/server/pm/parser/VPackage;)V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->packageName:Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 135
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p0, v1, v3}, Lcom/lody/virtual/server/pm/parser/VPackage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getPackageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 139
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 141
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    iget-object p0, p0, Lcom/lody/virtual/server/pm/parser/VPackage;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    .line 147
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->getSignatureFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    sget-object v2, Lcom/lody/virtual/server/pm/parser/PackageParserEx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete the signatures of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 153
    :try_start_2
    invoke-virtual {v0, p0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 154
    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->writeParcelToFile(Landroid/os/Parcel;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 156
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 158
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw p0

    :cond_1
    :goto_3
    return-void

    .line 143
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw p0
.end method
