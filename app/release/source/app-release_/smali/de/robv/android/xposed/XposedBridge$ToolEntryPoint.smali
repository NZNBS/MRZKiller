.class public final Lde/robv/android/xposed/XposedBridge$ToolEntryPoint;
.super Ljava/lang/Object;
.source "XposedBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ToolEntryPoint"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static main([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lde/robv/android/xposed/XposedBridge;->isZygote:Z

    .line 115
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->main([Ljava/lang/String;)V

    return-void
.end method
