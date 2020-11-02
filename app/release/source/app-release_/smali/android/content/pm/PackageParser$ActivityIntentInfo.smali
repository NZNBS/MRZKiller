.class public Landroid/content/pm/PackageParser$ActivityIntentInfo;
.super Landroid/content/pm/PackageParser$IntentInfo;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityIntentInfo"
.end annotation


# instance fields
.field public activity:Landroid/content/pm/PackageParser$Activity;

.field final synthetic this$0:Landroid/content/pm/PackageParser;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/content/pm/PackageParser$ActivityIntentInfo;->this$0:Landroid/content/pm/PackageParser;

    invoke-direct {p0}, Landroid/content/pm/PackageParser$IntentInfo;-><init>()V

    return-void
.end method
