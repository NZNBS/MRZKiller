.class public Lcom/lody/virtual/client/fixer/ComponentFixer;
.super Ljava/lang/Object;
.source "ComponentFixer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fixComponentInfo(Lcom/lody/virtual/server/pm/PackageSetting;Landroid/content/pm/ComponentInfo;I)V
    .locals 0

    if-eqz p1, :cond_1

    .line 26
    iget-object p0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    iget-object p0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object p0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/lody/virtual/client/fixer/ComponentFixer;->fixComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 30
    iget-object p0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 31
    iget-object p0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object p0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    :cond_1
    return-void
.end method
