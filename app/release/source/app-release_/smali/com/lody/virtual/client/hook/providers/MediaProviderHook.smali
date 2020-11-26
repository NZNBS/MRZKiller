.class Lcom/lody/virtual/client/hook/providers/MediaProviderHook;
.super Lcom/lody/virtual/client/hook/providers/ProviderHook;
.source "MediaProviderHook.java"


# static fields
.field private static final COLUMN_NAME:Ljava/lang/String; = "_data"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 27
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 28
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 29
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 30
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 31
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 32
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "_data"

    .line 37
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 41
    :cond_2
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/lody/virtual/client/NativeEngine;->getEscapePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 34
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

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

    .line 48
    invoke-super/range {p0 .. p7}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->query(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;

    const-string p3, "_data"

    invoke-direct {p2, p1, p3}, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    return-object p2
.end method
