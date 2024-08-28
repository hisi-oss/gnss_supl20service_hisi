.class public Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AfltConfigParser.java"


# static fields
.field private static final AFLTMEASUREMENT:Ljava/lang/String; = "afltmeasurement"

.field private static final BANDCLASS:Ljava/lang/String; = "bandclass"

.field private static final BASESTATIONID:Ljava/lang/String; = "basestationid"

.field private static final BMEASUREMENTVALID:Ljava/lang/String; = "bmeasurementvalid"

.field private static final CDMAFREQUENCY:Ljava/lang/String; = "cdmafrequency"

.field private static final ISOFFSETINCLUDED:Ljava/lang/String; = "isOffsetincluded"

.field private static final MSTIMEOFFSET:Ljava/lang/String; = "mstimeOffset"

.field private static final NETWORKIDENTIFICATION:Ljava/lang/String; = "networkidentification"

.field private static final PILOTMEASUREDPHASE:Ljava/lang/String; = "pilotmeasuredphase"

.field private static final PILOTPHASEDOPPLER:Ljava/lang/String; = "pilotphasedoppler"

.field private static final PILOTPHASEFALSEALARMPROBABILITY:Ljava/lang/String; = "pilotphasefalsealarmprobability"

.field private static final PILOTPHASEFALSEALARMRANGE:Ljava/lang/String; = "pilotphasefalsealarmrange"

.field private static final PILOTPHASEMEASUREMENTERROR:Ljava/lang/String; = "pilotphasemeasurementerror"

.field private static final PILOTPHASERECORD:Ljava/lang/String; = "pilotphaserecord"

.field private static final PILOTSTRENGTH:Ljava/lang/String; = "pilotstrength"

.field private static final PSEUDODOPPLERRMSERROR:Ljava/lang/String; = "pseudodopplerrmserror"

.field private static final REFERENCEPILOTSTRENGTH:Ljava/lang/String; = "referencepilotstrength"

.field private static final REFERENCEPN:Ljava/lang/String; = "referencepn"

.field private static final REPEATERDETECTIONSTATUS:Ljava/lang/String; = "repeaterdetectionstatus"

.field private static final REPEATERID:Ljava/lang/String; = "repeaterid"

.field private static final REPEATERTYPE:Ljava/lang/String; = "repeatertype"

.field private static final RMSERRORPHASE:Ljava/lang/String; = "rmserrorphase"

.field private static final SYSTEMIDENTIFICATION:Ljava/lang/String; = "systemidentification"

.field private static final TIMEREFERENCE:Ljava/lang/String; = "timereference"

.field private static final TOTALNUMBEROFPILOTS:Ljava/lang/String; = "totalnumberofpilots"

.field private static final TOTALRECEIVEDPOWER:Ljava/lang/String; = "totalreceivedpower"


# instance fields
.field public afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

.field private iIndex:I

.field private isMeasurementValid:Z

.field private isOffsetIncluded:Z

.field private isRequiredTag:Z

.field private repeaterId:Ljava/lang/String;

.field private stData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isMeasurementValid:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isOffsetIncluded:Z

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->repeaterId:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 90
    iput-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    .line 99
    invoke-virtual {p0}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->init()V

    .line 100
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

    .line 418
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    .line 428
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

    .line 287
    const-string v0, "bmeasurementvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    .line 290
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.bMeasurementValid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-boolean v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    :cond_1
    const-string v0, "timereference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TimeReference:I

    .line 295
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.TimeReference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TimeReference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 297
    :cond_2
    const-string v0, "isOffsetincluded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    .line 300
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.IsOffsetIncluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-boolean v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    :cond_4
    const-string v0, "mstimeOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->MSTimeOffset:I

    .line 305
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.MSTimeOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->MSTimeOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    :cond_5
    const-string v0, "referencepn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 309
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePN:I

    .line 310
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.ReferencePN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    :cond_6
    const-string v0, "referencepilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePilotStrength:I

    .line 315
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.ReferencePilotStrength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePilotStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :cond_7
    const-string v0, "bandclass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 319
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BandClass:I

    .line 320
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.BandClass : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BandClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    :cond_8
    const-string v0, "cdmafrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->CDMAFrequency:I

    .line 325
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.CDMAFrequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->CDMAFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_9
    const-string v0, "basestationid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 329
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BaseStationID:I

    .line 330
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.BaseStationID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BaseStationID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    :cond_a
    const-string v0, "systemidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 334
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->SystemIdentification:I

    .line 335
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.SystemIdentification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->SystemIdentification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 337
    :cond_b
    const-string v0, "networkidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->NetworkIdentification:I

    .line 340
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.NetworkIdentification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->NetworkIdentification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    :cond_c
    const-string v0, "totalreceivedpower"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalReceivedPower:I

    .line 345
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.TotalReceivedPower : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalReceivedPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :cond_d
    const-string v0, "totalnumberofpilots"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 349
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    .line 350
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.TotalNumberOfPilots : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    :cond_e
    const-string v0, "pilotphaserecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    iget v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 355
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 357
    :cond_f
    const-string v0, "pilotmeasuredphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 359
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotMeasuredPhase:I

    .line 360
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PilotMeasuredPhase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotMeasuredPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    :cond_10
    const-string v0, "pilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 364
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotStrength:I

    .line 365
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PilotStrength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 367
    :cond_11
    const-string v0, "rmserrorphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 369
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RMSErrorPhase:I

    .line 370
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).RMSErrorPhase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RMSErrorPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    :cond_12
    const-string v0, "pilotphasemeasurementerror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 374
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseMeasurementError:I

    .line 375
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PilotPhaseMeasurementError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseMeasurementError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    :cond_13
    const-string v0, "repeaterdetectionstatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 379
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterDetectionStatus:I

    .line 380
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).RepeaterDetectionStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterDetectionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    :cond_14
    const-string v0, "repeatertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 384
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterType:I

    .line 385
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).RepeaterType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    :cond_15
    const-string v0, "repeaterid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 389
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterID:[B

    .line 390
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).RepeaterID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterID:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    :cond_16
    const-string v0, "pilotphasedoppler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 394
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseDoppler:I

    .line 395
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PilotPhaseDoppler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseDoppler:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 397
    :cond_17
    const-string v0, "pseudodopplerrmserror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 399
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PseudoDopplerRMSError:I

    .line 400
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PseudoDopplerRMSError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PseudoDopplerRMSError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    :cond_18
    const-string v0, "pilotphasefalsealarmprobability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 404
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmProbability:I

    .line 405
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PilotphaseFalseAlarmRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmProbability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_19
    const-string v0, "pilotphasefalsealarmrange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 409
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmRange:I

    .line 410
    const-string v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afltmeasure.phaseRecord.get(iIndex).PilotphaseFalseAlarmRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1a
    :goto_0
    return-void
