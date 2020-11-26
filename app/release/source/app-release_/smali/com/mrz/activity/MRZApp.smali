.class public Lcom/mrz/activity/MRZApp;
.super Landroid/app/Application;
.source "n"


# instance fields
.field private final ALLATORIxDEMO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 141
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "MRZAPP"

    .line 497
    iput-object v0, p0, Lcom/mrz/activity/MRZApp;->ALLATORIxDEMO:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x176bbe33e27L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "3O&^$R26"

    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic ALLATORIxDEMO(Lcom/mrz/activity/MRZApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/mrz/activity/MRZApp;->C(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic ALLATORIxDEMO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic C(Lcom/mrz/activity/MRZApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/mrz/activity/MRZApp;->ALLATORIxDEMO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 487
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mrz/activity/MRZApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\u0018MXTUJCVY\\D\u0016S\\ULP\u0017]JXW"

    invoke-static {v3}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 155
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lxcrash/TombstoneParser;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    const-string p2, "MRZAPP"

    const-string v1, "\u0012r\u0014b\u00117\u0010v\u001f{\u0013s"

    .line 318
    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 366
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_0
    return-void

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 188
    :catch_4
    :cond_1
    throw p1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 4

    .line 17
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/lody/virtual/client/NativeEngine;->disableJit(I)V

    .line 83
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->startup(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :goto_0
    new-instance p1, Lcom/mrz/activity/o;

    invoke-direct {p1, p0}, Lcom/mrz/activity/o;-><init>(Lcom/mrz/activity/MRZApp;)V

    const-string v0, "OzEXDQ\u0017jsr\u0017PYPC\u0003\u0017JCXEM"

    .line 335
    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRZAPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Lxcrash/XCrash$InitParameters;

    invoke-direct {v0}, Lxcrash/XCrash$InitParameters;-><init>()V

    const-string v2, "G9D9E:\u0014r\u0002vB\"@:\u0006v\u0002t\u001e N."

    invoke-static {v2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setAppVersion(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    const/4 v2, 0x1

    .line 288
    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setJavaRethrow(Z)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    const/16 v3, 0xa

    .line 345
    invoke-virtual {v0, v3}, Lxcrash/XCrash$InitParameters;->setJavaLogCountMax(I)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 195
    invoke-virtual {v0, p1}, Lxcrash/XCrash$InitParameters;->setJavaCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setNativeRethrow(Z)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 333
    invoke-virtual {v0, v3}, Lxcrash/XCrash$InitParameters;->setNativeLogCountMax(I)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 505
    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setNativeDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lxcrash/XCrash$InitParameters;->setNativeCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 455
    invoke-virtual {v0, v2}, Lxcrash/XCrash$InitParameters;->setAnrRethrow(Z)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v3}, Lxcrash/XCrash$InitParameters;->setAnrLogCountMax(I)Lxcrash/XCrash$InitParameters;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p1}, Lxcrash/XCrash$InitParameters;->setAnrCallback(Lxcrash/ICrashCallback;)Lxcrash/XCrash$InitParameters;

    move-result-object p1

    const/4 v0, 0x3

    .line 182
    invoke-virtual {p1, v0}, Lxcrash/XCrash$InitParameters;->setPlaceholderCountMax(I)Lxcrash/XCrash$InitParameters;

    move-result-object p1

    const/16 v0, 0x200

    .line 248
    invoke-virtual {p1, v0}, Lxcrash/XCrash$InitParameters;->setPlaceholderSizeKb(I)Lxcrash/XCrash$InitParameters;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 231
    invoke-virtual {p1, v0}, Lxcrash/XCrash$InitParameters;->setLogFileMaintainDelayMs(I)Lxcrash/XCrash$InitParameters;

    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Lxcrash/XCrash;->init(Landroid/content/Context;Lxcrash/XCrash$InitParameters;)I

    const-string p1, "OzEXDQ\u0017jsr\u0017PYPC\u0003\u0017\\Y]"

    .line 430
    invoke-static {p1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/mrz/activity/l;

    invoke-direct {v0, p0}, Lcom/mrz/activity/l;-><init>(Lcom/mrz/activity/MRZApp;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 407
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
