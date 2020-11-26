.class public Lcom/lody/virtual/os/VEnvironment;
.super Ljava/lang/Object;
.source "VEnvironment.java"


# static fields
.field private static final DALVIK_CACHE_DIRECTORY:Ljava/io/File;

.field private static final DATA_DIRECTORY:Ljava/io/File;

.field private static final ROOT:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "VEnvironment"

.field private static final USER_DIRECTORY:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/io/File;

    const-string v2, "virtual"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/os/VEnvironment;->ROOT:Ljava/io/File;

    .line 35
    new-instance v1, Ljava/io/File;

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    .line 37
    new-instance v2, Ljava/io/File;

    const-string v3, "user"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/lody/virtual/os/VEnvironment;->USER_DIRECTORY:Ljava/io/File;

    .line 39
    new-instance v1, Ljava/io/File;

    const-string v2, "opt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/os/VEnvironment;->DALVIK_CACHE_DIRECTORY:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCreated(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to create the directory: %s."

    invoke-static {v0, v2, v1}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static getAccountConfigFile()Ljava/io/File;
    .locals 3

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "account-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppLibDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getBakPackageListFile()Ljava/io/File;
    .locals 3

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "packages.ini.bak"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBakUidListFile()Ljava/io/File;
    .locals 3

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid-list.ini.bak"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 56
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDalvikCacheDirectory()Ljava/io/File;
    .locals 1

    .line 121
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->DALVIK_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getDataAppDirectory()Ljava/io/File;
    .locals 3

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .line 201
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getDataUserPackageDirectory(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceInfoFile()Ljava/io/File;
    .locals 3

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device-info.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJobConfigFile()Ljava/io/File;
    .locals 3

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "job-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOdexFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 125
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->isAndroidO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lmirror/dalvik/system/VMRuntime;->getCurrentInstructionSet:Lmirror/RefStaticMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, "YmFzZS5vZGV4"

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lody/virtual/os/VEnvironment;->DALVIK_CACHE_DIRECTORY:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZGF0YUBhcHBA"

    invoke-static {v3}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "LTFAYmFzZS5hcGtAY2xhc3Nlcy5kZXg="

    .line 134
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 147
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "package.ini"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageInstallerStageDir()Ljava/io/File;
    .locals 3

    .line 209
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    const-string v2, ".session_dir"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageListFile()Ljava/io/File;
    .locals 3

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "packages.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPackageResourcePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "YmFzZS5hcGs="

    .line 73
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSignatureFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getDataAppPackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "signature.ini"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUidListFile()Ljava/io/File;
    .locals 3

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "uid-list.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserSystemDirectory()Ljava/io/File;
    .locals 1

    .line 155
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->USER_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 2

    .line 159
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lody/virtual/os/VEnvironment;->USER_DIRECTORY:Ljava/io/File;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVSConfigFile()Ljava/io/File;
    .locals 3

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "vss.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVirtualLocationFile()Ljava/io/File;
    .locals 3

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "virtual-loc.ini"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVirtualPrivateStorageDir(I)Ljava/io/File;
    .locals 4

    .line 184
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 185
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "virtual"

    aput-object v3, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "%s/Android/data/%s/%s/%d"

    .line 184
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 186
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualPrivateStorageDir(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getVirtualPrivateStorageDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualStorageBaseDir()Ljava/io/File;
    .locals 3

    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Ljava/io/File;

    const-string v2, "VirtualXposed"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/io/File;

    const-string v2, "vsdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVirtualStorageDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 173
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getVirtualStorageBaseDir()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Lcom/lody/virtual/os/VEnvironment;->ensureCreated(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiMacFile(I)Ljava/io/File;
    .locals 2

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/lody/virtual/os/VEnvironment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "d2lmaU1hY0FkZHJlc3M="

    invoke-static {v1}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isAndroidO()Z
    .locals 2

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static systemReady()V
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 45
    :try_start_0
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->ROOT:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1ed

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->chmod(Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/lody/virtual/os/VEnvironment;->DATA_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->chmod(Ljava/lang/String;I)V

    .line 47
    invoke-static {}, Lcom/lody/virtual/os/VEnvironment;->getDataAppDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lody/virtual/helper/utils/FileUtils;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
