.class public Lcom/lody/virtual/client/env/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "virtual.android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "virtual.android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "virtual.android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "virtual.android.intent.action.USER_ADDED"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "virtual.android.intent.action.USER_CHANGED"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "virtual.android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "Virtual.android.intent.action.USER_STARTED"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static FAKE_SIGNATURE_FLAG:Ljava/lang/String; = ".fake_signature"

.field public static final FEATURE_FAKE_SIGNATURE:Ljava/lang/String; = "fake-signature"

.field public static META_KEY_IDENTITY:Ljava/lang/String; = "X-Identity"

.field public static META_VALUE_STUB:Ljava/lang/String; = "Stub-User"

.field public static NO_NOTIFICATION_FLAG:Ljava/lang/String; = ".no_notification"

.field public static final PASS_KEY_INTENT:Ljava/lang/String; = "KEY_INTENT"

.field public static final PASS_KEY_USER:Ljava/lang/String; = "KEY_USER"

.field public static final PASS_PKG_NAME_ARGUMENT:Ljava/lang/String; = "MODEL_ARGUMENT"

.field public static final PRIVILEGE_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static SERVER_PROCESS_NAME:Ljava/lang/String;

.field public static SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

.field public static final WECHAT_PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Y29tLnRlbmNlbnQubW0="

    .line 40
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->WECHAT_PACKAGE:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    .line 43
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/EncodeUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->PRIVILEGE_APP:Ljava/util/List;

    const-string v0, ":x"

    .line 48
    sput-object v0, Lcom/lody/virtual/client/env/Constants;->SERVER_PROCESS_NAME:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/lody/virtual/client/stub/ShortcutHandleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/env/Constants;->SHORTCUT_PROXY_ACTIVITY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
