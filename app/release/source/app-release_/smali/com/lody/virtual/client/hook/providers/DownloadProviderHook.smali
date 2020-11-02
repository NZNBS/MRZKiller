.class Lcom/lody/virtual/client/hook/providers/DownloadProviderHook;
.super Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;
.source "DownloadProviderHook.java"


# static fields
.field private static final COLUMN_COOKIE_DATA:Ljava/lang/String; = "cookiedata"

.field private static final COLUMN_IS_PUBLIC_API:Ljava/lang/String; = "is_public_api"

.field private static final COLUMN_NOTIFICATION_CLASS:Ljava/lang/String; = "notificationclass"

.field private static final COLUMN_NOTIFICATION_PACKAGE:Ljava/lang/String; = "notificationpackage"

.field private static final COLUMN_OTHER_UID:Ljava/lang/String; = "otheruid"

.field private static final ENFORCE_REMOVE_COLUMNS:[Ljava/lang/String;

.field private static final INSERT_KEY_PREFIX:Ljava/lang/String; = "http_header_"

.field private static final TAG:Ljava/lang/String; = "DownloadProviderHook"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "otheruid"

    const-string v1, "notificationclass"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/providers/DownloadProviderHook;->ENFORCE_REMOVE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const-string v0, "notificationpackage"

    .line 40
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "cookiedata"

    .line 43
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 48
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http_header_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "is_public_api"

    .line 54
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 57
    :cond_3
    sget-object v0, Lcom/lody/virtual/client/hook/providers/DownloadProviderHook;->ENFORCE_REMOVE_COLUMNS:[Ljava/lang/String;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 58
    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 59
    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public query(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 67
    invoke-super/range {p0 .. p7}, Lcom/lody/virtual/client/hook/providers/ExternalProviderHook;->query(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;

    const-string p3, "local_filename"

    invoke-direct {p2, p1, p3}, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object p2
.end method
