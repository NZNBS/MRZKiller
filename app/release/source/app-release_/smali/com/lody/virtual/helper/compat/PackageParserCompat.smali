.class public Lcom/lody/virtual/helper/compat/PackageParserCompat;
.super Ljava/lang/Object;
.source "PackageParserCompat.java"


# static fields
.field private static final API_LEVEL:I

.field public static final GIDS:[I

.field private static final myUserId:I

.field private static final sUserState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getGids()[I

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Lcom/lody/virtual/os/VUserHandle;->getUserId(I)I

    move-result v1

    sput v1, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 47
    sget-object v0, Lmirror/android/content/pm/PackageUserState;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 178
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_0

    .line 179
    sget-object p0, Lmirror/android/content/pm/PackageParserP28;->collectCertificates:Lmirror/RefStaticMethod;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    invoke-virtual {p0, p2}, Lmirror/RefStaticMethod;->callWithException([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x18

    if-lt v0, v4, :cond_1

    .line 181
    sget-object p0, Lmirror/android/content/pm/PackageParserNougat;->collectCertificates:Lmirror/RefStaticMethod;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Lmirror/RefStaticMethod;->callWithException([Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x17

    if-lt v0, v4, :cond_2

    .line 183
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->collectCertificates:Lmirror/RefMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/16 v4, 0x16

    if-lt v0, v4, :cond_3

    .line 185
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->collectCertificates:Lmirror/RefMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/16 v4, 0x15

    if-lt v0, v4, :cond_4

    .line 187
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->collectCertificates:Lmirror/RefMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/16 v4, 0x11

    if-lt v0, v4, :cond_5

    .line 189
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->collectCertificates:Lmirror/RefMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/16 v4, 0x10

    if-lt v0, v4, :cond_6

    .line 191
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->collectCertificates:Lmirror/RefMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_6
    sget-object v0, Lmirror/android/content/pm/PackageParser;->collectCertificates:Lmirror/RefMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;
    .locals 4

    .line 51
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 52
    sget-object p0, Lmirror/android/content/pm/PackageParserMarshmallow;->ctor:Lmirror/RefConstructor;

    invoke-virtual {p0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    :cond_0
    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 54
    sget-object p0, Lmirror/android/content/pm/PackageParserLollipop22;->ctor:Lmirror/RefConstructor;

    invoke-virtual {p0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 56
    sget-object p0, Lmirror/android/content/pm/PackageParserLollipop;->ctor:Lmirror/RefConstructor;

    invoke-virtual {p0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    :cond_2
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    .line 58
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->ctor:Lmirror/RefConstructor;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 60
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->ctor:Lmirror/RefConstructor;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0

    .line 62
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->ctor:Lmirror/RefConstructor;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser;

    return-object p0
.end method

.method public static generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .locals 7

    .line 122
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v0, v6, :cond_0

    .line 123
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_0
    const/16 v6, 0x16

    if-lt v0, v6, :cond_1

    .line 125
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_1
    const/16 v6, 0x15

    if-lt v0, v6, :cond_2

    .line 127
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_2
    const/16 v6, 0x11

    if-lt v0, v6, :cond_3

    .line 129
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_3
    const/16 v6, 0x10

    if-lt v0, v6, :cond_4

    .line 131
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateActivityInfo:Lmirror/RefStaticMethod;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-virtual {v0, v6}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0

    .line 133
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateActivityInfo:Lmirror/RefStaticMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .locals 6

    .line 106
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x17

    if-lt v0, v5, :cond_0

    .line 107
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_0
    const/16 v5, 0x16

    if-lt v0, v5, :cond_1

    .line 109
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_1
    const/16 v5, 0x15

    if-lt v0, v5, :cond_2

    .line 111
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_2
    const/16 v5, 0x11

    if-lt v0, v5, :cond_3

    .line 113
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_3
    const/16 v5, 0x10

    if-lt v0, v5, :cond_4

    .line 115
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateApplicationInfo:Lmirror/RefStaticMethod;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-virtual {v0, v5}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0

    .line 117
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateApplicationInfo:Lmirror/RefStaticMethod;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;IJJ)Landroid/content/pm/PackageInfo;
    .locals 11

    .line 154
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x17

    if-lt v0, v10, :cond_0

    .line 155
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generatePackageInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v9

    sget-object v9, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    aput-object v9, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v3, v1, v4

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0

    :cond_0
    const/16 v10, 0x15

    if-lt v0, v10, :cond_2

    .line 158
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generatePackageInfo:Lmirror/RefStaticMethod;

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generatePackageInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v9

    sget-object v9, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    aput-object v9, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v3, v1, v4

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0

    .line 162
    :cond_1
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generatePackageInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v9

    sget-object v9, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    aput-object v9, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v3, v1, v4

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0

    :cond_2
    const/16 v10, 0x11

    if-lt v0, v10, :cond_3

    .line 166
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generatePackageInfo:Lmirror/RefStaticMethod;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v9

    sget-object v9, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    aput-object v9, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v5

    aput-object v3, v1, v4

    sget-object v3, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 169
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generatePackageInfo:Lmirror/RefStaticMethod;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v9

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    aput-object v2, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0

    .line 172
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generatePackageInfo:Lmirror/RefStaticMethod;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v9

    sget-object v2, Lcom/lody/virtual/helper/compat/PackageParserCompat;->GIDS:[I

    aput-object v2, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    .line 173
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    .line 172
    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public static generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .locals 7

    .line 138
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v0, v6, :cond_0

    .line 139
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0

    :cond_0
    const/16 v6, 0x16

    if-lt v0, v6, :cond_1

    .line 141
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0

    :cond_1
    const/16 v6, 0x15

    if-lt v0, v6, :cond_2

    .line 143
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0

    :cond_2
    const/16 v6, 0x11

    if-lt v0, v6, :cond_3

    .line 145
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0

    :cond_3
    const/16 v6, 0x10

    if-lt v0, v6, :cond_4

    .line 147
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateProviderInfo:Lmirror/RefStaticMethod;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-virtual {v0, v6}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0

    .line 149
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateProviderInfo:Lmirror/RefStaticMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ProviderInfo;

    return-object p0
.end method

.method public static generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .locals 7

    .line 90
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v0, v6, :cond_0

    .line 91
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_0
    const/16 v6, 0x16

    if-lt v0, v6, :cond_1

    .line 93
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_1
    const/16 v6, 0x15

    if-lt v0, v6, :cond_2

    .line 95
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_2
    const/16 v6, 0x11

    if-lt v0, v6, :cond_3

    .line 97
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->sUserState:Ljava/lang/Object;

    aput-object p0, v2, v3

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_3
    const/16 v6, 0x10

    if-lt v0, v6, :cond_4

    .line 99
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->generateServiceInfo:Lmirror/RefStaticMethod;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    sget p0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->myUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-virtual {v0, v6}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0

    .line 101
    :cond_4
    sget-object v0, Lmirror/android/content/pm/PackageParser;->generateServiceInfo:Lmirror/RefStaticMethod;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method public static parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lmirror/android/content/pm/PackageParserP28;->setCallback:Lmirror/RefMethod;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lmirror/android/content/pm/PackageParserP28$CallbackImpl;->ctor:Lmirror/RefConstructor;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    sget v0, Lcom/lody/virtual/helper/compat/PackageParserCompat;->API_LEVEL:I

    const/16 v3, 0x17

    const/4 v4, 0x2

    if-lt v0, v3, :cond_1

    .line 72
    sget-object v0, Lmirror/android/content/pm/PackageParserMarshmallow;->parsePackage:Lmirror/RefMethod;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_1
    const/16 v3, 0x16

    if-lt v0, v3, :cond_2

    .line 74
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop22;->parsePackage:Lmirror/RefMethod;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_2
    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 76
    sget-object v0, Lmirror/android/content/pm/PackageParserLollipop;->parsePackage:Lmirror/RefMethod;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_3
    const/16 v3, 0x11

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-lt v0, v3, :cond_4

    .line 78
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean17;->parsePackage:Lmirror/RefMethod;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v6, v3, v2

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object p1, v3, v4

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    .line 78
    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    :cond_4
    const/16 v3, 0x10

    if-lt v0, v3, :cond_5

    .line 81
    sget-object v0, Lmirror/android/content/pm/PackageParserJellyBean;->parsePackage:Lmirror/RefMethod;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v6, v3, v2

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object p1, v3, v4

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    .line 81
    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0

    .line 84
    :cond_5
    sget-object v0, Lmirror/android/content/pm/PackageParser;->parsePackage:Lmirror/RefMethod;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v6, v3, v2

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object p1, v3, v4

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    .line 84
    invoke-virtual {v0, p0, v3}, Lmirror/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Package;

    return-object p0
.end method
