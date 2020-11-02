.class Lcom/mrz/activity/o;
.super Ljava/lang/Object;
.source "n"

# interfaces
.implements Lxcrash/ICrashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrz/activity/MRZApp;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ALLATORIxDEMO:Lcom/mrz/activity/MRZApp;


# direct methods
.method constructor <init>(Lcom/mrz/activity/MRZApp;)V
    .locals 2

    .line 70
    iput-object p1, p0, Lcom/mrz/activity/o;->ALLATORIxDEMO:Lcom/mrz/activity/MRZApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    const-wide v0, 0x176bbe33e27L

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "Q\u0012D\u0003F\u000fPk"

    invoke-static {v0}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x%sjd+`\".j"

    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u001fWBU[\u0010"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "f4/y/f-q$w3.j"

    invoke-static {v2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRZAPP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 476
    iget-object v0, p0, Lcom/mrz/activity/o;->ALLATORIxDEMO:Lcom/mrz/activity/MRZApp;

    invoke-static {v0, p1, p2}, Lcom/mrz/activity/MRZApp;->ALLATORIxDEMO(Lcom/mrz/activity/MRZApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mrz/activity/o;->ALLATORIxDEMO:Lcom/mrz/activity/MRZApp;

    invoke-static {v0, p1, p2}, Lcom/mrz/activity/MRZApp;->C(Lcom/mrz/activity/MRZApp;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p2, "q2d+z.q.K!q3K{"

    .line 317
    invoke-static {p2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RAGXY]R]hZXWC\\YM"

    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "q2d+z.q.K!q3Kx"

    invoke-static {p2}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\OIVWS\\SfTVYMRWCfEV@f\u00063RAGXY]R]hZXWC\\YMhKXNh\u000b"

    invoke-static {v0}, Lcom/mrz/l;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lxcrash/TombstoneManager;->appendSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    iget-object p2, p0, Lcom/mrz/activity/o;->ALLATORIxDEMO:Lcom/mrz/activity/MRZApp;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/mrz/activity/MRZApp;->ALLATORIxDEMO(Lcom/mrz/activity/MRZApp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
