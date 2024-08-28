.class public abstract Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;
.super Landroid/os/HwBinder;
.source "ISuplclienttoserverInterface.java"

# interfaces
.implements Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 332
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 374
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 375
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 376
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 377
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 378
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

    .line 350
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
        -0x71t
        0x37t
        -0x4ft
        0x27t
        0x2et
        0x2ft
        0x2ct
        0x17t
        0x59t
        0x3dt
        0x60t
        -0x66t
        0x51t
        -0x80t
        0x21t
        -0x6at
        -0x6ct
        0x7dt
        -0x2at
        0x4ft
        0x6dt
        0xct
        -0x1ft
        -0x68t
        0x2et
        -0x46t
        0x5at
        0x75t
        0xat
        -0x4dt
        0x36t
        0x20t
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

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

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

    .line 344
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 383
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 384
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

    .line 412
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_a

    .line 614
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 615
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_19

    .line 616
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 618
    goto/16 :goto_a

    .line 601
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 602
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 603
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_a

    .line 606
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->notifySyspropsChanged()V

    .line 609
    goto/16 :goto_a

    .line 585
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 586
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 587
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto/16 :goto_a

    .line 590
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 593
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 594
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_a

    .line 570
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 571
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 572
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto/16 :goto_a

    .line 575
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->ping()V

    .line 578
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto/16 :goto_a

    .line 560
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 561
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_19

    .line 562
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 564
    goto/16 :goto_a

    .line 547
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 548
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 549
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 551
    goto/16 :goto_a

    .line 552
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->setHALInstrumentation()V

    .line 555
    goto/16 :goto_a

    .line 514
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 515
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 516
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 518
    goto/16 :goto_a

    .line 519
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 522
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 526
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 527
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 528
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 529
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 530
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 532
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 533
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 534
    nop

    .line 530
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 537
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 539
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 541
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 542
    goto/16 :goto_a

    .line 498
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 499
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 500
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 502
    goto/16 :goto_a

    .line 503
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 507
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 509
    goto/16 :goto_a

    .line 484
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 485
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 486
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 488
    goto/16 :goto_a

    .line 489
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 493
    goto/16 :goto_a

    .line 468
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 469
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 470
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 471
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 472
    goto/16 :goto_a

    .line 473
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 476
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 479
    goto/16 :goto_a

    .line 450
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 451
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 452
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 454
    goto/16 :goto_a

    .line 455
    :cond_14
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 458
    .local v0, "commMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->readFromParcel(Landroid/os/HwParcel;)V

    .line 459
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->suplCommServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    move-result v3

    .line 460
    .local v3, "_hidl_out_success":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 461
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 463
    goto :goto_a

    .line 432
    .end local v0    # "commMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_success":Z
    :sswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 433
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 434
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 436
    goto :goto_a

    .line 437
    :cond_16
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 440
    .local v0, "platMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->readFromParcel(Landroid/os/HwParcel;)V

    .line 441
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->suplPlatformServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    move-result v3

    .line 442
    .restart local v3    # "_hidl_out_success":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 443
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 444
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 445
    goto :goto_a

    .line 415
    .end local v0    # "platMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_success":Z
    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 416
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 417
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 419
    goto :goto_a

    .line 420
    :cond_18
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;

    move-result-object v0

    .line 423
    .local v0, "suplCallbacks":Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->setCallback(Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;)Z

    move-result v3

    .line 424
    .restart local v3    # "_hidl_out_success":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 425
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 426
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 427
    nop

    .line 623
    .end local v0    # "suplCallbacks":Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_success":Z
    :cond_19
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
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

    .line 368
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 394
    const-string v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    return-object p0

    .line 397
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

    .line 401
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->registerService(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 359
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 388
    const/4 v0, 0x1

    return v0
.end method
