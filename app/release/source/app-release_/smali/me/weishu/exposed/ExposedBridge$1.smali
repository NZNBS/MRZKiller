.class final Lme/weishu/exposed/ExposedBridge$1;
.super Ljava/lang/Object;
.source "ExposedBridge.java"

# interfaces
.implements Lme/weishu/exposed/ModuleLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/weishu/exposed/ExposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingModule(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public onModuleLoaded(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 93
    invoke-static {p1, p2, p3}, Lme/weishu/exposed/ExposedBridge;->access$000(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    return-void
.end method
