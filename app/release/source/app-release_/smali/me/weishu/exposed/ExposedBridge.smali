.class public Lme/weishu/exposed/ExposedBridge;
.super Ljava/lang/Object;
.source "ExposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;
    }
.end annotation


# static fields
.field public static final BASE_DIR:Ljava/lang/String;

.field private static final BASE_DIR_LEGACY:Ljava/lang/String; = "/data/data/de.robv.android.xposed.installer/"

.field private static final FAKE_XPOSED_VERSION:I = 0x5b

.field private static final QQ:Ljava/lang/String;

.field private static SYSTEM_CLASSLOADER_INJECT:Z = false

.field private static final TAG:Ljava/lang/String; = "ExposedBridge"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"

.field private static final WECHAT:Ljava/lang/String;

.field private static final XPOSED_INSTALL_PACKAGE:Ljava/lang/String; = "de.robv.android.xposed.installer"

.field private static appContext:Landroid/content/Context;

.field private static currentPackage:Ljava/lang/String;

.field private static exposedClassLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModuleList:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sModuleLoadListener:Lme/weishu/exposed/ModuleLoadListener;

.field private static volatile wcdbLoaded:Z

.field private static xposedClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "/data/user_de/0/de.robv.android.xposed.installer/"

    goto :goto_0

    :cond_0
    const-string v0, "/data/data/de.robv.android.xposed.installer/"

    :goto_0
    sput-object v0, Lme/weishu/exposed/ExposedBridge;->BASE_DIR:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW0="

    .line 71
    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/weishu/exposed/ExposedBridge;->WECHAT:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    .line 72
    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme/weishu/exposed/ExposedBridge;->QQ:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lme/weishu/exposed/ExposedBridge;->SYSTEM_CLASSLOADER_INJECT:Z

    const/4 v1, 0x0

    .line 78
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sput-object v1, Lme/weishu/exposed/ExposedBridge;->lastModuleList:Landroid/util/Pair;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lme/weishu/exposed/ExposedBridge;->exposedClassLoaderMap:Ljava/util/Map;

    .line 85
    sput-boolean v0, Lme/weishu/exposed/ExposedBridge;->wcdbLoaded:Z

    .line 86
    new-instance v0, Lme/weishu/exposed/ExposedBridge$1;

    invoke-direct {v0}, Lme/weishu/exposed/ExposedBridge$1;-><init>()V

    sput-object v0, Lme/weishu/exposed/ExposedBridge;->sModuleLoadListener:Lme/weishu/exposed/ModuleLoadListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lme/weishu/exposed/ExposedBridge;->initForWeChatTranslate(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static closeSliently(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 744
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 635
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 616
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 618
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 619
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lme/weishu/exposed/ExposedBridge;->deleteDir(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static filterApplication(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 376
    :cond_0
    invoke-static {p0}, Lme/weishu/exposed/ExposedBridge;->isXposedInstaller(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v1, "Y29tLnRlbmNlbnQubW06cHVzaA=="

    .line 380
    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ignore process for wechat push."

    .line 382
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static filterModuleForApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 390
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    sget-object v1, Lme/weishu/exposed/ExposedBridge;->WECHAT:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v1, "appbrand"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v1, 0x1

    const-string v2, "com.emily.mmjumphelper.xposed.XposedMain"

    if-eqz p0, :cond_2

    .line 399
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1

    .line 406
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private static declared-synchronized getAppClassLoaderWithXposed(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 3

    const-class v0, Lme/weishu/exposed/ExposedBridge;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lme/weishu/exposed/ExposedBridge;->exposedClassLoaderMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lme/weishu/exposed/ExposedBridge;->exposedClassLoaderMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 165
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 166
    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->getXposedClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 167
    new-instance v2, Lme/weishu/exposed/ComposeClassLoader;

    invoke-direct {v2, v1, p0}, Lme/weishu/exposed/ComposeClassLoader;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    .line 168
    sget-object v1, Lme/weishu/exposed/ExposedBridge;->exposedClassLoaderMap:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getXposedClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    const-class v0, Lme/weishu/exposed/ExposedBridge;

    monitor-enter v0

    .line 174
    :try_start_0
    sget-object v1, Lme/weishu/exposed/ExposedBridge;->xposedClassLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lme/weishu/exposed/XposedClassLoader;

    invoke-direct {v1, p0}, Lme/weishu/exposed/XposedClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lme/weishu/exposed/ExposedBridge;->xposedClassLoader:Ljava/lang/ClassLoader;

    .line 177
    :cond_0
    sget-object p0, Lme/weishu/exposed/ExposedBridge;->xposedClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getXposedVersionFromProperty(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 668
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 670
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string p0, "version"

    .line 671
    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 676
    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :try_start_2
    const-string p0, "getXposedVersion from property failed"

    .line 673
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 676
    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 1

    .line 331
    invoke-static {p0}, Lme/weishu/exposed/ExposedBridge;->ignoreHooks(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 335
    :cond_0
    invoke-static {p0}, Lme/weishu/exposed/ExposedBridge;->presetMethod(Ljava/lang/reflect/Member;)V

    .line 337
    invoke-static {p0, p1}, Lme/weishu/exposed/CHAHelper;->replaceForCHA(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->getHookedMethod()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-static {p1, p0}, Lde/robv/android/xposed/ExposedHelper;->newUnHook(Lde/robv/android/xposed/XC_MethodHook;Ljava/lang/reflect/Member;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0

    .line 342
    :cond_1
    invoke-static {p0, p1}, Lde/robv/android/xposed/DexposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->getHookedMethod()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-static {p1, p0}, Lde/robv/android/xposed/ExposedHelper;->newUnHook(Lde/robv/android/xposed/XC_MethodHook;Ljava/lang/reflect/Member;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p0

    return-object p0
.end method

.method private static ignoreHooks(Ljava/lang/reflect/Member;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 292
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 293
    sget-object v1, Lme/weishu/exposed/ExposedBridge;->QQ:Ljava/lang/String;

    sget-object v2, Lme/weishu/exposed/ExposedBridge;->currentPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "QQAppInterface"

    .line 295
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private static initForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .line 126
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lme/weishu/exposed/ExposedBridge;->currentPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lme/weishu/exposed/ExposedBridge;->currentPackage:Ljava/lang/String;

    :cond_0
    const-string p0, "vxp"

    const-string v0, "1"

    .line 132
    invoke-static {p0, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    new-instance p0, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    const-string p1, "vxp_user_dir"

    invoke-static {p1, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static initForQQ(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    .line 554
    invoke-static {p2}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 555
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 558
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "aG90cGF0Y2hfcHJlZmVyZW5jZQ=="

    .line 559
    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 561
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "a2V5X2NvbmZpZ19wYXRjaF9kZXg="

    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method private static initForWeChatTranslate(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 4

    const-string v0, "com.hkdrjxy.wechart.xposed.XposedInit"

    .line 510
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v0, "com.hiwechart.translate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string p1, "com.tencent.mm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    new-array p1, p0, [Landroid/os/IBinder;

    .line 519
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.hiwechart.translate.aidl.TranslateService"

    .line 520
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 523
    sget-object v0, Lme/weishu/exposed/ExposedBridge;->appContext:Landroid/content/Context;

    new-instance v2, Lme/weishu/exposed/ExposedBridge$7;

    invoke-direct {v2, p1}, Lme/weishu/exposed/ExposedBridge$7;-><init>([Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "android.os.ServiceManager"

    .line 535
    invoke-static {v0, p2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 536
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const-string v0, "user.wechart.trans"

    goto :goto_0

    :cond_2
    const-string v0, "wechart.trans"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 537
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v2, Lme/weishu/exposed/ExposedBridge$8;

    invoke-direct {v2, v0, p1}, Lme/weishu/exposed/ExposedBridge$8;-><init>(Ljava/lang/String;[Landroid/os/IBinder;)V

    aput-object v2, v1, p0

    const-string p0, "getService"

    invoke-static {p2, p0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static initForWechat(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 570
    :cond_0
    sget-object p0, Lme/weishu/exposed/ExposedBridge;->WECHAT:Ljava/lang/String;

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 573
    :cond_1
    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 575
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 577
    new-instance p1, Ljava/io/File;

    const-string p2, "dGlua2Vy"

    invoke-static {p2}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance p2, Ljava/io/File;

    const-string v0, "dGlua2VyX3RlbXA="

    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/io/File;

    const-string v1, "dGlua2VyX3NlcnZlcg=="

    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->deleteDir(Ljava/io/File;)Z

    .line 582
    invoke-static {p2}, Lme/weishu/exposed/ExposedBridge;->deleteDir(Ljava/io/File;)Z

    .line 583
    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->deleteDir(Ljava/io/File;)Z

    .line 585
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    .line 586
    const-class p1, Landroid/os/Process;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    new-instance v1, Lme/weishu/exposed/ExposedBridge$9;

    invoke-direct {v1, p0}, Lme/weishu/exposed/ExposedBridge$9;-><init>(I)V

    aput-object v1, p2, v0

    const-string p0, "killProcess"

    invoke-static {p1, p0, p2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_2
    return-void
.end method

.method private static initForXposedInstaller(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 7

    .line 416
    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->isXposedInstaller(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x5b

    .line 421
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xposed_prop"

    .line 422
    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 424
    invoke-static {v1, v0, v4}, Lme/weishu/exposed/ExposedBridge;->writeXposedProperty(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v2, "xposed config file exists, check version"

    .line 426
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 427
    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->getXposedVersionFromProperty(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 429
    invoke-static {v1, v0, v3}, Lme/weishu/exposed/ExposedBridge;->writeXposedProperty(Ljava/io/File;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "ExposedBridge"

    const-string v2, "xposed version keep same, continue."

    .line 431
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "de.robv.android.xposed.installer.XposedApp"

    .line 435
    invoke-static {v0, p2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v2, "XPOSED_PROP_FILES"

    .line 437
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 439
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 441
    invoke-static {v2, v6, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "getActiveXposedVersion"

    new-array v2, v3, [Ljava/lang/Object;

    .line 445
    new-instance v5, Lme/weishu/exposed/ExposedBridge$2;

    invoke-direct {v5}, Lme/weishu/exposed/ExposedBridge$2;-><init>()V

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const-string v1, "getInstalledXposedVersion"

    new-array v2, v3, [Ljava/lang/Object;

    .line 452
    new-instance v5, Lme/weishu/exposed/ExposedBridge$3;

    invoke-direct {v5}, Lme/weishu/exposed/ExposedBridge$3;-><init>()V

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    const-string v0, "se.emilsjolander.stickylistheaders.StickyListHeadersListView"

    .line 461
    invoke-static {v0, p2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "onSaveInstanceState"

    new-array v1, v3, [Ljava/lang/Object;

    .line 462
    new-instance v2, Lme/weishu/exposed/ExposedBridge$4;

    invoke-direct {v2}, Lme/weishu/exposed/ExposedBridge$4;-><init>()V

    aput-object v2, v1, v4

    invoke-static {p2, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :try_start_1
    const-string p2, "The XposedInstaller you used is not supported."

    .line 476
    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 481
    :catchall_1
    :cond_4
    :goto_2
    const-class p0, Ljava/io/File;

    new-array p2, v3, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, p2, v4

    invoke-static {p0, p2}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 482
    const-class p2, Ljava/io/File;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 483
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 484
    new-instance v0, Lme/weishu/exposed/ExposedBridge$5;

    invoke-direct {v0, p1}, Lme/weishu/exposed/ExposedBridge$5;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 494
    new-instance p0, Lme/weishu/exposed/ExposedBridge$6;

    invoke-direct {p0, p1}, Lme/weishu/exposed/ExposedBridge$6;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static initForXposedModule(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 p2, 0x0

    .line 358
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "xposed_init"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    const-string p0, "epic.force"

    const-string v0, "true"

    .line 359
    invoke-static {p0, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :goto_0
    invoke-static {p2}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "ExposedBridge"

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a Xposed module, do not init epic.force"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 363
    :goto_2
    invoke-static {p2}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static initOnce(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 2

    const/16 v0, 0x5b

    .line 111
    sput v0, Lde/robv/android/xposed/XposedBridge;->XPOSED_BRIDGE_VERSION:I

    .line 112
    sput-object p0, Lme/weishu/exposed/ExposedBridge;->appContext:Landroid/content/Context;

    .line 113
    invoke-static {p0, p1}, Lme/weishu/exposed/ExposedBridge;->initForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    const-string v0, "epic"

    .line 115
    invoke-static {p0, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Lde/robv/android/xposed/ExposedHelper;->initSeLinux(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XSharedPreferences;->setPackageBaseDirectory(Ljava/io/File;)V

    .line 119
    invoke-static {p0, p1, p2}, Lme/weishu/exposed/ExposedBridge;->initForXposedModule(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 120
    invoke-static {p0, p1, p2}, Lme/weishu/exposed/ExposedBridge;->initForXposedInstaller(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 121
    invoke-static {p0, p1, p2}, Lme/weishu/exposed/ExposedBridge;->initForWechat(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 122
    invoke-static {p0, p1, p2}, Lme/weishu/exposed/ExposedBridge;->initForQQ(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 349
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/DexposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static isXposedInstaller(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 368
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "de.robv.android.xposed.installer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static loadModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;
    .locals 5

    .line 183
    invoke-static {p3}, Lme/weishu/exposed/ExposedBridge;->filterApplication(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->IGNORED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object p0

    .line 187
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v0, v1}, Lme/weishu/exposed/ExposedBridge;->loadModuleConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    sget-object v0, Lme/weishu/exposed/ExposedBridge;->lastModuleList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "ExposedBridge"

    if-eqz v0, :cond_d

    sget-object v0, Lme/weishu/exposed/ExposedBridge;->lastModuleList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading modules from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for process: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " i s c: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lme/weishu/exposed/ExposedBridge;->SYSTEM_CLASSLOADER_INJECT:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 199
    sget-object p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->NOT_EXIST:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object p0

    .line 204
    :cond_2
    sget-boolean v0, Lme/weishu/exposed/ExposedBridge;->SYSTEM_CLASSLOADER_INJECT:Z

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Ldalvik/system/DexClassLoader;

    sget-object v2, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-direct {v0, p0, p1, p2, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 210
    :cond_3
    const-class v0, Lme/weishu/exposed/ExposedBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 211
    invoke-static {p4}, Lme/weishu/exposed/ExposedBridge;->getAppClassLoaderWithXposed(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p4

    .line 212
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->getXposedClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v2, p0, p1, p2, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v0, v2

    :goto_0
    const-string p1, "assets/xposed_init"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p0, "assets/xposed_init not found in the APK"

    .line 218
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 219
    sget-object p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->INVALID:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object p0

    .line 222
    :cond_4
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 225
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 230
    :cond_6
    invoke-static {p3, v2}, Lme/weishu/exposed/ExposedBridge;->filterModuleForApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore module: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for application: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 235
    :cond_7
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Loading class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 238
    sget-object v4, Lme/weishu/exposed/ExposedBridge;->sModuleLoadListener:Lme/weishu/exposed/ModuleLoadListener;

    invoke-interface {v4, v2, p3, v0}, Lme/weishu/exposed/ModuleLoadListener;->onLoadingModule(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 240
    invoke-static {v3}, Lde/robv/android/xposed/ExposedHelper;->isIXposedMod(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v2, "    This class doesn\'t implement any sub-interface of IXposedMod, skipping it"

    .line 241
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_8
    const-class v4, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v2, "    This class requires resource-related hooks (which are disabled), skipping it."

    .line 244
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 249
    instance-of v1, p2, Lde/robv/android/xposed/IXposedHookZygoteInit;

    if-eqz v1, :cond_a

    .line 250
    invoke-static {p0, p2}, Lde/robv/android/xposed/ExposedHelper;->callInitZygote(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    :cond_a
    instance-of p0, p2, Lde/robv/android/xposed/IXposedHookLoadPackage;

    if-eqz p0, :cond_b

    .line 255
    new-instance p0, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;

    move-object v1, p2

    check-cast v1, Lde/robv/android/xposed/IXposedHookLoadPackage;

    invoke-direct {p0, v1}, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;-><init>(Lde/robv/android/xposed/IXposedHookLoadPackage;)V

    .line 256
    new-instance v1, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    .line 257
    invoke-virtual {v1, p0}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0, v1}, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;-><init>(Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;)V

    .line 259
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    .line 260
    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v1, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    .line 261
    iput-object p4, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 262
    iput-object p3, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 p4, 0x1

    .line 263
    iput-boolean p4, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->isFirstApplication:Z

    .line 264
    invoke-static {p0}, Lde/robv/android/xposed/callbacks/XC_LoadPackage;->callAll(Lde/robv/android/xposed/callbacks/XCallback$Param;)V

    .line 267
    :cond_b
    instance-of p0, p2, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    .line 272
    sget-object p0, Lme/weishu/exposed/ExposedBridge;->sModuleLoadListener:Lme/weishu/exposed/ModuleLoadListener;

    invoke-interface {p0, v2, p3, v0}, Lme/weishu/exposed/ModuleLoadListener;->onModuleLoaded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 275
    :try_start_2
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    .line 277
    :goto_2
    sget-object p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->SUCCESS:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    return-object p0

    :cond_c
    :goto_3
    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 280
    :try_start_3
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 284
    :goto_4
    sget-object p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->FAILED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object p0

    .line 282
    :goto_5
    invoke-static {p1}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    throw p0

    .line 191
    :cond_d
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "module:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is disabled, ignore"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object p0, Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;->DISABLED:Lme/weishu/exposed/ExposedBridge$ModuleLoadResult;

    return-object p0
.end method

.method private static loadModuleConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 687
    sget-object v0, Lme/weishu/exposed/ExposedBridge;->lastModuleList:Landroid/util/Pair;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lme/weishu/exposed/ExposedBridge;->lastModuleList:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return v1

    .line 693
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "de.robv.android.xposed.installer"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    return v2

    .line 700
    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v3, "exposed_conf/modules.list"

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "ExposedBridge"

    const-string p1, "xposed installer\'s modules not exist, ignore."

    .line 703
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 708
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 710
    :try_start_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 711
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 712
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "#"

    .line 713
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 716
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 719
    :cond_4
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 722
    :cond_5
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    sput-object p0, Lme/weishu/exposed/ExposedBridge;->lastModuleList:Landroid/util/Pair;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 733
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v1

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 726
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    .line 731
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 733
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_3
    return v2

    :goto_4
    if-eqz v0, :cond_7

    .line 731
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 733
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 734
    :cond_7
    :goto_5
    throw p0
.end method

.method private static patchSystemClassLoader()Z
    .locals 6

    .line 138
    new-instance v0, Lme/weishu/exposed/XposedClassLoader;

    const-class v1, Lme/weishu/exposed/ExposedBridge;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/weishu/exposed/XposedClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 141
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    .line 144
    :try_start_0
    const-class v3, Ljava/lang/ClassLoader;

    const-string v4, "parent"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XposedBridge\'s BootClassLoader: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", parent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lde/robv/android/xposed/XposedBridge;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-virtual {v5}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return v2

    :catch_1
    move-exception v0

    .line 153
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return v2
.end method

.method private static presetMethod(Ljava/lang/reflect/Member;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 309
    :cond_0
    sget-object v0, Lme/weishu/exposed/ExposedBridge;->WECHAT:Ljava/lang/String;

    sget-object v1, Lme/weishu/exposed/ExposedBridge;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wcdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    sget-boolean v0, Lme/weishu/exposed/ExposedBridge;->wcdbLoaded:Z

    if-nez v0, :cond_2

    .line 313
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.wcdb.database.SQLiteDatabase"

    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "preload sqlite class failed!!!"

    .line 318
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 324
    sput-boolean p0, Lme/weishu/exposed/ExposedBridge;->wcdbLoaded:Z

    :cond_2
    return-void
.end method

.method private static writeXposedProperty(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2

    .line 646
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    const-string v0, "version"

    .line 647
    invoke-virtual {p2, v0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arch"

    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "minsdk"

    const-string v1, "52"

    .line 649
    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 650
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxsdk"

    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 654
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    :try_start_1
    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    invoke-static {v1}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 658
    :catch_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p2, 0x0

    .line 659
    invoke-static {p0, p1, p2}, Lme/weishu/exposed/ExposedBridge;->writeXposedProperty(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 661
    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lme/weishu/exposed/ExposedBridge;->closeSliently(Ljava/io/Closeable;)V

    throw p0
.end method
