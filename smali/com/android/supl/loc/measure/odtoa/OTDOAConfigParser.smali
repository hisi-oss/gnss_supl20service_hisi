.class public Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OTDOAConfigParser.java"


# static fields
.field private static final BCELLIDPARAMVALID:Ljava/lang/String; = "bcellidparamvalid"

.field private static final BURSTTYPE:Ljava/lang/String; = "bursttype"

.field private static final CELLPARAMID:Ljava/lang/String; = "cellparamid"

.field private static final CELLPARAMSID:Ljava/lang/String; = "cellparamsid"

.field private static final MEASUREINFOTYPE:Ljava/lang/String; = "measureinfotype"

.field private static final MIDAMBLESHIFT:Ljava/lang/String; = "midambleshift"

.field private static final MODEFDD:Ljava/lang/String; = "modeFDD"

.field private static final MODESPECIFICMEASURE:Ljava/lang/String; = "modespecificmeasure"

.field private static final MODETDD:Ljava/lang/String; = "modeTDD"

.field private static final MODETYPE:Ljava/lang/String; = "modetype"

.field private static final NEIGHBOURCOUNT:Ljava/lang/String; = "neighbourcount"

.field private static final NEIGHBOURLIST:Ljava/lang/String; = "neighbourlist"

.field private static final NEIGHBOURMEAS:Ljava/lang/String; = "neighbourmeas"

.field private static final NEIGHBOURPRESENT:Ljava/lang/String; = "neighbourpresent"

.field private static final NOOFMEASUREMENTS:Ljava/lang/String; = "noofmeasurements"

.field private static final OTDOAMEASURE:Ljava/lang/String; = "otdoameasure"

.field private static final PRIMSCRAMBCODE:Ljava/lang/String; = "primscrambcode"

.field private static final PRIMSCRAMBCODEPRESENT:Ljava/lang/String; = "primscrambcodepresent"

.field private static final RXTXTIMEDIFFTYPE:Ljava/lang/String; = "rxtxtimedifftype"

.field private static final RXTXTIMEDIFFVALID:Ljava/lang/String; = "rxtxtimediffvalid"

.field private static final SFN:Ljava/lang/String; = "sfn"

.field private static final SFNSFNOBSTIMEDIFF:Ljava/lang/String; = "sfnsfnobstimediff"

.field private static final STDDEVOTDOAMEAS:Ljava/lang/String; = "stddevOTDOAmeas"

.field private static final STDVALUE:Ljava/lang/String; = "stdvalue"

.field private static final TIMESLOT:Ljava/lang/String; = "timeslot"

.field private static final VALID:Ljava/lang/String; = "valid"


# instance fields
.field private iMeasIndex:I

.field private isModeSpecMeas:Z

.field private isNeighbourMeas:Z

.field private isNeighbourMeasData:Z

.field private isRequiredTag:Z

.field private otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

