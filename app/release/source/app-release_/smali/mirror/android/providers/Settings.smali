.class public Lmirror/android/providers/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmirror/android/providers/Settings$System;,
        Lmirror/android/providers/Settings$Secure;,
        Lmirror/android/providers/Settings$ContentProviderHolder;,
        Lmirror/android/providers/Settings$NameValueCacheOreo;,
        Lmirror/android/providers/Settings$NameValueCache;,
        Lmirror/android/providers/Settings$Global;
    }
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lmirror/android/providers/Settings;

    const-class v1, Landroid/provider/Settings;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/providers/Settings;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
