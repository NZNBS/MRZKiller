.class Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;
.super Ljava/lang/Object;
.source "GPSListenerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

.field final synthetic val$listeners:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;Ljava/util/Map;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;->this$0:Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    iput-object p2, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;->val$listeners:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;->this$0:Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;

    iget-object v1, p0, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread$1;->val$listeners:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;->access$000(Lcom/lody/virtual/client/hook/proxies/location/GPSListenerThread;Ljava/util/Map;)V

    return-void
.end method
