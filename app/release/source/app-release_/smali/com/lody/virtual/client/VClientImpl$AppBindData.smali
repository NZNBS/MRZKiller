.class final Lcom/lody/virtual/client/VClientImpl$AppBindData;
.super Ljava/lang/Object;
.source "VClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/VClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppBindData"
.end annotation


# instance fields
.field appInfo:Landroid/content/pm/ApplicationInfo;

.field info:Ljava/lang/Object;

.field processName:Ljava/lang/String;

.field providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/client/VClientImpl;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/VClientImpl;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/lody/virtual/client/VClientImpl$AppBindData;->this$0:Lcom/lody/virtual/client/VClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/VClientImpl;Lcom/lody/virtual/client/VClientImpl$1;)V
    .locals 0

    .line 782
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/VClientImpl$AppBindData;-><init>(Lcom/lody/virtual/client/VClientImpl;)V

    return-void
.end method
