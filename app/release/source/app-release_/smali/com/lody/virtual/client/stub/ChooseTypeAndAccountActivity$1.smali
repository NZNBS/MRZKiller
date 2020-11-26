.class Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity$1;->this$0:Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 516
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity$1;->this$0:Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;

    invoke-static {p1, p3}, Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;->access$002(Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;I)I

    .line 517
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity$1;->this$0:Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;

    invoke-static {p1}, Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;->access$100(Lcom/lody/virtual/client/stub/ChooseTypeAndAccountActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