.field private stData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    .line 114
    invoke-virtual {p0}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->init()V

    .line 116
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 414
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 421
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 260
    const-string v0, "valid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bMeasurementValid:Z

    goto/16 :goto_0

    .line 262
    :cond_1
    const-string v0, "sfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->lSFN:J

    goto/16 :goto_0

    .line 264
    :cond_2
    const-string v0, "measureinfotype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    goto/16 :goto_0

    .line 266
    :cond_3
    const-string v0, "modespecificmeasure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    goto/16 :goto_0

    .line 268
    :cond_4
    const-string v0, "primscrambcodepresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 271
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 272
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_5

    move v1, v2

    nop

    :cond_5
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    goto/16 :goto_0

    .line 273
    :cond_6
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 274
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 275
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_7

    move v1, v2

    nop

    :cond_7
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    goto/16 :goto_0

    .line 278
    :cond_8
    const-string v0, "primscrambcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 279
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_9

    .line 280
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 281
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 282
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lPrimaryScramblingCode:J

    goto/16 :goto_0

    .line 283
    :cond_9
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 284
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 285
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 286
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lPrimaryScramblingCode:J

    goto/16 :goto_0

    .line 289
    :cond_a
    const-string v0, "rxtxtimediffvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 290
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_c

    .line 291
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 292
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_b

    move v1, v2

    nop

    :cond_b
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    goto/16 :goto_0

    .line 294
    :cond_c
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 295
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 296
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 297
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    goto/16 :goto_0

    .line 299
    :cond_e
    const-string v0, "rxtxtimedifftype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 300
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_f

    .line 301
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 302
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 303
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lRxTxTimeDiffType2:J

    goto/16 :goto_0

    .line 304
    :cond_f
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 305
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 306
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 307
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lRxTxTimeDiffType2:J

    goto/16 :goto_0

    .line 309
    :cond_10
    const-string v0, "stdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 310
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 312
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 313
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdValue:S

    goto/16 :goto_0

    .line 314
    :cond_11
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 316
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_12

    .line 317
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 318
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucStdValue:S

    goto/16 :goto_0

    .line 319
    :cond_12
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 320
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 321
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdValue:S

    goto/16 :goto_0

    .line 323
    :cond_13
    const-string v0, "noofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 324
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_14

    .line 325
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 326
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 327
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucNoOfMeasurements:S

    goto/16 :goto_0

    .line 328
    :cond_14
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 330
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_15

    .line 331
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 332
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucNoOfMeasurements:S

    goto/16 :goto_0

    .line 333
    :cond_15
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 334
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 335
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucNoOfMeasurements:S

    goto/16 :goto_0

    .line 337
    :cond_16
    const-string v0, "stddevOTDOAmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 338
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_17

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 340
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 341
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdDevOTDOAMeas:S

    goto/16 :goto_0

    .line 342
    :cond_17
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_29

    .line 343
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_18

    .line 344
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 345
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucStdDevOTDOAMeas:S

    goto/16 :goto_0

    .line 346
    :cond_18
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_29

    .line 347
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 348
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdDevOTDOAMeas:S

    goto/16 :goto_0

    .line 350
    :cond_19
    const-string v0, "sfnsfnobstimediff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 351
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_29

    .line 352
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 353
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->lSFNSFNObsTimeDiff2:J

    goto/16 :goto_0

    .line 356
    :cond_1a
    const-string v0, "bcellidparamvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 357
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v0, :cond_29

    .line 358
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 359
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1b

    move v1, v2

    nop

    :cond_1b
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->bCellIDParamValid:Z

    goto/16 :goto_0

    .line 361
    :cond_1c
    const-string v0, "cellparamsid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 362
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v0, :cond_29

    .line 363
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 364
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->lCellParamsID:J

    goto/16 :goto_0

    .line 366
    :cond_1d
    const-string v0, "neighbourpresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 367
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1e

    move v1, v2

    nop

    :cond_1e
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    .line 368
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v0, :cond_29

    .line 369
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    goto/16 :goto_0

    .line 371
    :cond_1f
    const-string v0, "neighbourcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 372
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->ucNoOfNeighbourList:S

    .line 373
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-short v1, v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->ucNoOfNeighbourList:S

    new-array v1, v1, [Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    goto/16 :goto_0

    .line 374
    :cond_20
    const-string v0, "neighbourmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 375
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_0

    .line 376
    :cond_21
    const-string v0, "neighbourlist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 377
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    goto/16 :goto_0

    .line 379
    :cond_22
    const-string v0, "modetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 380
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    goto/16 :goto_0

    .line 382
    :cond_23
    const-string v0, "bursttype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 383
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_29

    .line 384
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 385
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->eBurstType:I

    goto/16 :goto_0

    .line 387
    :cond_24
    const-string v0, "midambleshift"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 388
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_29

    .line 389
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 390
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lMidAmbleShift:J

    goto :goto_0

    .line 392
    :cond_25
    const-string v0, "timeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 393
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_29

    .line 394
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 395
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lTimeSlot:J

    goto :goto_0

    .line 397
    :cond_26
    const-string v0, "cellparamid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 398
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_29

    .line 399
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 400
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lCellParamID:J

    goto :goto_0

    .line 402
    :cond_27
    const-string v0, "modeTDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 403
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_28

    .line 404
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto :goto_0

    .line 406
    :cond_28
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    .line 410
    :cond_29
    :goto_0
    return-void
.end method

.method public getOtdoa_Measurement()Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    return-object v0
.end method

.method public init()V
    .locals 7

    .line 119
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 120
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x0

    .line 121
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v2, 0x0

    .line 122
    .local v2, "xr":Lorg/xml/sax/XMLReader;
    const/4 v3, 0x0

    .line 124
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    move-object v1, v4

    .line 126
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    move-object v2, v4

    .line 128
    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/system/etc/gps/config/otdoa.xml"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 133
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    nop

    .line 140
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 139
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/data/gnss/otdoa.xml"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 137
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 156
    :goto_1
    nop

    .line 158
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 162
    :goto_2
    goto :goto_4

    .line 159
    :catch_1
    move-exception v4

    .line 161
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 139
    :goto_3
    if-eqz v3, :cond_0

    .line 140
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 152
    :catch_2
    move-exception v4

    .line 154
    .local v4, "e1":Lorg/xml/sax/SAXException;
    :try_start_6
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 156
    .end local v4    # "e1":Lorg/xml/sax/SAXException;
    if-eqz v3, :cond_1

    .line 158
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 149
    :catch_3
    move-exception v4

    .line 151
    .local v4, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 156
    .end local v4    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz v3, :cond_1

    .line 158
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 146
    :catch_4
    move-exception v4

    .line 148
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 156
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 158
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_2

    .line 143
    :catch_5
    move-exception v4

    .line 145
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 156
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 158
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    .line 166
    :cond_1
    :goto_4
    const/4 v0, 0x0

    .line 167
    const/4 v1, 0x0

    .line 168
    const/4 v2, 0x0

    .line 169
    return-void

    .line 156
    :goto_5
    if-eqz v3, :cond_2

    .line 158
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 162
    goto :goto_6

    .line 159
    :catch_6
    move-exception v5

    .line 161
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_6
    throw v4
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 181
    const-string v0, "otdoameasure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    goto/16 :goto_0

    .line 183
    :cond_0
    const-string v0, "valid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 184
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 185
    :cond_1
    const-string v0, "sfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 187
    :cond_2
    const-string v0, "measureinfotype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 189
    :cond_3
    const-string v0, "modespecificmeasure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    new-instance v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;-><init>()V

    iput-object v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    .line 191
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    goto/16 :goto_0

    .line 192
    :cond_4
    const-string v0, "modeFDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    if-ne v0, v1, :cond_1a

    .line 195
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_1a

    .line 198
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    if-ne v0, v1, :cond_1a

    .line 199
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    goto/16 :goto_0

    .line 203
    :cond_6
    const-string v0, "primscrambcodepresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 205
    :cond_7
    const-string v0, "primscrambcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 207
    :cond_8
    const-string v0, "rxtxtimediffvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 208
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 209
    :cond_9
    const-string v0, "rxtxtimedifftype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 210
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 211
    :cond_a
    const-string v0, "stdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 213
    :cond_b
    const-string v0, "noofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 214
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 215
    :cond_c
    const-string v0, "stddevOTDOAmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 216
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 217
    :cond_d
    const-string v0, "modeTDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 218
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_e

    .line 219
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    if-ne v0, v1, :cond_1a

    .line 220
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    goto/16 :goto_0

    .line 222
    :cond_e
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_1a

    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    if-ne v0, v1, :cond_1a

    .line 224
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    goto/16 :goto_0

    .line 228
    :cond_f
    const-string v0, "bcellidparamvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 229
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 230
    :cond_10
    const-string v0, "cellparamsid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 231
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 232
    :cond_11
    const-string v0, "neighbourpresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 234
    :cond_12
    const-string v0, "neighbourcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 236
    :cond_13
    const-string v0, "neighbourmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 237
    iget v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    .line 238
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;-><init>()V

    aput-object v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    goto :goto_0

    .line 240
    :cond_14
    const-string v0, "modetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 241
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 242
    :cond_15
    const-string v0, "bursttype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 243
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 244
    :cond_16
    const-string v0, "midambleshift"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 245
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 246
    :cond_17
    const-string v0, "timeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 247
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 248
    :cond_18
    const-string v0, "cellparamid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 249
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 250
    :cond_19
    const-string v0, "sfnsfnobstimediff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 251
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    .line 253
    :cond_1a
    :goto_0
    return-void
.end method
