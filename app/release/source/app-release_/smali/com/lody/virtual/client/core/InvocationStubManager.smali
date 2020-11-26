.class public final Lcom/lody/virtual/client/core/InvocationStubManager;
.super Ljava/lang/Object;
.source "InvocationStubManager.java"


# static fields
.field private static sInit:Z

.field private static sInstance:Lcom/lody/virtual/client/core/InvocationStubManager;


# instance fields
.field private mInjectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/lody/virtual/client/interfaces/IInjector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/lody/virtual/client/core/InvocationStubManager;

    invoke-direct {v0}, Lcom/lody/virtual/client/core/InvocationStubManager;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/core/InvocationStubManager;->sInstance:Lcom/lody/virtual/client/core/InvocationStubManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lody/virtual/client/core/InvocationStubManager;->mInjectors:Ljava/util/Map;

    return-void
.end method

.method private addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/lody/virtual/client/core/InvocationStubManager;->mInjectors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/lody/virtual/client/core/InvocationStubManager;
    .locals 1

    .line 86
    sget-object v0, Lcom/lody/virtual/client/core/InvocationStubManager;->sInstance:Lcom/lody/virtual/client/core/InvocationStubManager;

    return-object v0
.end method

.method private injectInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isServerProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 120
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/pm/PackageManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/pm/PackageManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    return-void

    .line 123
    :cond_1
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/client/core/VirtualCore;->isVAppProcess()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 124
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/libcore/LibCoreStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 125
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 126
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/pm/PackageManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/pm/PackageManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 128
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/TransactionHandlerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/am/TransactionHandlerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 130
    :cond_2
    invoke-static {}, Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;->getDefault()Lcom/lody/virtual/client/hook/proxies/am/HCallbackStub;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 131
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/isms/ISmsStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 132
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/isub/ISubStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/isub/ISubStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 133
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/dropbox/DropBoxManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/dropbox/DropBoxManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 134
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/notification/NotificationManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 135
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/location/LocationManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 136
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/window/WindowManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 137
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/clipboard/ClipBoardStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/clipboard/ClipBoardStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 138
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/mount/MountServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/mount/MountServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 139
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/backup/BackupManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/backup/BackupManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 140
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 141
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/telephony/TelephonyRegistryStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 142
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/phonesubinfo/PhoneSubInfoStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/phonesubinfo/PhoneSubInfoStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 143
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/power/PowerManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 144
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appwidget/AppWidgetManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/appwidget/AppWidgetManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 145
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/account/AccountManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 146
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/audio/AudioManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/audio/AudioManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 147
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/search/SearchManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 148
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/content/ContentServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/content/ContentServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 149
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/connectivity/ConnectivityStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/connectivity/ConnectivityStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 152
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/vibrator/VibratorStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 153
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/wifi/WifiManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 154
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/bluetooth/BluetoothStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 155
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/context_hub/ContextHubServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/context_hub/ContextHubServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 157
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 158
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/user/UserManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/user/UserManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 161
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    .line 162
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/display/DisplayStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/display/DisplayStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 164
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 165
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/persistent_data_block/PersistentDataBlockServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 166
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/input/InputMethodManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 167
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/imms/MmsStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/imms/MmsStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 168
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/media/session/SessionManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/media/session/SessionManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 169
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/job/JobServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 170
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/restriction/RestrictionStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/restriction/RestrictionStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 172
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 173
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/alarm/AlarmManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 174
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/appops/AppOpsManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 175
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/media/router/MediaRouterServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/media/router/MediaRouterServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 177
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_8

    .line 178
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/graphics/GraphicsStatsStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/graphics/GraphicsStatsStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 179
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/usage/UsageStatsManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/usage/UsageStatsManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 180
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/pm/LauncherAppsStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/pm/LauncherAppsStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 182
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 183
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/fingerprint/FingerprintManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/fingerprint/FingerprintManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 184
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/network/NetworkManagementStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/network/NetworkManagementStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 186
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 187
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/wifi_scanner/WifiScannerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/wifi_scanner/WifiScannerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 188
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/shortcut/ShortcutServiceStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 189
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/devicepolicy/DevicePolicyManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 191
    :cond_a
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 192
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/view/AutoFillManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/view/AutoFillManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    .line 194
    :cond_b
    invoke-static {}, Lcom/lody/virtual/helper/compat/BuildCompat;->isQ()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 195
    new-instance v0, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/proxies/am/ActivityTaskManagerStub;-><init>()V

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public checkEnv(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lody/virtual/client/interfaces/IInjector;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 210
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/core/InvocationStubManager;->findInjector(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/IInjector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/lody/virtual/client/interfaces/IInjector;->isEnvBad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-interface {p1}, Lcom/lody/virtual/client/interfaces/IInjector;->inject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public findInjector(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/IInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lody/virtual/client/interfaces/IInjector;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/lody/virtual/client/core/InvocationStubManager;->mInjectors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lody/virtual/client/interfaces/IInjector;

    return-object p1
.end method

.method public getInvocationStub(Ljava/lang/Class;)Lcom/lody/virtual/client/hook/base/MethodInvocationStub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/lody/virtual/client/interfaces/IInjector;",
            "H:",
            "Lcom/lody/virtual/client/hook/base/MethodInvocationStub;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TH;"
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/core/InvocationStubManager;->findInjector(Ljava/lang/Class;)Lcom/lody/virtual/client/interfaces/IInjector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    instance-of v0, p1, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;

    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationProxy;->getInvocationStub()Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/lody/virtual/client/core/InvocationStubManager;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/lody/virtual/client/core/InvocationStubManager;->injectInternal()V

    const/4 v0, 0x1

    .line 110
    sput-boolean v0, Lcom/lody/virtual/client/core/InvocationStubManager;->sInit:Z

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InvocationStubManager Has been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method injectAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/lody/virtual/client/core/InvocationStubManager;->mInjectors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lody/virtual/client/interfaces/IInjector;

    .line 91
    invoke-interface {v1}, Lcom/lody/virtual/client/interfaces/IInjector;->inject()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;->getDefault()Lcom/lody/virtual/client/hook/delegate/AppInstrumentation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/client/core/InvocationStubManager;->addInjector(Lcom/lody/virtual/client/interfaces/IInjector;)V

    return-void
.end method

.method public isInit()Z
    .locals 1

    .line 101
    sget-boolean v0, Lcom/lody/virtual/client/core/InvocationStubManager;->sInit:Z

    return v0
.end method
