.class public Lcom/lody/virtual/client/stub/VASettings;
.super Ljava/lang/Object;
.source "VASettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/client/stub/VASettings$Wifi;
    }
.end annotation


# static fields
.field public static final ACTION_BADGER_CHANGE:Ljava/lang/String; = "com.lody.virtual.BADGER_CHANGE"

.field public static ENABLE_INNER_SHORTCUT:Z = false

.field public static ENABLE_IO_REDIRECT:Z = false

.field public static PRIVILEGE_APPS:[Ljava/lang/String; = null

.field public static RESOLVER_ACTIVITY:Ljava/lang/String; = null

.field public static STUB_ACTIVITY:Ljava/lang/String; = null

.field public static STUB_COUNT:I = 0x0

.field public static STUB_CP:Ljava/lang/String; = null

.field public static STUB_CP_AUTHORITY:Ljava/lang/String; = null

.field public static final STUB_DEF_AUTHORITY:Ljava/lang/String; = "virtual_stub_"

.field public static STUB_DIALOG:Ljava/lang/String;

.field public static STUB_EXCLUDE_FROM_RECENT_ACTIVITY:Ljava/lang/String;

.field public static STUB_JOB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/lody/virtual/client/stub/StubActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_ACTIVITY:Ljava/lang/String;

    .line 13
    const-class v0, Lcom/lody/virtual/client/stub/StubDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_DIALOG:Ljava/lang/String;

    .line 14
    const-class v0, Lcom/lody/virtual/client/stub/StubCP;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/lody/virtual/client/stub/StubJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_JOB:Ljava/lang/String;

    .line 16
    const-class v0, Lcom/lody/virtual/client/stub/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->RESOLVER_ACTIVITY:Ljava/lang/String;

    .line 17
    const-class v0, Lcom/lody/virtual/client/stub/StubExcludeFromRecentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_EXCLUDE_FROM_RECENT_ACTIVITY:Ljava/lang/String;

    const-string v0, "virtual_stub_"

    .line 18
    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP_AUTHORITY:Ljava/lang/String;

    const/16 v0, 0x32

    .line 19
    sput v0, Lcom/lody/virtual/client/stub/VASettings;->STUB_COUNT:I

    const-string v0, "com.google.android.gms"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/VASettings;->PRIVILEGE_APPS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 28
    sput-boolean v0, Lcom/lody/virtual/client/stub/VASettings;->ENABLE_INNER_SHORTCUT:Z

    .line 36
    sput-boolean v0, Lcom/lody/virtual/client/stub/VASettings;->ENABLE_IO_REDIRECT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStubActivityName(I)Ljava/lang/String;
    .locals 4

    .line 43
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_ACTIVITY:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s$C%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStubAuthority(I)Ljava/lang/String;
    .locals 4

    .line 55
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP_AUTHORITY:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStubCP(I)Ljava/lang/String;
    .locals 4

    .line 51
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_CP:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s$C%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStubDialogName(I)Ljava/lang/String;
    .locals 4

    .line 47
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_DIALOG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s$C%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStubExcludeFromRecentActivityName(I)Ljava/lang/String;
    .locals 4

    .line 39
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/lody/virtual/client/stub/VASettings;->STUB_EXCLUDE_FROM_RECENT_ACTIVITY:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s$C%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
