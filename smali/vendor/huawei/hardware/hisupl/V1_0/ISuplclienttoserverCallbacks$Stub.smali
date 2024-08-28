.class public abstract Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;
.super Landroid/os/HwBinder;
.source "ISuplclienttoserverCallbacks.java"

# interfaces
.implements Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 304
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 346
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 347
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 348
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 349
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 350
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x68t
        -0x7at
        0x58t
        -0x68t
        -0x6bt
        -0x48t
        0x25t
        0x42t
        0x31t
        0x7et
        0xat
        -0x32t
        -0x76t
        0x6et
        -0x38t
        0x52t
        -0x9t
        -0x4ft
        0x50t
        -0x61t
        -0x2bt
        -0x7t
        0x6at
        0xbt
        -0x3t
        -0x34t
        -0x3ft
        0x1at
        -0xbt
        -0x3t
        -0x38t
        0xdt
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 316
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 355
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 356
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_9

    .line 567
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 568
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_17

    .line 569
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 571
    goto/16 :goto_9

    .line 554
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 555
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 556
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 558
    goto/16 :goto_9

    .line 559
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->notifySyspropsChanged()V

    .line 562
    goto/16 :goto_9

    .line 538
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 539
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 540
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 542
    goto/16 :goto_9

    .line 543
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 546
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 547
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 549
    goto/16 :goto_9

    .line 523
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 524
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 525
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 527
    goto/16 :goto_9

    .line 528
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->ping()V

    .line 531
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 533
    goto/16 :goto_9

    .line 513
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 514
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_17

    .line 515
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 517
    goto/16 :goto_9

    .line 500
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 501
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 502
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 504
    goto/16 :goto_9

    .line 505
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->setHALInstrumentation()V

    .line 508
    goto/16 :goto_9

    .line 467
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 468
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 469
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 470
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 471
    goto/16 :goto_9

    .line 472
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 475
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 479
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 480
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 481
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 482
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 483
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 485
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 486
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 487
    nop

    .line 483
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 490
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 492
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 494
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 495
    goto/16 :goto_9

    .line 451
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 452
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 453
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 454
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 455
    goto/16 :goto_9

    .line 456
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 460
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 462
    goto/16 :goto_9

    .line 437
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 438
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 439
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 441
    goto/16 :goto_9

    .line 442
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 446
    goto/16 :goto_9

    .line 421
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 422
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 423
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 424
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 425
    goto :goto_9

    .line 426
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 429
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 430
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 432
    goto :goto_9

    .line 404
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 405
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 406
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 408
    goto :goto_9

    .line 409
    :cond_14
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/server2client;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;-><init>()V

    .line 412
    .local v0, "scmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->readFromParcel(Landroid/os/HwParcel;)V

    .line 413
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->suplScmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V

    .line 414
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 416
    goto :goto_9

    .line 387
    .end local v0    # "scmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 388
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 389
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 391
    goto :goto_9

    .line 392
    :cond_16
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/server2client;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;-><init>()V

    .line 395
    .local v0, "pcmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->readFromParcel(Landroid/os/HwParcel;)V

    .line 396
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->suplPcmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V

    .line 397
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 399
    nop

    .line 576
    .end local v0    # "pcmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_17
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_a
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 340
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 366
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    return-object p0

    .line 369
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->registerService(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 331
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 360
    const/4 v0, 0x1

    return v0
.end method
