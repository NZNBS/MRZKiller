.class public Lcom/mrz/stuff/s;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "g"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mrz/stuff/i;",
        ">;"
    }
.end annotation


# instance fields
.field ALLATORIxDEMO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mrz/stuff/e;",
            ">;"
        }
    .end annotation
.end field

.field F:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/mrz/stuff/e;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    .line 416
    iput-object p2, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    .line 266
    new-instance p1, Ljava/util/Date;

    const-wide v0, 0x176bbe33e27L

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "3O&^$R26"

    invoke-static {p2}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic ALLATORIxDEMO(ILandroid/view/View;)V
    .locals 5

    .line 100
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Z$M=~\u001a{\u0013e"

    invoke-static {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrz/stuff/e;

    invoke-virtual {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 207
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v1, 0x1

    aget-object v1, v0, v1

    invoke-direct {v3, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move v1, v4

    goto :goto_0

    .line 58
    :cond_0
    iget-object p2, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mrz/stuff/e;

    invoke-virtual {p2}, Lcom/mrz/stuff/e;->J()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mrz/stuff/s;->C(Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eS\u000bY\u000fGe"

    invoke-static {v1}, Lcom/mrz/stuff/a;->ALLATORIxDEMO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mrz/stuff/e;

    invoke-virtual {p1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 361
    iget-object p1, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    invoke-static {p1}, Lcom/mrz/activity/MRZActivity;->ALLATORIxDEMO(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$Q5M2micSnqXM78qvTRfMtqp9Mq4(Lcom/mrz/stuff/s;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mrz/stuff/s;->ALLATORIxDEMO(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public ALLATORIxDEMO(Landroid/view/ViewGroup;I)Lcom/mrz/stuff/i;
    .locals 2

    .line 348
    iget-object p2, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b006a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    new-instance p2, Lcom/mrz/stuff/i;

    invoke-direct {p2, p0, p1}, Lcom/mrz/stuff/i;-><init>(Lcom/mrz/stuff/s;Landroid/view/View;)V

    return-object p2
.end method

.method public ALLATORIxDEMO(Lcom/mrz/stuff/i;I)V
    .locals 2

    .line 97
    iget-object v0, p1, Lcom/mrz/stuff/i;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrz/stuff/e;

    invoke-virtual {v1}, Lcom/mrz/stuff/e;->ALLATORIxDEMO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p1, Lcom/mrz/stuff/i;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mrz/stuff/e;

    invoke-virtual {v1}, Lcom/mrz/stuff/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p1, Lcom/mrz/stuff/i;->b:Landroid/widget/Button;

    new-instance v1, Lcom/mrz/stuff/-$$Lambda$s$Q5M2micSnqXM78qvTRfMtqp9Mq4;

    invoke-direct {v1, p0, p2}, Lcom/mrz/stuff/-$$Lambda$s$Q5M2micSnqXM78qvTRfMtqp9Mq4;-><init>(Lcom/mrz/stuff/s;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v0, p1, Lcom/mrz/stuff/i;->j:Landroid/widget/Button;

    new-instance v1, Lcom/mrz/stuff/n;

    invoke-direct {v1, p0, p2}, Lcom/mrz/stuff/n;-><init>(Lcom/mrz/stuff/s;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mrz/stuff/e;

    invoke-virtual {p2}, Lcom/mrz/stuff/e;->C()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 345
    array-length v1, p2

    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 98
    iget-object p1, p1, Lcom/mrz/stuff/i;->ALLATORIxDEMO:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public ALLATORIxDEMO(Ljava/lang/String;)V
    .locals 3

    .line 228
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/VActivityManager;->get()Lcom/lody/virtual/client/ipc/VActivityManager;

    move-result-object v0

    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/lody/virtual/client/core/VirtualCore;->getLaunchIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/lody/virtual/client/ipc/VActivityManager;->startActivity(Landroid/content/Intent;I)I

    .line 77
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    const-class v1, Lcom/mrz/activity/Loader;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    iget-object v0, p0, Lcom/mrz/stuff/s;->F:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lody/virtual/client/core/VirtualCore;->uninstallPackage(Ljava/lang/String;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/mrz/stuff/s;->ALLATORIxDEMO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 143
    check-cast p1, Lcom/mrz/stuff/i;

    invoke-virtual {p0, p1, p2}, Lcom/mrz/stuff/s;->ALLATORIxDEMO(Lcom/mrz/stuff/i;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/mrz/stuff/s;->ALLATORIxDEMO(Landroid/view/ViewGroup;I)Lcom/mrz/stuff/i;

    move-result-object p1

    return-object p1
.end method
