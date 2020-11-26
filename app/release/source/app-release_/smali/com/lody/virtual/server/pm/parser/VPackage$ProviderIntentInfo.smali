.class public Lcom/lody/virtual/server/pm/parser/VPackage$ProviderIntentInfo;
.super Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;
.source "VPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/parser/VPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderIntentInfo"
.end annotation


# instance fields
.field public provider:Lcom/lody/virtual/server/pm/parser/VPackage$ProviderComponent;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;-><init>(Landroid/content/pm/PackageParser$IntentInfo;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/parser/VPackage$IntentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