.end method

.method public getAFLTMeasInfo()Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    return-object v0
.end method

.method public init()V
    .locals 7

    .line 105
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 106
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x0

    .line 107
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v2, 0x0

    .line 108
    .local v2, "xr":Lorg/xml/sax/XMLReader;
    const/4 v3, 0x0

    .line 112
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    move-object v1, v4

    .line 113
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    move-object v2, v4

    .line 114
    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/system/etc/gps/config/aflt.xml"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 119
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    nop

    .line 131
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

    .line 129
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 121
    :catch_0
    move-exception v4

    .line 123
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/data/gnss/aflt.xml"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 125
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 153
    :goto_1
    nop

    .line 157
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

    .line 129
    :goto_3
    if-eqz v3, :cond_0

    .line 131
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

    .line 153
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 147
    :catch_2
    move-exception v4

    .line 149
    .local v4, "e1":Lorg/xml/sax/SAXException;
    :try_start_6
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    .end local v4    # "e1":Lorg/xml/sax/SAXException;
    if-eqz v3, :cond_1

    .line 157
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 143
    :catch_3
    move-exception v4

    .line 145
    .local v4, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 153
    .end local v4    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz v3, :cond_1

    .line 157
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 139
    :catch_4
    move-exception v4

    .line 141
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 153
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 157
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_2

    .line 135
    :catch_5
    move-exception v4

    .line 137
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 153
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 157
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

    .line 153
    :goto_5
    if-eqz v3, :cond_2

    .line 157
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

    .line 175
    const-string v0, "afltmeasurement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/aflt/AfltMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    goto/16 :goto_0

    .line 179
    :cond_0
    const-string v0, "bmeasurementvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 181
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 183
    :cond_1
    const-string v0, "timereference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 187
    :cond_2
    const-string v0, "isOffsetincluded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 191
    :cond_3
    const-string v0, "mstimeOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 195
    :cond_4
    const-string v0, "referencepn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 199
    :cond_5
    const-string v0, "referencepilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 203
    :cond_6
    const-string v0, "bandclass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 207
    :cond_7
    const-string v0, "cdmafrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 211
    :cond_8
    const-string v0, "basestationid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 213
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 215
    :cond_9
    const-string v0, "systemidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 217
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 219
    :cond_a
    const-string v0, "networkidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 223
    :cond_b
    const-string v0, "totalreceivedpower"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 225
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 227
    :cond_c
    const-string v0, "totalnumberofpilots"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 229
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 231
    :cond_d
    const-string v0, "pilotphaserecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    iget v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 234
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 235
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    .line 236
    :cond_e
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 238
    :cond_f
    const-string v0, "pilotmeasuredphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 240
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 242
    :cond_10
    const-string v0, "pilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 244
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 246
    :cond_11
    const-string v0, "rmserrorphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 248
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 250
    :cond_12
    const-string v0, "pilotphasemeasurementerror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 252
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 254
    :cond_13
    const-string v0, "repeaterdetectionstatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 256
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 258
    :cond_14
    const-string v0, "repeatertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 260
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 262
    :cond_15
    const-string v0, "repeaterid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 264
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 266
    :cond_16
    const-string v0, "pilotphasedoppler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 270
    :cond_17
    const-string v0, "pseudodopplerrmserror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 272
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 274
    :cond_18
    const-string v0, "pilotphasefalsealarmprobability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 276
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 278
    :cond_19
    const-string v0, "pilotphasefalsealarmrange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 280
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    .line 282
    :cond_1a
    :goto_0
    return-void
.end method
