.class public final Lme/weishu/epic/art/EpicNative;
.super Ljava/lang/Object;
.source "EpicNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EpicNative"

.field private static volatile useUnsafe:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "EpicNative"

    :try_start_0
    const-string v1, "epic"

    .line 39
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/taobao/android/dexposed/DeviceCheck;->isYunOS()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lme/weishu/epic/art/EpicNative;->isGetObjectAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Lme/weishu/epic/art/EpicNative;->useUnsafe:Z

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use unsafe ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lme/weishu/epic/art/EpicNative;->useUnsafe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "init EpicNative error"

    .line 43
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native activateNative(JJJJ[B)Z
.end method

.method public static native cacheflush(JJ)Z
.end method

.method public static compileMethod(Ljava/lang/reflect/Member;)Z
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "nativePeer"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    .line 122
    invoke-static {p0, v0, v1}, Lme/weishu/epic/art/EpicNative;->compileMethod(Ljava/lang/reflect/Member;J)Z

    move-result p0

    return p0
.end method

.method public static native compileMethod(Ljava/lang/reflect/Member;J)Z
.end method

.method public static copy(JJI)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes form "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EpicNative"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p0, p1, p2, p3, p4}, Lme/weishu/epic/art/EpicNative;->memcpy(JJI)V

    return-void
.end method

.method public static native disableMovingGc(I)V
.end method

.method public static get(JI)[B
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EpicNative"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/EpicNative;->memget(JI)[B

    move-result-object p2

    .line 152
    invoke-static {p2, p0, p1}, Lcom/taobao/android/dexposed/utility/Debug;->hexdump([BJ)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static native getMethodAddress(Ljava/lang/reflect/Member;)J
.end method

.method public static getObject(J)Ljava/lang/Object;
    .locals 2

    .line 126
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "nativePeer"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getLongField(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    .line 127
    invoke-static {v0, v1, p0, p1}, Lme/weishu/epic/art/EpicNative;->getObject(JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getObject(JJ)Ljava/lang/Object;
    .locals 1

    .line 70
    sget-boolean v0, Lme/weishu/epic/art/EpicNative;->useUnsafe:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p2, p3}, Lcom/taobao/android/dexposed/utility/Unsafe;->getObject(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lme/weishu/epic/art/EpicNative;->getObjectNative(JJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static native getObjectNative(JJ)Ljava/lang/Object;
.end method

.method private static native isGetObjectAvailable()Z
.end method

.method public static native malloc(I)J
.end method

.method public static map(I)J
    .locals 4

    .line 131
    invoke-static {p0}, Lme/weishu/epic/art/EpicNative;->mmap(I)J

    move-result-wide v0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mapped memory of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "EpicNative"

    invoke-static {v2, p0}, Lcom/taobao/android/dexposed/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static native memcpy(JJI)V
.end method

.method public static native memget(JI)[B
.end method

.method public static native memput([BJ)V
.end method

.method public static native mmap(I)J
.end method

.method public static native munmap(JI)Z
.end method

.method public static native munprotect(JJ)Z
.end method

.method public static put([BJ)V
    .locals 0

    .line 146
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/EpicNative;->memput([BJ)V

    return-void
.end method

.method public static native resumeAll(J)V
.end method

.method public static native startJit(J)V
.end method

.method public static native stopJit()J
.end method

.method public static native suspendAll()J
.end method

.method public static unmap(JI)Z
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing mapped memory of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EpicNative"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p0, p1, p2}, Lme/weishu/epic/art/EpicNative;->munmap(JI)Z

    move-result p0

    return p0
.end method

.method public static unprotect(JJ)Z
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabling mprotect from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/taobao/android/dexposed/utility/Debug;->addrHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EpicNative"

    invoke-static {v1, v0}, Lcom/taobao/android/dexposed/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p1, p2, p3}, Lme/weishu/epic/art/EpicNative;->munprotect(JJ)Z

    move-result p0

    return p0
.end method
