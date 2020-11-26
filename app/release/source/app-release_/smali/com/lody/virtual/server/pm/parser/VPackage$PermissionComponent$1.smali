.class final Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;
.super Ljava/util/HashSet;
.source "VPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 457
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "android.permission.READ_CALENDAR"

    .line 459
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 460
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CAMERA"

    .line 463
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CONTACTS"

    .line 466
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 467
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 468
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 471
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 472
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 475
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.CALL_PHONE"

    .line 476
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 477
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 478
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 479
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.USE_SIP"

    .line 480
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 481
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.BODY_SENSORS"

    .line 484
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.SEND_SMS"

    .line 487
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_SMS"

    .line 488
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_SMS"

    .line 489
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 490
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.RECEIVE_MMS"

    .line 491
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 494
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 495
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/parser/VPackage$PermissionComponent$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
