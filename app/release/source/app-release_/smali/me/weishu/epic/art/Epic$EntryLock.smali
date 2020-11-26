.class Lme/weishu/epic/art/Epic$EntryLock;
.super Ljava/lang/Object;
.source "Epic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/weishu/epic/art/Epic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryLock"
.end annotation


# static fields
.field static sLockPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lme/weishu/epic/art/Epic$EntryLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/weishu/epic/art/Epic$EntryLock;->sLockPool:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized obtain(J)Lme/weishu/epic/art/Epic$EntryLock;
    .locals 3

    const-class v0, Lme/weishu/epic/art/Epic$EntryLock;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lme/weishu/epic/art/Epic$EntryLock;->sLockPool:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lme/weishu/epic/art/Epic$EntryLock;->sLockPool:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lme/weishu/epic/art/Epic$EntryLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 221
    :cond_0
    :try_start_1
    new-instance v1, Lme/weishu/epic/art/Epic$EntryLock;

    invoke-direct {v1}, Lme/weishu/epic/art/Epic$EntryLock;-><init>()V

    .line 222
    sget-object v2, Lme/weishu/epic/art/Epic$EntryLock;->sLockPool:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
