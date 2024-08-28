.class public Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
.super Ljava/lang/Object;
.source "SUPL_EOTDMeasInfo.java"


# instance fields
.field public bIsValidEOTDMeasurement:Z

.field public bOTDRel5Present:Z

.field public bOTDRel98Present:Z

.field public nNoOfValidSets:I

.field public otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

.field public otdMsrRestSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;",
            ">;"
        }
    .end annotation
.end field

.field public otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

.field public otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEOTDMeasInfo(I)[B
    .locals 12
    .param p1, "iMeasureType"    # I

    .line 52
    const/4 v0, 0x4

    .line 53
    .local v0, "iSize":I
    const/4 v1, 0x0

    .line 55
    .local v1, "iOffset":I
    const/4 v2, 0x0

    .line 56
    .local v2, "bOtdMsrFirst":[B
    const/4 v3, 0x0

    .line 57
    .local v3, "vecMsrResult":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v4, 0x0

    .line 58
    .local v4, "bRel98":[B
    const/4 v5, 0x0

    .line 60
    .local v5, "bRel5":[B
    const-string v6, "SUPL20_EOTD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EOTD bValid value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    if-eqz v6, :cond_4

    .line 63
    add-int/lit8 v0, v0, 0xc

    .line 64
    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    if-eqz v6, :cond_0

    .line 65
    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    invoke-virtual {v6}, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->getOTD_MsrEleFirst()[B

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    array-length v6, v2

    add-int/2addr v0, v6

    .line 71
    :cond_0
    iget v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 72
    new-instance v6, Ljava/util/Vector;

    iget v7, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    move-object v3, v6

    .line 73
    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 74
    .local v7, "msrEleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    if-eqz v7, :cond_1

    .line 75
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->getOTD_MSREleRest()[B

    move-result-object v8

    .line 76
    .local v8, "otdMsrRest":[B
    if-eqz v8, :cond_1

    .line 77
    array-length v9, v8

    add-int/2addr v0, v9

    .line 78
    invoke-virtual {v3, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v7    # "msrEleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    .end local v8    # "otdMsrRest":[B
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    if-eqz v6, :cond_3

    .line 86
    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    invoke-virtual {v6}, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->getOTD_MeasR98Ext()[B

    move-result-object v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    array-length v6, v4

    add-int/2addr v0, v6

    .line 92
    :cond_3
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    if-eqz v6, :cond_4

    .line 93
    iget-object v6, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    invoke-virtual {v6}, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->getOTD_MeasRel5Ext()[B

    move-result-object v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    array-length v6, v5

    add-int/2addr v0, v6

    .line 99
    :cond_4
    add-int/lit8 v0, v0, 0x8

    .line 100
    add-int/lit8 v0, v0, 0x4

    .line 103
    new-array v6, v0, [B

    .line 104
    .local v6, "bData":[B
    add-int/lit8 v7, v0, -0x4

    invoke-static {v6, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 105
    const/16 v7, 0x114

    invoke-static {v6, v1, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 106
    invoke-static {v6, v1, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 107
    iget-boolean v8, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    invoke-static {v6, v1, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 108
    iget-boolean v8, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    if-eqz v8, :cond_8

    .line 110
    const/4 v8, 0x0

    if-eqz v2, :cond_5

    .line 112
    array-length v9, v2

    invoke-static {v2, v8, v6, v1, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 113
    array-length v9, v2

    add-int/2addr v1, v9

    .line 116
    :cond_5
    iget v9, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    invoke-static {v6, v1, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 117
    iget v9, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    if-lez v9, :cond_6

    if-eqz v3, :cond_6

    .line 119
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 121
    .local v10, "b":[B
    array-length v11, v10

    invoke-static {v10, v8, v6, v1, v11}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 122
    array-length v11, v10

    add-int/2addr v1, v11

    .line 123
    .end local v10    # "b":[B
    goto :goto_1

    .line 126
    :cond_6
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    invoke-static {v6, v1, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 127
    if-eqz v4, :cond_7

    .line 129
    array-length v9, v4

    invoke-static {v4, v8, v6, v1, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 130
    array-length v9, v4

    add-int/2addr v1, v9

    .line 133
    :cond_7
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    invoke-static {v6, v1, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 134
    if-eqz v5, :cond_8

    .line 136
    array-length v9, v5

    invoke-static {v5, v8, v6, v1, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 137
    array-length v8, v5

    add-int/2addr v1, v8

    .line 140
    :cond_8
    const-string v8, "SUPL20_EOTD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EOTD msg has send :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v6
.end method
