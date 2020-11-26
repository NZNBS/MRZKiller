.class Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;
.super Ljava/lang/Object;
.source "NotificationFixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/notification/NotificationFixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapReflectionAction"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field methodName:Ljava/lang/String;

.field viewId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p1, p0, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;->viewId:I

    .line 237
    iput-object p2, p0, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;->methodName:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lcom/lody/virtual/server/notification/NotificationFixer$BitmapReflectionAction;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
