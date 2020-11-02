.class public Lcom/lody/virtual/GmsSupport;
.super Ljava/lang/Object;
.source "GmsSupport.java"


# static fields
.field public static final GOOGLE_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GOOGLE_SERVICE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "com.android.vending"

    const-string v1, "com.google.android.play.games"

    const-string v2, "com.google.android.wearable.app"

    const-string v3, "com.google.android.wearable.app.cn"

    .line 17
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/GmsSupport;->GOOGLE_APP:Ljava/util/List;

    const-string v1, "com.google.android.gsf"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gsf.login"

    const-string v4, "com.google.android.backuptransport"

    const-string v5, "com.google.android.backup"

    const-string v6, "com.google.android.configupdater"

    const-string v7, "com.google.android.syncadapters.contacts"

    const-string v8, "com.google.android.feedback"

    const-string v9, "com.google.android.onetimeinitializer"

    const-string v10, "com.google.android.partnersetup"

    const-string v11, "com.google.android.setupwizard"

    const-string v12, "com.google.android.syncadapters.calendar"

    .line 24
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/GmsSupport;->GOOGLE_SERVICE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installGApps(I)V
    .locals 1

    .line 76
    sget-object v0, Lcom/lody/virtual/GmsSupport;->GOOGLE_SERVICE:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/lody/virtual/GmsSupport;->installPackages(Ljava/util/List;I)V

    .line 77
    sget-object v0, Lcom/lody/virtual/GmsSupport;->GOOGLE_APP:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/lody/virtual/GmsSupport;->installPackages(Ljava/util/List;I)V

    return-void
.end method

.method public static installGoogleApp(I)V
    .locals 1

    .line 85
    sget-object v0, Lcom/lody/virtual/GmsSupport;->GOOGLE_APP:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/lody/virtual/GmsSupport;->installPackages(Ljava/util/List;I)V

    return-void
.end method

.method public static installGoogleService(I)V
    .locals 1

    .line 81
    sget-object v0, Lcom/lody/virtual/GmsSupport;->GOOGLE_SERVICE:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/lody/virtual/GmsSupport;->installPackages(Ljava/util/List;I)V

    return-void
.end method

.method private static installPackages(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    .line 54
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/client/core/VirtualCore;->isAppInstalledAsUser(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lody/virtual/client/core/VirtualCore;->getUnHookPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v2, :cond_0

    .line 64
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 68
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/lody/virtual/client/core/VirtualCore;->installPackage(Ljava/lang/String;I)Lcom/lody/virtual/remote/InstallResult;

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/lody/virtual/client/core/VirtualCore;->installPackageAsUser(ILjava/lang/String;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static isGmsFamilyPackage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.vending"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isGoogleFrameworkInstalled()Z
    .locals 2

    .line 45
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOutsideGoogleFrameworkExist()Z
    .locals 2

    .line 49
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/core/VirtualCore;->isOutsideInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
