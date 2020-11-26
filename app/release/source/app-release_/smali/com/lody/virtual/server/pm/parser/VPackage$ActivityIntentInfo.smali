.class public Lcom/lody/virtual/server/pm/parser/VPackage$ActivityIntentInfo;
.super Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
.source "VPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/parser/VPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityIntentInfo"
.end annotation


# instance fields
.field public activity:Lcom/lody/virtual/server/pm/parser/VPackage$ActivityComponent;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
