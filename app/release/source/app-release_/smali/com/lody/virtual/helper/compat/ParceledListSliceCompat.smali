.class public Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;
.super Ljava/lang/Object;
.source "ParceledListSliceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    .line 21
    sget-object v0, Lmirror/android/content/pm/ParceledListSliceJBMR2;->ctor:Lmirror/RefConstructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lmirror/android/content/pm/ParceledListSliceJBMR2;->ctor:Lmirror/RefConstructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    sget-object v0, Lmirror/android/content/pm/ParceledListSlice;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 26
    sget-object v4, Lmirror/android/content/pm/ParceledListSlice;->append:Lmirror/RefMethod;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v4, v0, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lmirror/android/content/pm/ParceledListSlice;->setLastSlice:Lmirror/RefMethod;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getList(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    if-eqz p0, :cond_2

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmirror/android/content/pm/ParceledListSlice;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lmirror/android/content/pm/ParceledListSliceJBMR2;->getList:Lmirror/RefMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lmirror/android/content/pm/ParceledListSliceJBMR2;->getList:Lmirror/RefMethod;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 41
    :cond_1
    sget-object v0, Lmirror/android/content/pm/ParceledListSlice;->getList:Lmirror/RefMethod;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 35
    :cond_2
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lmirror/android/content/pm/ParceledListSlice;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
