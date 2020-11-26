.class Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;
.super Ljava/lang/Object;
.source "VContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncAdapterInfo"
.end annotation


# instance fields
.field adapterType:Landroid/content/SyncAdapterType;

.field serviceInfo:Landroid/content/pm/ServiceInfo;

.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VContentService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VContentService;Landroid/content/SyncAdapterType;Landroid/content/pm/ServiceInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;->this$0:Lcom/lody/virtual/server/accounts/VContentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;->adapterType:Landroid/content/SyncAdapterType;

    .line 48
    iput-object p3, p0, Lcom/lody/virtual/server/accounts/VContentService$SyncAdapterInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-void
.end method
