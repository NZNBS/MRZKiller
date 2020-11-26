.class final Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;
.super Ljava/lang/Object;
.source "VDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/device/VDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsedDeviceInfoPool"
.end annotation


# instance fields
.field androidIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bluetoothMacs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field deviceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field iccIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/device/VDeviceManagerService;

.field wifiMacs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/device/VDeviceManagerService;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->this$0:Lcom/lody/virtual/server/device/VDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->deviceIds:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->androidIds:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->wifiMacs:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->bluetoothMacs:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;->iccIds:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/device/VDeviceManagerService;Lcom/lody/virtual/server/device/VDeviceManagerService$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/device/VDeviceManagerService$UsedDeviceInfoPool;-><init>(Lcom/lody/virtual/server/device/VDeviceManagerService;)V

    return-void
.end method
