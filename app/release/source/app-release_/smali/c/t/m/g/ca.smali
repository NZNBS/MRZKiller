.class public final Lc/t/m/g/ca;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc/t/m/g/l;->j()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lc/t/m/g/ca;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    sput-boolean v0, Lc/t/m/g/ca;->b:Z

    sput-boolean v0, Lc/t/m/g/ca;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 5

    const-string v0, "HLDisconnEvent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 p0, -0x120

    const/4 v0, -0x3

    const/4 v1, -0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, "self_report_fail_rate"

    goto :goto_3

    :cond_4
    :goto_2
    const-string v4, "self_report_succ_rate"

    :goto_3
    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    if-eq p1, v0, :cond_6

    if-ne p1, p0, :cond_5

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p0, 0x1

    :goto_5
    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    const/16 v3, 0x32

    :cond_8
    :goto_6
    const/16 p0, 0x64

    invoke-static {v4, v2, p0, v3}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lc/t/m/g/ca;->a:Landroid/os/Handler;

    new-instance v9, Lc/t/m/g/cb;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lc/t/m/g/cb;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, -0x3

    const/4 v6, -0x4

    const/4 v7, 0x0

    if-eqz p6, :cond_2

    :try_start_0
    invoke-static {}, Lc/t/m/g/o;->l()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v9, p3

    const/4 v10, 0x0

    const/16 v11, -0x120

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/t/m/g/o;->e()V

    invoke-static {}, Lc/t/m/g/o;->h()Z

    move-result v9

    if-nez v9, :cond_1

    move-object/from16 v9, p3

    const/4 v10, 0x1

    const/4 v11, -0x4

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/t/m/g/x;->a()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ping failed, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x3

    goto :goto_0

    :cond_2
    move-object/from16 v10, p3

    move/from16 v11, p2

    move-object v9, v10

    const/4 v10, 0x0

    :goto_0
    invoke-static {}, Lc/t/m/g/l;->b()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "B15"

    const-string v14, "HLHttpAgent"

    const-string v15, "HLReqRspEvent"

    const-string v8, "HLHttpDirect"

    if-ne v1, v12, :cond_5

    :try_start_1
    sget-boolean v12, Lc/t/m/g/ca;->b:Z

    if-eqz v12, :cond_4

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    sput-boolean v7, Lc/t/m/g/ca;->b:Z

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    sget-boolean v12, Lc/t/m/g/ca;->c:Z

    if-eqz v12, :cond_5

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_5

    const-string v5, "app"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sput-boolean v7, Lc/t/m/g/ca;->c:Z

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz p7, :cond_26

    const/4 v12, 0x2

    const/4 v7, -0x1

    if-ne v1, v12, :cond_7

    :goto_3
    invoke-static {v0, v11}, Lc/t/m/g/ca;->a(Ljava/lang/String;I)I

    move-result v4

    :cond_6
    :goto_4
    const/16 v14, 0x64

    goto/16 :goto_18

    :cond_7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    if-eqz v2, :cond_8

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "event"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    const-string v12, ""

    const-string v13, "HLConnEvent"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/16 v17, 0xa

    if-eqz v13, :cond_11

    if-nez v11, :cond_9

    const-string v8, "report_conn_succ_rate"

    :goto_5
    move-object v12, v8

    goto :goto_8

    :cond_9
    if-eq v11, v6, :cond_b

    if-eq v11, v4, :cond_b

    const/16 v8, -0x120

    if-ne v11, v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_c

    const-string v8, "report_conn_nonet_fail_rate"

    goto :goto_5

    :cond_c
    const-string v8, "report_conn_other_fail_rate"

    goto :goto_5

    :goto_8
    if-nez v11, :cond_d

    :goto_9
    const/4 v4, 0x1

    goto :goto_c

    :cond_d
    if-eq v11, v6, :cond_f

    if-eq v11, v4, :cond_f

    const/16 v4, -0x120

    if-ne v11, v4, :cond_e

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    const/16 v4, 0x64

    :goto_c
    move v8, v4

    const/4 v4, 0x0

    goto/16 :goto_17

    :cond_11
    const-string v13, "HLSecurityEvent"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    if-nez v11, :cond_12

    const-string v4, "report_security_req_succ_rate"

    goto :goto_d

    :cond_12
    const-string v4, "report_security_req_fail_rate"

    :goto_d
    move-object v12, v4

    if-nez v11, :cond_10

    goto :goto_9

    :cond_13
    const-string v13, "HLDisconnEvent"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const-string v12, "report_disconn_rate"

    const/16 v4, 0x32

    const/4 v4, 0x0

    const/16 v8, 0x32

    goto/16 :goto_17

    :cond_14
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_f

    :cond_15
    const-string v4, "HLPushEvent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v12, "report_push_rate"

    :goto_e
    const/4 v4, 0x0

    const/16 v8, 0xa

    goto :goto_17

    :cond_16
    const-string v4, "B_DLSDK_Result"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v12, "report_mass_download_rate"

    const/4 v4, 0x0

    const/16 v8, 0x64

    goto :goto_17

    :cond_17
    const-string v4, "HLDownTiny"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v12, "report_ease_download_rate"

    goto :goto_e

    :cond_18
    const/4 v4, -0x1

    const/4 v8, 0x0

    goto :goto_17

    :cond_19
    :goto_f
    if-eqz v5, :cond_1a

    if-nez v11, :cond_1a

    const-string v12, "report_req_ssl_first_rate"

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_17

    :cond_1a
    if-nez v11, :cond_1b

    const-string v8, "report_req_succ_rate"

    :goto_10
    move-object v12, v8

    goto :goto_13

    :cond_1b
    if-eq v11, v6, :cond_1d

    if-eq v11, v4, :cond_1d

    const/16 v8, -0x120

    if-ne v11, v8, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v8, 0x0

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v8, 0x1

    :goto_12
    if-eqz v8, :cond_1e

    const-string v8, "report_req_nonet_fail_rate"

    goto :goto_10

    :cond_1e
    const-string v8, "report_req_other_fail_rate"

    goto :goto_10

    :goto_13
    if-nez v11, :cond_1f

    :goto_14
    goto/16 :goto_9

    :cond_1f
    if-eq v11, v6, :cond_21

    if-eq v11, v4, :cond_21

    const/16 v4, -0x120

    if-ne v11, v4, :cond_20

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    goto :goto_16

    :cond_21
    :goto_15
    const/4 v4, 0x1

    :goto_16
    if-eqz v4, :cond_10

    goto :goto_14

    :goto_17
    if-nez v4, :cond_6

    const-string v4, "report_all_events"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v4, v13, v14, v13}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v4

    if-ne v4, v14, :cond_22

    const/16 v4, 0x64

    goto/16 :goto_4

    :cond_22
    const/16 v14, 0x64

    invoke-static {v12, v13, v14, v8}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v4

    :goto_18
    if-lez v4, :cond_23

    if-ge v4, v14, :cond_23

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-gt v7, v4, :cond_24

    goto :goto_19

    :cond_23
    if-eq v4, v7, :cond_25

    const/16 v7, 0x64

    if-ne v4, v7, :cond_24

    goto :goto_19

    :cond_24
    const/4 v13, 0x0

    goto :goto_1a

    :cond_25
    :goto_19
    const/4 v13, 0x1

    :goto_1a
    move v14, v13

    goto :goto_1b

    :cond_26
    const/16 v4, 0x64

    const/4 v14, 0x1

    :goto_1b
    if-eqz v14, :cond_31

    if-nez v2, :cond_27

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_27
    if-lez v4, :cond_28

    const/16 v7, 0x64

    if-ge v4, v7, :cond_28

    const-string v7, "B9"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    const-string v4, "B7"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v10, :cond_29

    move v8, v11

    goto :goto_1c

    :cond_29
    move/from16 v8, p2

    :goto_1c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2a

    const-string v4, "B28"

    const-string v5, "1"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const-string v4, "B1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/l;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "B2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lc/t/m/g/l;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "B3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc/t/m/g/l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "B4"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v1, "B5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/bz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lc/t/m/g/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "B29"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    const-string v1, "access_report_detail"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v5}, Lc/t/m/g/u;->a(Ljava/lang/String;III)I

    move-result v1

    if-ne v1, v5, :cond_2f

    if-eqz v3, :cond_2d

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2d
    const-string v1, "B6"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/o;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v11, v6, :cond_2e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "B8"

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    const-string v1, "D1"

    invoke-static {}, Lc/t/m/g/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "D2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/t/m/g/l;->d()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "D3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc/t/m/g/l;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-nez p2, :cond_30

    const/4 v7, 0x1

    goto :goto_1d

    :cond_30
    const/4 v7, 0x0

    :goto_1d
    invoke-static {v0, v7, v2}, Lc/t/m/g/ac;->a(Ljava/lang/String;ZLjava/util/Map;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_31
    return-void
.end method

.method public static b(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lc/t/m/g/ca;->a:Landroid/os/Handler;

    new-instance v9, Lc/t/m/g/cc;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lc/t/m/g/cc;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
