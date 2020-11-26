.class public Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PermissionDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private sendBroadcast(Z)V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.allenliu.versionchecklib.filepermisssion.action"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 21
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x123

    if-eqz v0, :cond_0

    .line 32
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 41
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Z)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 p2, 0x123

    if-eq p1, p2, :cond_0

    return-void

    .line 69
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 74
    invoke-direct {p0, v0}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Z)V

    goto :goto_0

    .line 76
    :cond_1
    sget p1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_write_permission_deny:I

    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 77
    invoke-direct {p0, p2}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Z)V

    :goto_0
    return-void
.end method
