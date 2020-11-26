.class public abstract Lcom/gun0912/tedpermission/PermissionBuilder;
.super Ljava/lang/Object;
.source "PermissionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/gun0912/tedpermission/PermissionBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PREFS_IS_FIRST_REQUEST:Ljava/lang/String; = "PREFS_IS_FIRST_REQUEST"

.field private static final PREFS_NAME_PERMISSION:Ljava/lang/String; = "PREFS_NAME_PERMISSION"


# instance fields
.field private context:Landroid/content/Context;

.field private deniedCloseButtonText:Ljava/lang/CharSequence;

.field private denyMessage:Ljava/lang/CharSequence;

.field private denyTitle:Ljava/lang/CharSequence;

.field private hasSettingBtn:Z

.field private listener:Lcom/gun0912/tedpermission/PermissionListener;

.field private permissions:[Ljava/lang/String;

.field private rationaleConfirmText:Ljava/lang/CharSequence;

.field private rationaleMessage:Ljava/lang/CharSequence;

.field private rationaleTitle:Ljava/lang/CharSequence;

.field private requestedOrientation:I

.field private settingButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->hasSettingBtn:Z

    .line 32
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    .line 33
    sget v0, Lcom/gun0912/tedpermission/R$string;->tedpermission_close:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->deniedCloseButtonText:Ljava/lang/CharSequence;

    .line 34
    sget v0, Lcom/gun0912/tedpermission/R$string;->tedpermission_confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleConfirmText:Ljava/lang/CharSequence;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->requestedOrientation:I

    return-void
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1

    if-lez p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid String resource id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected checkPermissions()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/gun0912/tedpermission/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-interface {v0}, Lcom/gun0912/tedpermission/PermissionListener;->onPermissionGranted()V

    return-void

    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleTitle:Ljava/lang/CharSequence;

    const-string v2, "rationale_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleMessage:Ljava/lang/CharSequence;

    const-string v2, "rationale_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyTitle:Ljava/lang/CharSequence;

    const-string v2, "deny_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyMessage:Ljava/lang/CharSequence;

    const-string v2, "deny_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-boolean v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->hasSettingBtn:Z

    const-string v2, "setting_button"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->deniedCloseButtonText:Ljava/lang/CharSequence;

    const-string v2, "denied_dialog_close_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleConfirmText:Ljava/lang/CharSequence;

    const-string v2, "rationale_confirm_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->settingButtonText:Ljava/lang/CharSequence;

    const-string v2, "setting_button_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 62
    iget v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->requestedOrientation:I

    const-string v2, "screen_orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    invoke-static {v1, v0, v2}, Lcom/gun0912/tedpermission/TedPermissionActivity;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/gun0912/tedpermission/PermissionListener;)V

    .line 67
    iget-object v0, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gun0912/tedpermission/TedPermissionBase;->setFirstRequest(Landroid/content/Context;[Ljava/lang/String;)V

    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must setPermissions() on TedPermission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must setPermissionListener() on TedPermission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeniedCloseButtonText(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedCloseButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeniedCloseButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->deniedCloseButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDeniedMessage(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeniedMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDeniedTitle(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setDeniedTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDeniedTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->denyTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setGotoSettingButton(Z)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 125
    iput-boolean p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->hasSettingBtn:Z

    return-object p0
.end method

.method public setGotoSettingButtonText(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setGotoSettingButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setGotoSettingButtonText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->settingButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPermissionListener(Lcom/gun0912/tedpermission/PermissionListener;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gun0912/tedpermission/PermissionListener;",
            ")TT;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->listener:Lcom/gun0912/tedpermission/PermissionListener;

    return-object p0
.end method

.method public varargs setPermissions([Ljava/lang/String;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->permissions:[Ljava/lang/String;

    return-object p0
.end method

.method public setRationaleConfirmText(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setRationaleConfirmText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRationaleConfirmText(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleConfirmText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setRationaleMessage(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setRationaleMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRationaleMessage(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setRationaleTitle(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gun0912/tedpermission/PermissionBuilder;->setRationaleTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setRationaleTitle(Ljava/lang/CharSequence;)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->rationaleTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/gun0912/tedpermission/PermissionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 157
    iput p1, p0, Lcom/gun0912/tedpermission/PermissionBuilder;->requestedOrientation:I

    return-object p0
.end method
