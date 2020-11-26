.class public final Landroid/app/AndroidAppHelper;
.super Ljava/lang/Object;
.source "AndroidAppHelper.java"


# static fields
.field private static final CLASS_RESOURCES_KEY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final HAS_IS_THEMEABLE:Z

.field private static final HAS_THEME_CONFIG_PARAMETER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    const-string v0, "android.app.ActivityThread$ResourcesKey"

    .line 40
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "android.content.res.ResourcesKey"

    .line 41
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    const-string v2, "mIsThemeable"

    .line 43
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findFieldIfExists(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Landroid/app/AndroidAppHelper;->HAS_IS_THEMEABLE:Z

    if-eqz v0, :cond_2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "android.app.ResourcesManager"

    const-string v5, "getThemeConfig"

    .line 45
    invoke-static {v4, v1, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->findMethodExactIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sput-boolean v2, Landroid/app/AndroidAppHelper;->HAS_THEME_CONFIG_PARAMETER:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActiveResource(Ljava/lang/String;FZLandroid/content/res/Resources;)V
    .locals 0

    .line 116
    invoke-static {p0, p3}, Landroid/app/AndroidAppHelper;->addActiveResource(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static addActiveResource(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 10

    .line 121
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 128
    const-class v1, Landroid/content/res/CompatibilityInfo;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/res/CompatibilityInfo;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-float v1, v1

    const-string v3, "applicationScale"

    invoke-static {v9, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->setFloatField(Ljava/lang/Object;Ljava/lang/String;F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 130
    invoke-static/range {v3 .. v9}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v3, v5, v1}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;F)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 133
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_3

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v3, v5, v1, v5}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 135
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_4

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v3, v5, v1}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;F)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 138
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Landroid/app/AndroidAppHelper;->createResourcesKey(Ljava/lang/String;F)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_6

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    const-string v1, "mResourcesImpl"

    .line 143
    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    invoke-static {v0}, Landroid/app/AndroidAppHelper;->getResourcesMap(Landroid/app/ActivityThread;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 146
    :cond_5
    invoke-static {v0}, Landroid/app/AndroidAppHelper;->getResourcesMap(Landroid/app/ActivityThread;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method private static createResourcesKey(Ljava/lang/String;F)Ljava/lang/Object;
    .locals 5

    .line 64
    :try_start_0
    sget-boolean v0, Landroid/app/AndroidAppHelper;->HAS_IS_THEMEABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    sget-object v0, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 69
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;F)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    .line 77
    :try_start_0
    sget-boolean v1, Landroid/app/AndroidAppHelper;->HAS_THEME_CONFIG_PARAMETER:Z

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    aput-object p2, v8, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v8, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v8, v6

    aput-object v0, v8, v2

    invoke-static {v1, v8}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    sget-boolean v1, Landroid/app/AndroidAppHelper;->HAS_IS_THEMEABLE:Z

    if-eqz v1, :cond_1

    .line 80
    sget-object v1, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    sget-object v1, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 84
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static createResourcesKey(Ljava/lang/String;ILandroid/content/res/Configuration;FLandroid/os/IBinder;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    .line 92
    :try_start_0
    sget-boolean v1, Landroid/app/AndroidAppHelper;->HAS_THEME_CONFIG_PARAMETER:Z

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v9, v6

    aput-object p2, v9, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v9, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v9, v3

    aput-object v0, v9, v7

    aput-object p4, v9, v2

    invoke-static {v1, v9}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    sget-boolean v1, Landroid/app/AndroidAppHelper;->HAS_IS_THEMEABLE:Z

    if-eqz v1, :cond_1

    .line 95
    sget-object v1, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    aput-object p2, v2, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v3

    aput-object p4, v2, v7

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1
    sget-object v1, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    aput-object p2, v2, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v4

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 99
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static createResourcesKey(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Ljava/lang/Object;
    .locals 3

    .line 107
    :try_start_0
    sget-object v0, Landroid/app/AndroidAppHelper;->CLASS_RESOURCES_KEY:Ljava/lang/Class;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 109
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 1

    .line 200
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static currentApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 169
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "mBoundApplication"

    .line 173
    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v1, "appInfo"

    .line 177
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android"

    :goto_0
    return-object v0
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 1

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android"

    :cond_0
    return-object v0
.end method

.method public static getDefaultSharedPreferencesForPackage(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    invoke-direct {v0, p0}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getResourcesMap(Landroid/app/ActivityThread;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "mResourcesManager"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 51
    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mResourceImpls"

    .line 52
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 53
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "mActiveResources"

    if-lt v0, v2, :cond_1

    .line 54
    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 55
    invoke-static {p0, v3}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 57
    :cond_1
    invoke-static {p0, v3}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static getSharedPreferencesForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance p2, Lde/robv/android/xposed/XSharedPreferences;

    invoke-direct {p2, p0, p1}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static reloadSharedPreferencesIfNeeded(Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    instance-of v0, p0, Lde/robv/android/xposed/XSharedPreferences;

    if-eqz v0, :cond_0

    .line 220
    check-cast p0, Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {p0}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    :cond_0
    return-void
.end method
