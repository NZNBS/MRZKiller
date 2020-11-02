.class Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/stub/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/stub/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/stub/ResolverActivity;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;)Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;
    .locals 2

    const/4 v0, 0x0

    .line 737
    aget-object p1, p1, v0

    .line 738
    iget-object v0, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    iget-object v1, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Lcom/lody/virtual/client/stub/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 734
    check-cast p1, [Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;->doInBackground([Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;)Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;)V
    .locals 0

    .line 746
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-static {p1}, Lcom/lody/virtual/client/stub/ResolverActivity;->access$400(Lcom/lody/virtual/client/stub/ResolverActivity;)Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lody/virtual/client/stub/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 734
    check-cast p1, Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/stub/ResolverActivity$LoadIconTask;->onPostExecute(Lcom/lody/virtual/client/stub/ResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
