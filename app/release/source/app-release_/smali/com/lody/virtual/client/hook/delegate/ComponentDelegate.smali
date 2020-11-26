.class public interface abstract Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;
.super Ljava/lang/Object;
.source "ComponentDelegate.java"


# static fields
.field public static final EMPTY:Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate$1;

    invoke-direct {v0}, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;->EMPTY:Lcom/lody/virtual/client/hook/delegate/ComponentDelegate;

    return-void
.end method


# virtual methods
.method public abstract afterActivityCreate(Landroid/app/Activity;)V
.end method

.method public abstract afterActivityDestroy(Landroid/app/Activity;)V
.end method

.method public abstract afterActivityPause(Landroid/app/Activity;)V
.end method

.method public abstract afterActivityResume(Landroid/app/Activity;)V
.end method

.method public abstract afterApplicationCreate(Landroid/app/Application;)V
.end method

.method public abstract beforeActivityCreate(Landroid/app/Activity;)V
.end method

.method public abstract beforeActivityDestroy(Landroid/app/Activity;)V
.end method

.method public abstract beforeActivityPause(Landroid/app/Activity;)V
.end method

.method public abstract beforeActivityResume(Landroid/app/Activity;)V
.end method

.method public abstract beforeApplicationCreate(Landroid/app/Application;)V
.end method

.method public abstract onSendBroadcast(Landroid/content/Intent;)V
.end method
