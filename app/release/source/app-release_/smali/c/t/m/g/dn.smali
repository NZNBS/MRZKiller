.class public abstract Lc/t/m/g/dn;
.super Ljava/lang/Object;
.source "TL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lc/t/m/g/dm;
    .locals 2

    .line 30
    new-instance v0, Lc/t/m/g/dm;

    const-string v1, "channelId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lc/t/m/g/dm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
