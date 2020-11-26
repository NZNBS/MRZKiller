.class public Lcom/allenliu/versionchecklib/core/VersionDialogActivity;
.super Landroid/app/Activity;
.source "VersionDialogActivity.java"

# interfaces
.implements Lcom/allenliu/versionchecklib/callback/DownloadListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final MY_PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x123

.field public static instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;


# instance fields
.field private apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

.field private cancelListener:Lcom/allenliu/versionchecklib/callback/DialogDismissListener;

.field private commitListener:Lcom/allenliu/versionchecklib/callback/CommitClickListener;

.field private downloadUrl:Ljava/lang/String;

.field protected failDialog:Landroid/app/Dialog;

.field isDestroy:Z

.field protected loadingDialog:Landroid/app/Dialog;

.field private loadingView:Landroid/view/View;

.field private title:Ljava/lang/String;

.field private updateMsg:Ljava/lang/String;

.field protected versionDialog:Landroid/app/Dialog;

.field private versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    return-void
.end method

.method static synthetic access$000(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)Lcom/allenliu/versionchecklib/callback/CommitClickListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->commitListener:Lcom/allenliu/versionchecklib/callback/CommitClickListener;

    return-object p0
.end method

.method private dismissAllDialog()V
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dismiss all dialog"

    .line 374
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 379
    :cond_2
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VERSION_PARAMS_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 131
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showVersionDialog()V

    :cond_0
    return-void
.end method

.method private retryDownload(Landroid/content/Intent;)V
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dismissAllDialog()V

    const-string v0, "VERSION_PARAMS_KEY"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allenliu/versionchecklib/core/VersionParams;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    const-string v0, "downloadUrl"

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->requestPermissionAndDownloadFile()V

    return-void
.end method

.method private static setRootView(Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1020002

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 82
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 83
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 84
    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 85
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setTransparent(Landroid/app/Activity;)V
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->transparentStatusBar(Landroid/app/Activity;)V

    .line 58
    invoke-static {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->setRootView(Landroid/app/Activity;)V

    return-void
.end method

.method private static transparentStatusBar(Landroid/app/Activity;)V
    .locals 3

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dealAPK()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/core/VersionParams;->getDownloadAPKPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_apkname:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/allenliu/versionchecklib/utils/AppUtils;->installApk(Landroid/content/Context;Ljava/io/File;)V

    .line 243
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->requestPermissionAndDownloadFile()V

    :goto_0
    return-void
.end method

.method protected downloadFile()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-static {p0, v0, v1, p0}, Lcom/allenliu/versionchecklib/core/DownloadManager;->downloadAPK(Landroid/content/Context;Ljava/lang/String;Lcom/allenliu/versionchecklib/core/VersionParams;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V

    return-void
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionParamBundle()Landroid/os/Bundle;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getParamBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getVersionParams()Lcom/allenliu/versionchecklib/core/VersionParams;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    return-object v0
.end method

.method public getVersionTitle()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionUpdateMsg()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    return-object v0
.end method

.method public onCheckerDownloadFail()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloadFail()V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dismissAllDialog()V

    .line 350
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showFailDialog()V

    return-void
.end method

.method public onCheckerDownloadSuccess(Ljava/io/File;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloadSuccess(Ljava/io/File;)V

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dismissAllDialog()V

    return-void
.end method

.method public onCheckerDownloading(I)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/APKDownloadListener;->onDownloading(I)V

    :cond_2
    return-void
.end method

.method public onCheckerStartDownload()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sput-object p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    .line 94
    invoke-static {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->setTransparent(Landroid/app/Activity;)V

    .line 95
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isRetry"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->retryDownload(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->initialize()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    const/4 v0, 0x0

    .line 366
    sput-object v0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 389
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 390
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isSilentDownload()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionParams:Lcom/allenliu/versionchecklib/core/VersionParams;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionParams;->isShowDownloadingDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->cancelListener:Lcom/allenliu/versionchecklib/callback/DialogDismissListener;

    if-eqz v0, :cond_2

    .line 392
    invoke-interface {v0, p1}, Lcom/allenliu/versionchecklib/callback/DialogDismissListener;->dialogDismiss(Landroid/content/DialogInterface;)V

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "isRetry"

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->retryDownload(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x123

    if-eq p1, p2, :cond_0

    return-void

    .line 302
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadFile()V

    goto :goto_0

    .line 309
    :cond_1
    sget p1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_write_permission_deny:I

    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected requestPermissionAndDownloadFile()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 263
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x123

    if-eqz v1, :cond_0

    .line 274
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->downloadFile()V

    :goto_0
    return-void
.end method

.method public setApkDownloadListener(Lcom/allenliu/versionchecklib/callback/APKDownloadListener;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->apkDownloadListener:Lcom/allenliu/versionchecklib/callback/APKDownloadListener;

    return-void
.end method

.method public setCommitClickListener(Lcom/allenliu/versionchecklib/callback/CommitClickListener;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->commitListener:Lcom/allenliu/versionchecklib/callback/CommitClickListener;

    return-void
.end method

.method public setDialogDimissListener(Lcom/allenliu/versionchecklib/callback/DialogDismissListener;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->cancelListener:Lcom/allenliu/versionchecklib/callback/DialogDismissListener;

    return-void
.end method

.method public showFailDialog()V
    .locals 3

    .line 191
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_download_fail_retry:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_confirm:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_cancel:I

    .line 200
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    .line 201
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 203
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->failDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public showLoadingDialog(I)V
    .locals 6

    const-string v0, "show default downloading dialog"

    .line 167
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 168
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 170
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/allenliu/versionchecklib/R$layout;->downloading_layout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    .line 171
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    .line 172
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 173
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 174
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$3;

    invoke-direct {v3, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$3;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    sget v3, Lcom/allenliu/versionchecklib/R$id;->pb:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 183
    iget-object v3, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingView:Landroid/view/View;

    sget v4, Lcom/allenliu/versionchecklib/R$id;->tv_progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 184
    sget v4, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_progress:I

    invoke-virtual {p0, v4}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 186
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->loadingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method protected showVersionDialog()V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->isDestroy:Z

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->updateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_confirm:I

    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$2;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_cancel:I

    .line 151
    invoke-virtual {p0, v1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;-><init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    .line 158
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 159
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 161
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->versionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
