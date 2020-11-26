.class public Lcom/lody/virtual/client/hook/providers/ProviderHook;
.super Ljava/lang/Object;
.source "ProviderHook.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;
    }
.end annotation


# static fields
.field private static final PROVIDER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_ARG_SQL_SELECTION:Ljava/lang/String; = "android:query-arg-sql-selection"

.field public static final QUERY_ARG_SQL_SELECTION_ARGS:Ljava/lang/String; = "android:query-arg-sql-selection-args"

.field public static final QUERY_ARG_SQL_SORT_ORDER:Ljava/lang/String; = "android:query-arg-sql-sort-order"


# instance fields
.field protected final mBase:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->PROVIDER_MAP:Ljava/util/Map;

    .line 42
    new-instance v1, Lcom/lody/virtual/client/hook/providers/ProviderHook$1;

    invoke-direct {v1}, Lcom/lody/virtual/client/hook/providers/ProviderHook$1;-><init>()V

    const-string v2, "settings"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lcom/lody/virtual/client/hook/providers/ProviderHook$2;

    invoke-direct {v1}, Lcom/lody/virtual/client/hook/providers/ProviderHook$2;-><init>()V

    const-string v2, "downloads"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Lcom/lody/virtual/client/hook/providers/ProviderHook$3;

    invoke-direct {v1}, Lcom/lody/virtual/client/hook/providers/ProviderHook$3;-><init>()V

    const-string v2, "media"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->mBase:Ljava/lang/Object;

    return-void
.end method

.method private static createProxy(Landroid/os/IInterface;Lcom/lody/virtual/client/hook/providers/ProviderHook;)Landroid/os/IInterface;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lmirror/android/content/IContentProvider;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {p0, v0, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createProxy(ZLjava/lang/String;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 1

    .line 94
    instance-of v0, p2, Ljava/lang/reflect/Proxy;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;

    if-eqz v0, :cond_0

    return-object p2

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->fetchHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p1, p0, p2}, Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;->fetch(ZLandroid/os/IInterface;)Lcom/lody/virtual/client/hook/providers/ProviderHook;

    move-result-object p0

    .line 100
    invoke-static {p2, p0}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->createProxy(Landroid/os/IInterface;Lcom/lody/virtual/client/hook/providers/ProviderHook;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2
.end method

.method private static fetchHook(Ljava/lang/String;)Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;
    .locals 1

    .line 69
    sget-object v0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->PROVIDER_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lody/virtual/client/hook/providers/ProviderHook$HookFetcher;

    if-nez p0, :cond_0

    .line 71
    new-instance p0, Lcom/lody/virtual/client/hook/providers/ProviderHook$4;

    invoke-direct {p0}, Lcom/lody/virtual/client/hook/providers/ProviderHook$4;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public bulkInsert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public call(Lcom/lody/virtual/client/hook/base/MethodBox;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method public delete(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getType(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    return-object p1
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :goto_0
    new-instance v1, Lcom/lody/virtual/client/hook/base/MethodBox;

    iget-object p1, p0, Lcom/lody/virtual/client/hook/providers/ProviderHook;->mBase:Ljava/lang/Object;

    invoke-direct {v1, p2, p1, p3}, Lcom/lody/virtual/client/hook/base/MethodBox;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 155
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    const/4 v10, 0x2

    .line 158
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call"

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 163
    :cond_1
    aget-object v0, p3, p1

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    .line 164
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    add-int/2addr p1, v10

    .line 165
    aget-object p1, p3, p1

    check-cast p1, Landroid/os/Bundle;

    .line 166
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->call(Lcom/lody/virtual/client/hook/base/MethodBox;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "insert"

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    aget-object v0, p3, p1

    check-cast v0, Landroid/net/Uri;

    add-int/2addr p1, v9

    .line 169
    aget-object p1, p3, p1

    check-cast p1, Landroid/content/ContentValues;

    .line 170
    invoke-virtual {p0, v1, v0, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->insert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v2, "getType"

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    aget-object p1, p3, v8

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->getType(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v2, "delete"

    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 174
    aget-object v0, p3, p1

    check-cast v0, Landroid/net/Uri;

    add-int/lit8 v2, p1, 0x1

    .line 175
    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    add-int/2addr p1, v10

    .line 176
    aget-object p1, p3, p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->delete(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v2, "bulkInsert"

    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 179
    aget-object v0, p3, p1

    check-cast v0, Landroid/net/Uri;

    add-int/2addr p1, v9

    .line 180
    aget-object p1, p3, p1

    check-cast p1, [Landroid/content/ContentValues;

    check-cast p1, [Landroid/content/ContentValues;

    .line 181
    invoke-virtual {p0, v1, v0, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->bulkInsert(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v2, "update"

    .line 182
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 183
    aget-object v0, p3, p1

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    add-int/lit8 v0, p1, 0x1

    .line 184
    aget-object v0, p3, v0

    move-object v3, v0

    check-cast v3, Landroid/content/ContentValues;

    add-int/lit8 v0, p1, 0x2

    .line 185
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    add-int/lit8 p1, p1, 0x3

    .line 186
    aget-object p1, p3, p1

    check-cast p1, [Ljava/lang/String;

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->update(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v2, "openFile"

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 189
    aget-object v0, p3, p1

    check-cast v0, Landroid/net/Uri;

    add-int/2addr p1, v9

    .line 190
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 191
    invoke-virtual {p0, v1, v0, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->openFile(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v2, "openAssetFile"

    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 193
    aget-object v0, p3, p1

    check-cast v0, Landroid/net/Uri;

    add-int/2addr p1, v9

    .line 194
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    .line 195
    invoke-virtual {p0, v1, v0, p1}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->openAssetFile(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_9
    const-string v2, "query"

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 197
    aget-object v0, p3, p1

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    add-int/lit8 v0, p1, 0x1

    .line 198
    aget-object v0, p3, v0

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-lt v0, v4, :cond_b

    add-int/2addr p1, v10

    .line 204
    aget-object p1, p3, p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_a

    const-string v0, "android:query-arg-sql-selection"

    .line 206
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "android:query-arg-sql-selection-args"

    .line 207
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:query-arg-sql-sort-order"

    .line 208
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, p1

    move-object v6, v5

    goto :goto_2

    :cond_a
    move-object v7, p1

    move-object v4, v5

    move-object v6, v4

    goto :goto_3

    :cond_b
    add-int/lit8 v0, p1, 0x2

    .line 211
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x3

    .line 212
    aget-object v4, p3, v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    add-int/lit8 p1, p1, 0x4

    .line 213
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/String;

    move-object v6, p1

    move-object v7, v5

    :goto_2
    move-object v5, v4

    move-object v4, v0

    :goto_3
    move-object v0, p0

    .line 215
    invoke-virtual/range {v0 .. v7}, Lcom/lody/virtual/client/hook/providers/ProviderHook;->query(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 217
    :cond_c
    invoke-virtual {v1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    new-array v0, v10, [Ljava/lang/Object;

    .line 219
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v8

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v9

    const-string p2, "ProviderHook"

    const-string p3, "call: %s (%s) with error"

    invoke-static {p2, p3, v0}, Lcom/lody/virtual/helper/utils/VLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p2, :cond_d

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 223
    :cond_d
    throw p1
.end method

.method public openAssetFile(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetFileDescriptor;

    return-object p1
.end method

.method public openFile(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method protected varargs processArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public query(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    return-object p1
.end method

.method public update(Lcom/lody/virtual/client/hook/base/MethodBox;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodBox;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
