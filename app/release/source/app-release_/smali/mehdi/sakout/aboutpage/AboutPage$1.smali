.class Lmehdi/sakout/aboutpage/AboutPage$1;
.super Ljava/lang/Object;
.source "AboutPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmehdi/sakout/aboutpage/AboutPage;->createItem(Lmehdi/sakout/aboutpage/Element;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmehdi/sakout/aboutpage/AboutPage;

.field final synthetic val$element:Lmehdi/sakout/aboutpage/Element;


# direct methods
.method constructor <init>(Lmehdi/sakout/aboutpage/AboutPage;Lmehdi/sakout/aboutpage/Element;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage$1;->this$0:Lmehdi/sakout/aboutpage/AboutPage;

    iput-object p2, p0, Lmehdi/sakout/aboutpage/AboutPage$1;->val$element:Lmehdi/sakout/aboutpage/Element;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 526
    :try_start_0
    iget-object p1, p0, Lmehdi/sakout/aboutpage/AboutPage$1;->this$0:Lmehdi/sakout/aboutpage/AboutPage;

    invoke-static {p1}, Lmehdi/sakout/aboutpage/AboutPage;->access$000(Lmehdi/sakout/aboutpage/AboutPage;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmehdi/sakout/aboutpage/AboutPage$1;->val$element:Lmehdi/sakout/aboutpage/Element;

    invoke-virtual {v0}, Lmehdi/sakout/aboutpage/Element;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
