.class public final Lcom/lody/virtual/client/env/SpecialComponentList;
.super Ljava/lang/Object;
.source "SpecialComponentList.java"


# static fields
.field private static final ACTION_BLACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTRUMENTATION_CONFLICTING:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTECTED_ACTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static PROTECT_ACTION_PREFIX:Ljava/lang/String;

.field private static final SPEC_SYSTEM_APP_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_BROADCAST_ACTION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_PERMISSION:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    .line 26
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECTED_ACTION_MAP:Ljava/util/Map;

    .line 27
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    .line 28
    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    sput-object v4, Lcom/lody/virtual/client/env/SpecialComponentList;->INSTRUMENTATION_CONFLICTING:Ljava/util/HashSet;

    .line 29
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v5, Lcom/lody/virtual/client/env/SpecialComponentList;->SPEC_SYSTEM_APP_LIST:Ljava/util/HashSet;

    .line 30
    new-instance v3, Ljava/util/HashSet;

    const/4 v6, 0x7

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    sput-object v3, Lcom/lody/virtual/client/env/SpecialComponentList;->SYSTEM_BROADCAST_ACTION:Ljava/util/Set;

    const-string v6, "_VA_protected_"

    .line 31
    sput-object v6, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECT_ACTION_PREFIX:Ljava/lang/String;

    const-string v6, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 34
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.SCREEN_ON"

    .line 35
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.SCREEN_OFF"

    .line 36
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.NEW_OUTGOING_CALL"

    .line 37
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.TIME_TICK"

    .line 38
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.TIME_SET"

    .line 39
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    .line 40
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    .line 41
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.BATTERY_LOW"

    .line 42
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.BATTERY_OKAY"

    .line 43
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 44
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 45
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.provider.Telephony.SMS_RECEIVED"

    .line 46
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.provider.Telephony.SMS_DELIVER"

    .line 47
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.net.wifi.STATE_CHANGE"

    .line 48
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    .line 49
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 50
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 51
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.ANY_DATA_STATE"

    .line 52
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    .line 53
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.location.PROVIDERS_CHANGED"

    .line 54
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "android.location.MODE_CHANGED"

    .line 55
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 57
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.gms.settings.SECURITY_SETTINGS"

    .line 59
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.apps.plus.PRIVACY_SETTINGS"

    .line 60
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCOUNT_MANAGER"

    .line 61
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "virtual.android.intent.action.PACKAGE_ADDED"

    .line 63
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "virtual.android.intent.action.PACKAGE_REMOVED"

    .line 64
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    const-string v2, "virtual.android.intent.action.PACKAGE_CHANGED"

    .line 65
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.intent.action.USER_ADDED"

    const-string v2, "virtual.android.intent.action.USER_ADDED"

    .line 66
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.intent.action.USER_REMOVED"

    const-string v2, "virtual.android.intent.action.USER_REMOVED"

    .line 67
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.qihoo.magic"

    .line 69
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.qihoo.magic_mutiple"

    .line 70
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.facebook.katana"

    .line 71
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "android"

    .line 73
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.webview"

    .line 74
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 77
    :try_start_0
    sget-object v0, Lmirror/android/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName:Lmirror/RefMethod;

    sget-object v1, Lmirror/android/webkit/WebViewFactory;->getUpdateService:Lmirror/RefStaticMethod;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lmirror/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBlackAction(Ljava/lang/String;)V
    .locals 1

    .line 110
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isActionInBlackList(Ljava/lang/String;)Z
    .locals 1

    .line 101
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->ACTION_BLACK_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isConflictingInstrumentation(Ljava/lang/String;)Z
    .locals 1

    .line 92
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->INSTRUMENTATION_CONFLICTING:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSpecSystemPackage(Ljava/lang/String;)Z
    .locals 1

    .line 88
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->SPEC_SYSTEM_APP_LIST:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitePermission(Ljava/lang/String;)Z
    .locals 1

    .line 179
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->WHITE_PERMISSION:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static protectAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "_VA_"

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 155
    :cond_1
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECTED_ACTION_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECT_ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static protectIntent(Landroid/content/Intent;)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->protectAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static protectIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2

    if-eqz p0, :cond_3

    .line 115
    sget-object v0, Lmirror/android/content/IntentFilter;->mActions:Lmirror/RefObject;

    invoke-virtual {v0, p0}, Lmirror/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 116
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 117
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->isActionInBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 123
    :cond_1
    sget-object v1, Lcom/lody/virtual/client/env/SpecialComponentList;->SYSTEM_BROADCAST_ACTION:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->protectAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static unprotectAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 166
    :cond_0
    sget-object v1, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECT_ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    sget-object v0, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECT_ACTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_1
    sget-object v1, Lcom/lody/virtual/client/env/SpecialComponentList;->PROTECTED_ACTION_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static unprotectIntent(Landroid/content/Intent;)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/client/env/SpecialComponentList;->unprotectAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
