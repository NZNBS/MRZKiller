.class public final Lc/t/m/g/bf;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc/t/m/g/bf;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lc/t/m/g/bf;->b:I

    iput-object v0, p0, Lc/t/m/g/bf;->c:Ljava/lang/String;

    iput-object v0, p0, Lc/t/m/g/bf;->d:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/t/m/g/bf;->a:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/bf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lc/t/m/g/bf;->b:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lc/t/m/g/bf;->c:Ljava/lang/String;

    invoke-static {}, Lc/t/m/g/l;->b()I

    move-result v1

    iput v1, p0, Lc/t/m/g/bf;->e:I

    iput-object v0, p0, Lc/t/m/g/bf;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
