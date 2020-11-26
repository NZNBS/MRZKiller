.class final Lme/weishu/exposed/ExposedBridge$7;
.super Ljava/lang/Object;
.source "ExposedBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weishu/exposed/ExposedBridge;->initForWeChatTranslate(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$translateService:[Landroid/os/IBinder;


# direct methods
.method constructor <init>([Landroid/os/IBinder;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lme/weishu/exposed/ExposedBridge$7;->val$translateService:[Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 526
    iget-object p1, p0, Lme/weishu/exposed/ExposedBridge$7;->val$translateService:[Landroid/os/IBinder;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
