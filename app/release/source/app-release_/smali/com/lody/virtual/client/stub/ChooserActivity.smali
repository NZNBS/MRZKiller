.class public Lcom/lody/virtual/client/stub/ChooserActivity;
.super Lcom/lody/virtual/client/stub/ResolverActivity;
.source "ChooserActivity.java"


# static fields
.field public static final ACTION:Ljava/lang/String;

.field public static final EXTRA_DATA:Ljava/lang/String; = "android.intent.extra.virtual.data"

.field public static final EXTRA_REQUEST_CODE:Ljava/lang/String; = "android.intent.extra.virtual.request_code"

.field public static final EXTRA_WHO:Ljava/lang/String; = "android.intent.extra.virtual.who"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, ""

    .line 22
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/stub/ChooserActivity;->ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/lody/virtual/client/stub/ResolverActivity;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 27
    :try_start_0
    sget-object v1, Lcom/lody/virtual/client/stub/ChooserActivity;->ACTION:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.CHOOSER"

    .line 28
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 38
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/lody/virtual/os/VUserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v1, "android.intent.extra.virtual.data"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, p0, Lcom/lody/virtual/client/stub/ChooserActivity;->mOptions:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.virtual.who"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lody/virtual/client/stub/ChooserActivity;->mResultWho:Ljava/lang/String;

    const-string v1, "android.intent.extra.virtual.request_code"

    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lody/virtual/client/stub/ChooserActivity;->mRequestCode:I

    const-string v1, "android.intent.extra.INTENT"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 44
    instance-of v3, v1, Landroid/content/Intent;

    const-string v4, "ChooseActivity"

    if-nez v3, :cond_0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Target is not an intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ChooserActivity;->finish()V

    return-void

    .line 49
    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 52
    sget v1, Lcom/lody/virtual/R$string;->choose:I

    invoke-virtual {p0, v1}, Lcom/lody/virtual/client/stub/ChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 57
    array-length v1, v0

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v3, 0x0

    .line 58
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 59
    aget-object v7, v0, v3

    instance-of v7, v7, Landroid/content/Intent;

    if-nez v7, :cond_2

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial intent #"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not an Intent: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v0}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/lody/virtual/client/stub/ChooserActivity;->finish()V

    return-void

    .line 65
    :cond_2
    aget-object v7, v0, v3

    check-cast v7, Landroid/content/Intent;

    aput-object v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 68
    invoke-super/range {v3 .. v10}, Lcom/lody/virtual/client/stub/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V

    return-void
.end method
