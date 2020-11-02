.class public Lxcrash/TombstoneManager;
.super Ljava/lang/Object;
.source "TombstoneManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 58
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lxcrash/FileManager;->appendText(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static clearAllTombstones()Z
    .locals 3

    const-string v0, ".java.xcrash"

    const-string v1, ".native.xcrash"

    const-string v2, ".anr.xcrash"

    .line 201
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->clearTombstones([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearAnrTombstones()Z
    .locals 1

    const-string v0, ".anr.xcrash"

    .line 191
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->clearTombstones([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearJavaTombstones()Z
    .locals 1

    const-string v0, ".java.xcrash"

    .line 171
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->clearTombstones([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearNativeTombstones()Z
    .locals 1

    const-string v0, ".native.xcrash"

    .line 181
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->clearTombstones([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static clearTombstones([Ljava/lang/String;)Z
    .locals 6

    .line 245
    invoke-static {}, Lxcrash/XCrash;->getLogDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 250
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    new-instance v0, Lxcrash/TombstoneManager$3;

    invoke-direct {v0, p0}, Lxcrash/TombstoneManager$3;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    .line 274
    :cond_2
    array-length v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p0, v3

    .line 275
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lxcrash/FileManager;->recycleLogFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public static deleteTombstone(Ljava/io/File;)Z
    .locals 1

    .line 148
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lxcrash/FileManager;->recycleLogFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteTombstone(Ljava/lang/String;)Z
    .locals 2

    .line 161
    invoke-static {}, Lxcrash/FileManager;->getInstance()Lxcrash/FileManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxcrash/FileManager;->recycleLogFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static getAllTombstones()[Ljava/io/File;
    .locals 3

    const-string v0, ".java.xcrash"

    const-string v1, ".native.xcrash"

    const-string v2, ".anr.xcrash"

    .line 135
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->getTombstones([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAnrTombstones()[Ljava/io/File;
    .locals 1

    const-string v0, ".anr.xcrash"

    .line 125
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->getTombstones([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaTombstones()[Ljava/io/File;
    .locals 1

    const-string v0, ".java.xcrash"

    .line 105
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->getTombstones([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeTombstones()[Ljava/io/File;
    .locals 1

    const-string v0, ".native.xcrash"

    .line 115
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxcrash/TombstoneManager;->getTombstones([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getTombstones([Ljava/lang/String;)[Ljava/io/File;
    .locals 3

    .line 205
    invoke-static {}, Lxcrash/XCrash;->getLogDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/io/File;

    return-object p0

    .line 210
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Lxcrash/TombstoneManager$1;

    invoke-direct {v0, p0}, Lxcrash/TombstoneManager$1;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    new-array p0, v1, [Ljava/io/File;

    return-object p0

    .line 234
    :cond_2
    new-instance v0, Lxcrash/TombstoneManager$2;

    invoke-direct {v0}, Lxcrash/TombstoneManager$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0

    :cond_3
    :goto_0
    new-array p0, v1, [Ljava/io/File;

    return-object p0
.end method

.method public static isAnr(Ljava/io/File;)Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".anr.xcrash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJavaCrash(Ljava/io/File;)Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".java.xcrash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNativeCrash(Ljava/io/File;)Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".native.xcrash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
