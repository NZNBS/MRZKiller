.class public Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;
.super Ljava/lang/Object;
.source "MockLocationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "$"

    .line 198
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 202
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v2

    const-string v1, "%02X"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGPSLat(D)Ljava/lang/String;
    .locals 3

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    double-to-int v0, p0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->leftZeroPad(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNorthWest(Lcom/lody/virtual/remote/vloc/VLocation;)Ljava/lang/String;
    .locals 4

    .line 164
    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-string p0, "N"

    return-object p0

    :cond_0
    const-string p0, "S"

    return-object p0
.end method

.method private static getSouthEast(Lcom/lody/virtual/remote/vloc/VLocation;)Ljava/lang/String;
    .locals 4

    .line 157
    iget-wide v0, p0, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-string p0, "E"

    return-object p0

    :cond_0
    const-string p0, "W"

    return-object p0
.end method

.method public static invokeNmeaReceived(Ljava/lang/Object;)V
    .locals 14

    if-eqz p0, :cond_1

    .line 24
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->get()Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    move-result-object v0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->get()Lcom/lody/virtual/client/ipc/VirtualLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/ipc/VirtualLocationManager;->getLocation()Lcom/lody/virtual/remote/vloc/VLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 28
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HHmmss:SS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 29
    iget-wide v3, v1, Lcom/lody/virtual/remote/vloc/VLocation;->latitude:D

    invoke-static {v3, v4}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->getGPSLat(D)Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-wide v4, v1, Lcom/lody/virtual/remote/vloc/VLocation;->longitude:D

    invoke-static {v4, v5}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->getGPSLat(D)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-static {v1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->getNorthWest(Lcom/lody/virtual/remote/vloc/VLocation;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {v1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->getSouthEast(Lcom/lody/virtual/remote/vloc/VLocation;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "$GPGGA,%s,%s,%s,%s,%s,1,%s,692,.00,M,.00,M,,,"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    aput-object v5, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    const/4 v12, 0x4

    aput-object v1, v7, v12

    .line 33
    invoke-virtual {v0}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSvCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v13, 0x5

    aput-object v0, v7, v13

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "$GPRMC,%s,A,%s,%s,%s,%s,0,0,260717,,,A,"

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v5, v7, v10

    aput-object v4, v7, v11

    aput-object v1, v7, v12

    .line 34
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    sget-object v2, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "$GPGSA,A,2,12,15,19,31,,,,,,,,,604,712,986,*27"

    const-string v4, "$GPVTG,0,T,0,M,0,N,0,K,A,*25"

    const-string v5, "$GPGSV,1,1,04,12,05,159,36,15,41,087,15,19,38,262,30,31,56,146,19,*73"

    if-eqz v2, :cond_0

    .line 36
    :try_start_1
    sget-object v2, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v5, v6, v9

    invoke-virtual {v2, p0, v6}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v2, p0, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v8

    aput-object v4, v2, v9

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v8

    aput-object v1, v2, v9

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v3, v1, v9

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    sget-object v2, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    if-eqz v2, :cond_1

    .line 42
    sget-object v2, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v5, v6, v9

    invoke-virtual {v2, p0, v6}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v2, p0, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v8

    aput-object v4, v2, v9

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v8

    aput-object v1, v2, v9

    invoke-virtual {v0, p0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onNmeaReceived:Lmirror/RefMethod;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    aput-object v3, v1, v9

    invoke-virtual {v0, p0, v1}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static invokeSvStatusChanged(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    if-eqz v0, :cond_7

    .line 104
    invoke-static {}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->get()Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    move-result-object v1

    .line 106
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 111
    sget-object v3, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v2, v3, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSvCount()I

    move-result v2

    .line 113
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getPrnWithFlags()[I

    move-result-object v3

    .line 114
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSnrs()[F

    move-result-object v10

    .line 115
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getElevations()[F

    move-result-object v11

    .line 116
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAzimuths()[F

    move-result-object v1

    .line 117
    sget-object v12, Lmirror/android/location/LocationManager$GnssStatusListenerTransport;->onSvStatusChanged:Lmirror/RefMethod;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    aput-object v3, v7, v8

    aput-object v10, v7, v6

    aput-object v11, v7, v5

    aput-object v1, v7, v4

    invoke-virtual {v12, v0, v7}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 118
    :cond_0
    sget-object v3, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_7

    .line 119
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSvCount()I

    move-result v2

    .line 120
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getPrns()[I

    move-result-object v3

    .line 121
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSnrs()[F

    move-result-object v10

    .line 122
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getElevations()[F

    move-result-object v11

    .line 123
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAzimuths()[F

    move-result-object v12

    .line 124
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getEphemerisMask()I

    move-result v13

    .line 125
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAlmanacMask()I

    move-result v14

    .line 126
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getUsedInFixMask()I

    move-result v15

    .line 127
    sget-object v16, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onSvStatusChanged:Lmirror/RefMethod;

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v7, 0x8

    if-eqz v16, :cond_1

    .line 128
    sget-object v1, Lmirror/android/location/LocationManager$GpsStatusListenerTransport;->onSvStatusChanged:Lmirror/RefMethod;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    aput-object v3, v7, v8

    aput-object v10, v7, v6

    aput-object v11, v7, v5

    aput-object v12, v7, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v7, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v17

    invoke-virtual {v1, v0, v7}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 129
    :cond_1
    sget-object v16, Lmirror/android/location/LocationManager$GpsStatusListenerTransportVIVO;->onSvStatusChanged:Lmirror/RefMethod;

    const/16 v7, 0x9

    if-eqz v16, :cond_2

    .line 130
    sget-object v1, Lmirror/android/location/LocationManager$GpsStatusListenerTransportVIVO;->onSvStatusChanged:Lmirror/RefMethod;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v7, v9

    aput-object v3, v7, v8

    aput-object v10, v7, v6

    aput-object v11, v7, v5

    aput-object v12, v7, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v7, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v17

    new-array v2, v2, [J

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-virtual {v1, v0, v7}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 131
    :cond_2
    sget-object v16, Lmirror/android/location/LocationManager$GpsStatusListenerTransportSumsungS5;->onSvStatusChanged:Lmirror/RefMethod;

    if-eqz v16, :cond_3

    .line 132
    sget-object v1, Lmirror/android/location/LocationManager$GpsStatusListenerTransportSumsungS5;->onSvStatusChanged:Lmirror/RefMethod;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v7, v9

    aput-object v3, v7, v8

    aput-object v10, v7, v6

    aput-object v11, v7, v5

    aput-object v12, v7, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v7, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v17

    new-array v2, v2, [I

    const/16 v3, 0x8

    aput-object v2, v7, v3

    invoke-virtual {v1, v0, v7}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 133
    :cond_3
    sget-object v13, Lmirror/android/location/LocationManager$GpsStatusListenerTransportOPPO_R815T;->onSvStatusChanged:Lmirror/RefMethod;

    if-eqz v13, :cond_7

    .line 134
    array-length v13, v3

    .line 135
    new-array v14, v13, [I

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_4

    .line 137
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getEphemerisMask()I

    move-result v16

    aput v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 139
    :cond_4
    new-array v15, v13, [I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v13, :cond_5

    .line 141
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAlmanacMask()I

    move-result v19

    aput v19, v15, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    :cond_5
    new-array v4, v13, [I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v13, :cond_6

    .line 145
    invoke-virtual {v1}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getUsedInFixMask()I

    move-result v20

    aput v20, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 147
    :cond_6
    sget-object v1, Lmirror/android/location/LocationManager$GpsStatusListenerTransportOPPO_R815T;->onSvStatusChanged:Lmirror/RefMethod;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    aput-object v3, v5, v8

    aput-object v10, v5, v6

    const/4 v3, 0x3

    aput-object v11, v5, v3

    const/4 v3, 0x4

    aput-object v12, v5, v3

    const/4 v3, 0x5

    aput-object v14, v5, v3

    aput-object v15, v5, v18

    aput-object v4, v5, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v5, v3

    invoke-virtual {v1, v0, v5}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method private static leftZeroPad(II)Ljava/lang/String;
    .locals 0

    .line 177
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/lody/virtual/client/hook/proxies/location/MockLocationHelper;->leftZeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static leftZeroPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x30

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p1, v3

    if-ge v2, v3, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setGpsStatus(Ljava/lang/Object;)V
    .locals 23

    const-string v0, "setStatus"

    .line 57
    const-class v1, [I

    const-class v2, [F

    invoke-static {}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->get()Lcom/lody/virtual/client/env/VirtualGPSSatalines;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSvCount()I

    move-result v4

    .line 60
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSnrs()[F

    move-result-object v5

    .line 61
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getPrns()[I

    move-result-object v6

    .line 62
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getElevations()[F

    move-result-object v7

    .line 63
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAzimuths()[F

    move-result-object v8

    .line 64
    invoke-static/range {p0 .. p0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v9

    const-string v10, "mGpsStatus"

    invoke-virtual {v9, v10}, Lcom/lody/virtual/helper/utils/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v10, 0x8

    const/16 v16, 0x0

    const/4 v11, 0x1

    const/16 v18, 0x0

    .line 66
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    new-array v13, v10, [Ljava/lang/Class;

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v13, v16

    aput-object v1, v13, v11

    aput-object v2, v13, v15

    aput-object v2, v13, v14

    const/16 v20, 0x4

    aput-object v2, v13, v20

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x5

    aput-object v21, v13, v19

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v21, v13, v17

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v22, 0x7

    aput-object v21, v13, v22

    invoke-virtual {v12, v0, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    invoke-virtual {v12, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 68
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getEphemerisMask()I

    move-result v13

    .line 69
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAlmanacMask()I

    move-result v18

    .line 70
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getUsedInFixMask()I

    move-result v21

    new-array v14, v10, [Ljava/lang/Object;

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v14, v16

    aput-object v6, v14, v11

    aput-object v5, v14, v15

    const/4 v4, 0x3

    aput-object v7, v14, v4

    const/4 v4, 0x4

    aput-object v8, v14, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v14, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v14, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x7

    aput-object v4, v14, v7

    invoke-virtual {v12, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v18, v12

    :catch_1
    move-object/from16 v12, v18

    :goto_0
    if-nez v12, :cond_3

    .line 77
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v7, v10, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v16

    aput-object v1, v7, v11

    aput-object v2, v7, v15

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    aput-object v2, v7, v8

    const/4 v2, 0x5

    aput-object v1, v7, v2

    const/4 v2, 0x6

    aput-object v1, v7, v2

    const/4 v2, 0x7

    aput-object v1, v7, v2

    invoke-virtual {v4, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getSvCount()I

    move-result v1

    .line 80
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getPrns()[I

    move-result-object v2

    array-length v2, v2

    .line 81
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getElevations()[F

    move-result-object v4

    .line 82
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAzimuths()[F

    move-result-object v7

    .line 83
    new-array v8, v2, [I

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_0

    .line 85
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getEphemerisMask()I

    move-result v13

    aput v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 87
    :cond_0
    new-array v12, v2, [I

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v2, :cond_1

    .line 89
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getAlmanacMask()I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 91
    :cond_1
    new-array v13, v2, [I

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v2, :cond_2

    .line 93
    invoke-virtual {v3}, Lcom/lody/virtual/client/env/VirtualGPSSatalines;->getUsedInFixMask()I

    move-result v18

    aput v18, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    new-array v2, v10, [Ljava/lang/Object;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v16

    aput-object v6, v2, v11

    aput-object v5, v2, v15

    const/4 v1, 0x3

    aput-object v4, v2, v1

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const/4 v1, 0x6

    aput-object v12, v2, v1

    const/4 v1, 0x7

    aput-object v13, v2, v1

    invoke-virtual {v0, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method
