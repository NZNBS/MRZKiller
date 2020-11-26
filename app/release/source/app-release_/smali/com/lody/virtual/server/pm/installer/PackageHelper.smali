.class public Lcom/lody/virtual/server/pm/installer/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field public static final DELETE_FAILED_ABORTED:I = -0x5

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_OWNER_BLOCKED:I = -0x4

.field public static final DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final INSTALL_FAILED_ABORTED:I = -0x73

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field public static final INSTALL_FAILED_EPHEMERAL_INVALID:I = -0x74

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17

.field public static final INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE:I = -0x1a

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final MOVE_FAILED_DEVICE_ADMIN:I = -0x8

.field public static final MOVE_FAILED_DOESNT_EXIST:I = -0x2

.field public static final MOVE_FAILED_FORWARD_LOCKED:I = -0x4

.field public static final MOVE_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final MOVE_FAILED_INTERNAL_ERROR:I = -0x6

.field public static final MOVE_FAILED_INVALID_LOCATION:I = -0x5

.field public static final MOVE_FAILED_OPERATION_PENDING:I = -0x7

.field public static final MOVE_FAILED_SYSTEM_PACKAGE:I = -0x3

.field public static final MOVE_SUCCEEDED:I = -0x64

.field public static final NO_NATIVE_LIBRARIES:I = -0x72


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteStatusToString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "DELETE_SUCCEEDED"

    goto :goto_0

    :cond_0
    const-string p0, "DELETE_FAILED"

    :goto_0
    return-object p0
.end method

.method public static installStatusToPublicStatus(I)I
    .locals 6

    const/16 v0, -0x73

    const/4 v1, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v2, 0x7

    const/4 v3, 0x5

    packed-switch p0, :pswitch_data_0

    const/4 v4, 0x4

    packed-switch p0, :pswitch_data_1

    const/4 v5, 0x6

    packed-switch p0, :pswitch_data_2

    return v0

    :pswitch_0
    return v3

    :pswitch_1
    return v4

    :pswitch_2
    return v5

    :pswitch_3
    return v3

    :pswitch_4
    return v2

    :pswitch_5
    return v3

    :pswitch_6
    return v4

    :pswitch_7
    return v2

    :pswitch_8
    return v3

    :pswitch_9
    return v2

    :pswitch_a
    return v4

    :pswitch_b
    return v2

    :pswitch_c
    return v5

    :pswitch_d
    return v1

    :pswitch_e
    return v4

    :pswitch_f
    return v2

    :pswitch_10
    return v3

    :pswitch_11
    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x71
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x6d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1a
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static installStatusToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x73

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 610
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "INSTALL_FAILED_ALREADY_EXISTS"

    return-object p0

    :pswitch_1
    const-string p0, "INSTALL_FAILED_INVALID_APK"

    return-object p0

    :pswitch_2
    const-string p0, "INSTALL_FAILED_INVALID_URI"

    return-object p0

    :pswitch_3
    const-string p0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    return-object p0

    :pswitch_4
    const-string p0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    return-object p0

    :pswitch_5
    const-string p0, "INSTALL_FAILED_NO_SHARED_USER"

    return-object p0

    :pswitch_6
    const-string p0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    return-object p0

    :pswitch_7
    const-string p0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    return-object p0

    :pswitch_8
    const-string p0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    return-object p0

    :pswitch_9
    const-string p0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    return-object p0

    :pswitch_a
    const-string p0, "INSTALL_FAILED_DEXOPT"

    return-object p0

    :pswitch_b
    const-string p0, "INSTALL_FAILED_OLDER_SDK"

    return-object p0

    :pswitch_c
    const-string p0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    return-object p0

    :pswitch_d
    const-string p0, "INSTALL_FAILED_NEWER_SDK"

    return-object p0

    :pswitch_e
    const-string p0, "INSTALL_FAILED_TEST_ONLY"

    return-object p0

    :pswitch_f
    const-string p0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    return-object p0

    :pswitch_10
    const-string p0, "INSTALL_FAILED_MISSING_FEATURE"

    return-object p0

    :pswitch_11
    const-string p0, "INSTALL_FAILED_CONTAINER_ERROR"

    return-object p0

    :pswitch_12
    const-string p0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    return-object p0

    :pswitch_13
    const-string p0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    return-object p0

    :pswitch_14
    const-string p0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    return-object p0

    :pswitch_15
    const-string p0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    return-object p0

    :pswitch_16
    const-string p0, "INSTALL_FAILED_PACKAGE_CHANGED"

    return-object p0

    :pswitch_17
    const-string p0, "INSTALL_FAILED_UID_CHANGED"

    return-object p0

    :pswitch_18
    const-string p0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    return-object p0

    :pswitch_19
    const-string p0, "INSTALL_PARSE_FAILED_NOT_APK"

    return-object p0

    :pswitch_1a
    const-string p0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    return-object p0

    :pswitch_1b
    const-string p0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    return-object p0

    :pswitch_1c
    const-string p0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    return-object p0

    :pswitch_1d
    const-string p0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    return-object p0

    :pswitch_1e
    const-string p0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    return-object p0

    :pswitch_1f
    const-string p0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    return-object p0

    :pswitch_20
    const-string p0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    return-object p0

    :pswitch_21
    const-string p0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    return-object p0

    :pswitch_22
    const-string p0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    return-object p0

    :pswitch_23
    const-string p0, "INSTALL_FAILED_INTERNAL_ERROR"

    return-object p0

    :pswitch_24
    const-string p0, "INSTALL_FAILED_USER_RESTRICTED"

    return-object p0

    :pswitch_25
    const-string p0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    return-object p0

    :pswitch_26
    const-string p0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    return-object p0

    :cond_0
    const-string p0, "INSTALL_SUCCEEDED"

    return-object p0

    :cond_1
    const-string p0, "INSTALL_FAILED_ABORTED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x71
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static installStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 558
    invoke-static {p0}, Lcom/lody/virtual/server/pm/installer/PackageHelper;->installStatusToString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
