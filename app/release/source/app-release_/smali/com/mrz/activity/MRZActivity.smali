.class public Lcom/mrz/activity/MRZActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "y"


# static fields
.field static ALLATORIxDEMO:Landroid/content/Context;


# instance fields
.field F:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 439
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

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

.method private synthetic ALLATORIxDEMO()V
    .locals 4

    .line 208
    new-instance v0, Lcom/mrz/activity/j;

    invoke-direct {v0, p0}, Lcom/mrz/activity/j;-><init>(Lcom/mrz/activity/MRZActivity;)V

    .line 432
    invoke-static {p0}, Lcom/gun0912/tedpermission/TedPermission;->with(Landroid/content/Context;)Lcom/gun0912/tedpermission/TedPermission$Builder;

    move-result-object v1

    .line 444
    invoke-virtual {v1, v0}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    const-string v1, "^\u00107\u000fx\u00037\u0004r\u001cr\u0015cVg\u0013e\u001b~\u0005d\u001fx\u0018;\u000fx\u00037\u0015v\u00187\u0018x\u00027\u0003d\u00137\u0002\u007f\u001fdVd\u0013e\u0000~\u0015r|\u001d&{\u0013v\u0005rVc\u0003e\u00187\u0019yVg\u0013e\u001b~\u0005d\u001fx\u0018dVv\u00027-D\u0013c\u0002~\u0018p+7H7-G\u0013e\u001b~\u0005d\u001fx\u0018J"

    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "u$p8{#pdd/f\'}9g#{$:\u0018Q\u000bP\u0015Q\u0012@\u000fF\u0004U\u0006K\u0019@\u0005F\u000bS\u000f"

    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "v\u0018s\u0004x\u001fsXg\u0013e\u001b~\u0005d\u001fx\u00189!E?C3H3O\"R$Y7[)D\"X$V1R"

    invoke-static {v2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "+z.f%}.::q8y#g9}%zdF\u000fU\u000eK\u001a\\\u0005Z\u000fK\u0019@\u000b@\u000f"

    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 335
    invoke-virtual {v0, v1}, Lcom/gun0912/tedpermission/TedPermission$Builder;->setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object v0

    check-cast v0, Lcom/gun0912/tedpermission/TedPermission$Builder;

    .line 156
    invoke-virtual {v0}, Lcom/gun0912/tedpermission/TedPermission$Builder;->check()V

    return-void
.end method

.method public static ALLATORIxDEMO(Landroid/content/Context;)V
    .locals 2

    .line 266
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 70
    new-instance p0, Landroid/content/Intent;

    sget-object v0, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO:Landroid/content/Context;

    const-class v1, Lcom/mrz/activity/MRZPlugins;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    sget-object v0, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private synthetic ALLATORIxDEMO(Landroid/view/View;)V
    .locals 2

    .line 447
    invoke-static {}, Lcom/mrz/stuff/u;->ALLATORIxDEMO()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "%r\u001ar\u0015cV9\u001be\u000c7\u0010~\u001ar"

    .line 179
    invoke-static {v0}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "\u001ax/u9qf49q&q)`jY\u0018Njr#x/"

    .line 236
    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0x98

    .line 504
    invoke-virtual {p0, p1, v0}, Lcom/mrz/activity/MRZActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic ALLATORIxDEMO(Lcom/mrz/activity/MRZActivity;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Lcom/mrz/activity/MRZActivity;->J()V

    return-void
.end method

.method private synthetic C()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/mrz/activity/MRZActivity;->F:Z

    return-void
.end method

.method private synthetic J()V
    .locals 5

    .line 345
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "8;E,8"

    invoke-static {v2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "eY\u0018Ne"

    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 195
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "8;E,8\u001ax\u0011dXc\u000ec"

    invoke-static {v2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "eY\u0018Nex%s9:>l>"

    if-eqz v0, :cond_1

    .line 333
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 505
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, "\u001ax\u0011t\u0017cV:\u00107"

    invoke-static {v4}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 173
    invoke-direct {p0}, Lcom/mrz/activity/MRZActivity;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    const v0, 0x7f080049

    .line 191
    invoke-virtual {p0, v0}, Lcom/mrz/activity/MRZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mrz/activity/-$$Lambda$MRZActivity$hUjZwfTykTsTO9daciO3kCblZQA;

    invoke-direct {v1, p0}, Lcom/mrz/activity/-$$Lambda$MRZActivity$hUjZwfTykTsTO9daciO3kCblZQA;-><init>(Lcom/mrz/activity/MRZActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mrz/activity/MRZPlugins;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f08012f

    .line 414
    invoke-virtual {p0, v1}, Lcom/mrz/activity/MRZActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mrz/activity/g;

    invoke-direct {v2, p0, v0}, Lcom/mrz/activity/g;-><init>(Lcom/mrz/activity/MRZActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$hUjZwfTykTsTO9daciO3kCblZQA(Lcom/mrz/activity/MRZActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hzwfWiN0QeQR54REze9rFTRXPVA(Lcom/mrz/activity/MRZActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mrz/activity/MRZActivity;->C()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 458
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x98

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 399
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-static {p1}, Lcom/mrz/stuff/u;->ALLATORIxDEMO(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 102
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-static {p0, p2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Landroid/content/Context;Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 370
    iget-boolean v0, p0, Lcom/mrz/activity/MRZActivity;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    const-string v0, "D8q9gjV+w!4\u000bs+}$4\u001e{jQ2}>"

    .line 188
    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mrz/activity/-$$Lambda$MRZActivity$hzwfWiN0QeQR54REze9rFTRXPVA;

    invoke-direct {v1, p0}, Lcom/mrz/activity/-$$Lambda$MRZActivity$hzwfWiN0QeQR54REze9rFTRXPVA;-><init>(Lcom/mrz/activity/MRZActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/mrz/activity/MRZActivity;->F:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 212
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 352
    invoke-virtual {p0, p1}, Lcom/mrz/activity/MRZActivity;->setContentView(I)V

    .line 247
    invoke-direct {p0}, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO()V

    .line 83
    sput-object p0, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO:Landroid/content/Context;

    return-void
.end method
