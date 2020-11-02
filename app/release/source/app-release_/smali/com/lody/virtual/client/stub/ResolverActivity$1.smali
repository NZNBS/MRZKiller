.class Lcom/lody/virtual/client/stub/ResolverActivity$1;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/stub/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/stub/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/stub/ResolverActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$1;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/lody/virtual/client/stub/ResolverActivity$1;->this$0:Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-virtual {p1}, Lcom/lody/virtual/client/stub/ResolverActivity;->finish()V

    return-void
.end method
