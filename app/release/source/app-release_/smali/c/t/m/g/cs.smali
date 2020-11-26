.class public final Lc/t/m/g/cs;
.super Landroid/bluetooth/le/ScanCallback;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/cs$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/bluetooth/BluetoothManager;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Landroid/bluetooth/le/BluetoothLeScanner;

.field private e:Landroid/bluetooth/le/ScanSettings;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/t/m/g/df;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:[Ljava/lang/String;

.field private j:Z

.field private k:Lc/t/m/g/cs$a;

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 52
    iput-object p1, p0, Lc/t/m/g/cs;->a:Landroid/content/Context;

    .line 53
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    const-string p1, "AB8190D5-D11E-4941-ACC4-42F30510B408,FDA50693-A4E2-4FB1-AFCF-C6EB07647825"

    const-string v0, ","

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/t/m/g/cs;->i:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lc/t/m/g/cs;)I
    .locals 7

    .line 32
    iget-object v0, p0, Lc/t/m/g/cs;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cs;->e:Landroid/bluetooth/le/ScanSettings;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cs;->f:Ljava/util/List;

    iget-object v0, p0, Lc/t/m/g/cs;->i:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    iget-object v6, p0, Lc/t/m/g/cs;->f:Ljava/util/List;

    invoke-static {v5}, Lc/t/m/g/cs;->a(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/t/m/g/cs;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/cs;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lc/t/m/g/cs;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lc/t/m/g/cs;->f:Ljava/util/List;

    iget-object v4, p0, Lc/t/m/g/cs;->e:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0, v2, v4, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iput-boolean v1, p0, Lc/t/m/g/cs;->j:Z

    return v3

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method private static a(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter;
    .locals 10

    const/16 v0, 0x17

    new-array v1, v0, [B

    .line 168
    fill-array-data v1, :array_0

    new-array v0, v0, [B

    .line 171
    fill-array-data v0, :array_1

    const-string v2, "-"

    const-string v3, ""

    .line 174
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    if-ge v5, v2, :cond_0

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v8, v6

    int-to-byte v6, v8

    aput-byte v6, v3, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    invoke-static {v3, v4, v1, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    new-instance p0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {p0, v2, v1, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic a(Lc/t/m/g/cs;Landroid/bluetooth/le/ScanResult;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v2

    const-string v3, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_5

    array-length p1, v2

    const/16 v4, 0x1e

    if-lt p1, v4, :cond_5

    invoke-static {v0, v1, v2, v3}, Lc/t/m/g/df;->a(Landroid/bluetooth/BluetoothDevice;I[BLjava/lang/String;)Lc/t/m/g/df;

    move-result-object p1

    iget-object v0, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v1, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lc/t/m/g/cs;->h:J

    :cond_2
    iget-object p0, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/t/m/g/df;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lc/t/m/g/df;->a()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    return-void
.end method

.method static synthetic b(Lc/t/m/g/cs;)V
    .locals 2

    .line 32
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cs;->d:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    iget-object v0, p0, Lc/t/m/g/cs;->k:Lc/t/m/g/cs$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lc/t/m/g/cs$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lc/t/m/g/cs;->l:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lc/t/m/g/cs;->l:Landroid/os/HandlerThread;

    :cond_2
    iput-object v1, p0, Lc/t/m/g/cs;->c:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/cs;->j:Z

    iget-object v0, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lc/t/m/g/cs;->h:J

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bluetooth_provider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/cs;->l:Landroid/os/HandlerThread;

    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    iget-object v0, p0, Lc/t/m/g/cs;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cs;->m:Landroid/os/Looper;

    .line 63
    new-instance v0, Lc/t/m/g/cs$a;

    iget-object v1, p0, Lc/t/m/g/cs;->m:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lc/t/m/g/cs$a;-><init>(Lc/t/m/g/cs;Landroid/os/Looper;)V

    iput-object v0, p0, Lc/t/m/g/cs;->k:Lc/t/m/g/cs$a;

    .line 65
    iget-object v0, p0, Lc/t/m/g/cs;->a:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lc/t/m/g/cs;->b:Landroid/bluetooth/BluetoothManager;

    .line 67
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cs;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cs;->d:Landroid/bluetooth/le/BluetoothLeScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lc/t/m/g/cs;->k:Lc/t/m/g/cs$a;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lc/t/m/g/cs$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lc/t/m/g/cs;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cs;->k:Lc/t/m/g/cs$a;

    if-eqz v0, :cond_0

    const/16 v1, 0x7d0

    .line 80
    invoke-virtual {v0, v1}, Lc/t/m/g/cs$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/t/m/g/df;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lc/t/m/g/cs;->h:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 87
    iget-object v1, p0, Lc/t/m/g/cs;->g:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 88
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onScanFailed(I)V
    .locals 0

    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 94
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xbb8

    .line 95
    iput v0, p1, Landroid/os/Message;->what:I

    .line 96
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object p2, p0, Lc/t/m/g/cs;->k:Lc/t/m/g/cs$a;

    invoke-virtual {p2}, Lc/t/m/g/cs$a;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 98
    iget-object p2, p0, Lc/t/m/g/cs;->k:Lc/t/m/g/cs$a;

    invoke-virtual {p2, p1}, Lc/t/m/g/cs$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
