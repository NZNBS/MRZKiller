.class final Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;
.super Ljava/lang/Object;
.source "VAccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/accounts/VAccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AuthenticatorInfo"
.end annotation


# instance fields
.field final desc:Landroid/accounts/AuthenticatorDescription;

.field final serviceInfo:Landroid/content/pm/ServiceInfo;

.field final synthetic this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;


# direct methods
.method constructor <init>(Lcom/lody/virtual/server/accounts/VAccountManagerService;Landroid/accounts/AuthenticatorDescription;Landroid/content/pm/ServiceInfo;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->this$0:Lcom/lody/virtual/server/accounts/VAccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput-object p2, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    .line 1078
    iput-object p3, p0, Lcom/lody/virtual/server/accounts/VAccountManagerService$AuthenticatorInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-void
.end method
