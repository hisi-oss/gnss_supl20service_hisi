.class public Lcom/android/supl/loc/measure/eotd/EOTDParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EOTDParser.java"


# static fields
.field private static final BCCHCARRIER:Ljava/lang/String; = "bcchcarrier"

.field private static final BSIC:Ljava/lang/String; = "bsic"

.field private static final BSICANDCARRIER:Ljava/lang/String; = "bsicandcarrier"

.field private static final CARRIER:Ljava/lang/String; = "carrier"

.field private static final CELLIDANDLAC:Ljava/lang/String; = "cellidandlac"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final EOTDMEAS:Ljava/lang/String; = "eotdmeas"

.field private static final EOTDQUALITY:Ljava/lang/String; = "eotdquality"

.field private static final ISIDENTITYPRESENT:Ljava/lang/String; = "isidentitypresent"

.field private static final MEASR98EXT:Ljava/lang/String; = "measr98ext"

.field private static final MEASREL5EXT:Ljava/lang/String; = "measrel5ext"

.field private static final MEASWITHID:Ljava/lang/String; = "measwithid"

.field private static final MSRELECOMMON:Ljava/lang/String; = "msrelecommon"

.field private static final MSRELEFIRST:Ljava/lang/String; = "msrelefirst"

.field private static final MSRELEREST:Ljava/lang/String; = "msrelerest"

.field private static final MSROFOTHERSETS:Ljava/lang/String; = "msrofothersets"

.field private static final MSROTHERSETSUNION:Ljava/lang/String; = "msrothersetsunion"

.field private static final MULTIFRAMECARRIER:Ljava/lang/String; = "multiframecarrier"

.field private static final MULTIFRAMEOFFSET:Ljava/lang/String; = "multiframeoffset"

.field private static final NBORTIMESLOT:Ljava/lang/String; = "nbortimeslot"

.field private static final NBROFMEASUREMENTS:Ljava/lang/String; = "nbrofmeasurements"

.field private static final NEIGHBORIDENTITY:Ljava/lang/String; = "neighboridentity"

.field private static final NEIGHBORIDTYPE:Ljava/lang/String; = "neighboridtype"

.field private static final NEIGHBORIDUNION:Ljava/lang/String; = "neighboridunion"

.field private static final NOOFVALIDSETS:Ljava/lang/String; = "noofvalidsets"

.field private static final NUMOFMEASUREMENTS:Ljava/lang/String; = "numofmeasurements"

.field private static final OTDMEAS:Ljava/lang/String; = "otdmeas"

.field private static final OTDREL5PRESENT:Ljava/lang/String; = "otdrel5present"

.field private static final OTDREL98PRESENT:Ljava/lang/String; = "otdrel98present"

.field private static final OTDVALUE:Ljava/lang/String; = "otdvalue"

.field private static final REFERENCECI:Ljava/lang/String; = "referenceci"

.field private static final REFERENCELAC:Ljava/lang/String; = "referencelac"

.field private static final REFERENCETIMESLOT:Ljava/lang/String; = "referencetimeslot"

.field private static final REFFRAMENUMBER:Ljava/lang/String; = "refframenumber"

.field private static final REFQUALITY:Ljava/lang/String; = "refquality"

.field private static final REQUESTINDEX:Ljava/lang/String; = "requestindex"

.field private static final SETCOUNT:Ljava/lang/String; = "setcount"

.field private static final STDOFEOTD:Ljava/lang/String; = "stdofeotd"

.field private static final STDRESOLUTION:Ljava/lang/String; = "stdresolution"

.field private static final SYSTEMINFOINDEX:Ljava/lang/String; = "systeminfoindex"

.field private static final TACORRECTION:Ljava/lang/String; = "tacorrection"

.field private static final VALIDEOTDMEASUREMENT:Ljava/lang/String; = "valideotdmeasurement"


# instance fields
.field private eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

.field private eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

.field private eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

.field private iSetCount:I

.field private isEleRest:Z

.field private isMesare98:Z

.field private isMesarel5:Z

.field private isMsrelefirst:Z

.field private isNotValideotdMeasurement:Z

.field private isOTDMeas:Z

.field private isRequiredTag:Z

.field private means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

.field private otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

.field private quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

.field private stData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    .line 112
    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    .line 113
    iput v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->iSetCount:I

    .line 114
    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 115
    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    .line 116
    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 117
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    .line 118
    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    .line 119
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    .line 135
    invoke-direct {p0}, Lcom/android/supl/loc/measure/eotd/EOTDParser;->init()V

    .line 136
    return-void
.end method

.method private init()V
    .locals 7

    .line 139
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 140
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x0

    .line 141
    .local v1, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v2, 0x0

    .line 142
    .local v2, "xr":Lorg/xml/sax/XMLReader;
    const/4 v3, 0x0

    .line 144
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    move-object v1, v4

    .line 146
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    move-object v2, v4

    .line 148
    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/system/etc/gps/config/eotd.xml"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 153
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    nop

    .line 160
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

    .line 159
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 154
    :catch_0
    move-exception v4

    .line 155
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/data/gnss/eotd.xml"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 157
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 176
    :goto_1
    nop

    .line 178
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 182
    :goto_2
    goto :goto_4

    .line 179
    :catch_1
    move-exception v4

    .line 181
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 159
    :goto_3
    if-eqz v3, :cond_0

    .line 160
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

    .line 176
    :catchall_1
    move-exception v4

    goto :goto_5

    .line 172
    :catch_2
    move-exception v4

    .line 174
    .local v4, "e1":Lorg/xml/sax/SAXException;
    :try_start_6
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    .end local v4    # "e1":Lorg/xml/sax/SAXException;
    if-eqz v3, :cond_1

    .line 178
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 169
    :catch_3
    move-exception v4

    .line 171
    .local v4, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 176
    .end local v4    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz v3, :cond_1

    .line 178
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 166
    :catch_4
    move-exception v4

    .line 168
    .local v4, "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 176
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_1

    .line 178
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_2

    .line 163
    :catch_5
    move-exception v4

    .line 165
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 176
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 178
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    .line 186
    :cond_1
    :goto_4
    const/4 v0, 0x0

    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v2, 0x0

    .line 189
    return-void

    .line 176
    :goto_5
    if-eqz v3, :cond_2

    .line 178
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 182
    goto :goto_6

    .line 179
    :catch_6
    move-exception v5

    .line 181
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 182
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_6
    throw v4
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

    .line 486
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_0

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 493
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

    .line 295
    const-string v0, "valideotdmeasurement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 297
    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    .line 298
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    goto/16 :goto_b

    .line 300
    :cond_2
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    if-eqz v0, :cond_3

    .line 301
    return-void

    .line 302
    :cond_3
    const-string v0, "msrelefirst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    goto/16 :goto_b

    .line 304
    :cond_4
    const-string v0, "msrelecommon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 305
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_5

    .line 306
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto :goto_2

    .line 307
    :cond_5
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_6

    .line 308
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    .line 310
    :cond_6
    :goto_2
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto/16 :goto_b

    .line 311
    :cond_7
    const-string v0, "refframenumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->usRefFrameNumber:I

    goto/16 :goto_b

    .line 313
    :cond_8
    const-string v0, "referencetimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 314
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucReferenceTimeSlot:S

    goto/16 :goto_b

    .line 315
    :cond_9
    const-string v0, "refquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucRefQuality:S

    goto/16 :goto_b

    .line 317
    :cond_a
    const-string v0, "numofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucNumOfMeasurements:S

    goto/16 :goto_b

    .line 319
    :cond_b
    const-string v0, "stdresolution"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 320
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucStdResolution:S

    goto/16 :goto_b

    .line 321
    :cond_c
    const-string v0, "tacorrection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 322
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->usTACorrection:I

    goto/16 :goto_b

    .line 323
    :cond_d
    const-string v0, "msrelecommon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 324
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_e

    .line 325
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto :goto_3

    .line 326
    :cond_e
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v0, :cond_10

    .line 327
    :cond_f
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    .line 329
    :cond_10
    :goto_3
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto/16 :goto_b

    .line 330
    :cond_11
    const-string v0, "setcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 331
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_12

    .line 332
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    goto/16 :goto_b

    .line 333
    :cond_12
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_43

    .line 334
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    goto/16 :goto_b

    .line 336
    :cond_13
    const-string v0, "measwithid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 337
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_15

    .line 338
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    .line 341
    :cond_14
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 342
    :cond_15
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    if-eqz v0, :cond_17

    .line 343
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 344
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    .line 347
    :cond_16
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 348
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 349
    :cond_17
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-eqz v0, :cond_18

    .line 350
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-eqz v0, :cond_18

    .line 351
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityPresent:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 355
    :cond_18
    :goto_4
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    goto/16 :goto_b

    .line 356
    :cond_19
    const-string v0, "neighboridtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 357
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->enIdType:I

    goto/16 :goto_b

    .line 358
    :cond_1a
    const-string v0, "carrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 359
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 360
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->usCarrier:I

    goto/16 :goto_b

    .line 361
    :cond_1b
    const-string v0, "bsic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 362
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 363
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->cBsic:S

    goto/16 :goto_b

    .line 364
    :cond_1c
    const-string v0, "referencelac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 365
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 366
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->usReferenceLAC:S

    goto/16 :goto_b

    .line 367
    :cond_1d
    const-string v0, "referenceci"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 368
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 369
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->usReferenceCI:S

    goto/16 :goto_b

    .line 370
    :cond_1e
    const-string v0, "bcchcarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 371
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 372
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->usBCCHCarrier:I

    goto/16 :goto_b

    .line 373
    :cond_1f
    const-string v0, "multiframeoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 374
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 375
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->ucMultiFrameOffset:S

    goto/16 :goto_b

    .line 376
    :cond_20
    const-string v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 377
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    if-eqz v0, :cond_21

    .line 378
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 379
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->ucNborTimeSlot:S

    goto/16 :goto_b

    .line 381
    :cond_21
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->ucNborTimeSlot:S

    goto/16 :goto_b

    .line 383
    :cond_22
    const-string v0, "nbrofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 384
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->ucNbrOfMeasurements:S

    goto/16 :goto_b

    .line 385
    :cond_23
    const-string v0, "stdofeotd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 386
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->ucStdOfEOTD:S

    goto/16 :goto_b

    .line 387
    :cond_24
    const-string v0, "eotdquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 389
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    if-eqz v0, :cond_25

    .line 390
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    goto/16 :goto_b

    .line 392
    :cond_25
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    goto/16 :goto_b

    .line 394
    :cond_26
    const-string v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 395
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    if-eqz v0, :cond_27

    .line 396
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 397
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->usOTDValue:I

    goto/16 :goto_b

    .line 399
    :cond_27
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->usOTDValue:I

    goto/16 :goto_b

    .line 401
    :cond_28
    const-string v0, "msrelefirst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 402
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->iSetCount:I

    int-to-short v1, v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    goto/16 :goto_b

    .line 404
    :cond_29
    const-string v0, "noofvalidsets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 405
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    .line 406
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    if-lez v0, :cond_43

    .line 407
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    goto/16 :goto_b

    .line 410
    :cond_2a
    const-string v0, "msrelerest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 411
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_2b

    .line 412
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 414
    :cond_2b
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-eqz v0, :cond_2c

    .line 415
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_2c
    :goto_5
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    goto/16 :goto_b

    .line 420
    :cond_2d
    const-string v0, "msrofothersets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 421
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_2f

    .line 422
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    if-nez v0, :cond_2e

    .line 423
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    .line 426
    :cond_2e
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 427
    :cond_2f
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v0, :cond_31

    .line 428
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    if-nez v0, :cond_30

    .line 429
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    .line 431
    :cond_30
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_31
    :goto_6
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    goto/16 :goto_b

    .line 434
    :cond_32
    const-string v0, "isidentitypresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 435
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_33

    goto :goto_7

    :cond_33
    move v1, v2

    :goto_7
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    goto/16 :goto_b

    .line 436
    :cond_34
    const-string v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 437
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 438
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->ucNborTimeSlot:S

    goto/16 :goto_b

    .line 439
    :cond_35
    const-string v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 440
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 441
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->usOTDValue:I

    goto/16 :goto_b

    .line 442
    :cond_36
    const-string v0, "otdmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 443
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    .line 444
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    goto/16 :goto_b

    .line 446
    :cond_37
    const-string v0, "otdrel98present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 447
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_38

    goto :goto_8

    :cond_38
    move v1, v2

    :goto_8
    iput-boolean v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    .line 448
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    .line 449
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    if-eqz v0, :cond_43

    .line 450
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    goto/16 :goto_b

    .line 452
    :cond_39
    const-string v0, "measr98ext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 453
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    goto/16 :goto_b

    .line 454
    :cond_3a
    const-string v0, "count"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 455
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    if-eqz v0, :cond_3b

    .line 456
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 457
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    .line 458
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    goto/16 :goto_b

    .line 460
    :cond_3b
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-eqz v0, :cond_43

    .line 462
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 463
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->ucCount:S

    .line 464
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->ucCount:S

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    goto/16 :goto_b

    .line 467
    :cond_3c
    const-string v0, "otdrel5present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 468
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_3d

    move v3, v1

    goto :goto_9

    :cond_3d
    move v3, v2

    :goto_9
    iput-boolean v3, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    .line 469
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v0, :cond_3e

    .line 470
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v3, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    invoke-direct {v3}, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;-><init>()V

    iput-object v3, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    .line 472
    :cond_3e
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3f

    goto :goto_a

    :cond_3f
    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    goto :goto_b

    .line 473
    :cond_40
    const-string v0, "measrel5ext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 474
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    goto :goto_b

    .line 475
    :cond_41
    const-string v0, "requestindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 476
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 477
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ucRequestIndex:S

    goto :goto_b

    .line 478
    :cond_42
    const-string v0, "systeminfoindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 479
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 480
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ucSystemInfoIndex:S

    .line 482
    :cond_43
    :goto_b
    return-void
.end method

.method public getEotdMeasInfo()Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    return-object v0
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

    .line 195
    const-string v0, "valideotdmeasurement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 196
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 197
    :cond_0
    const-string v0, "eotdmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    goto/16 :goto_0

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    if-eqz v0, :cond_2

    .line 200
    return-void

    .line 201
    :cond_2
    const-string v0, "msrelefirst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v2, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;-><init>()V

    iput-object v2, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    .line 203
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    goto/16 :goto_0

    .line 204
    :cond_3
    const-string v0, "msrelecommon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto/16 :goto_0

    .line 206
    :cond_4
    const-string v0, "refframenumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 208
    :cond_5
    const-string v0, "referencetimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 210
    :cond_6
    const-string v0, "refquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 212
    :cond_7
    const-string v0, "numofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 213
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 214
    :cond_8
    const-string v0, "stdresolution"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 216
    :cond_9
    const-string v0, "tacorrection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 217
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 218
    :cond_a
    const-string v0, "setcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 220
    :cond_b
    const-string v0, "measwithid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 221
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    goto/16 :goto_0

    .line 222
    :cond_c
    const-string v0, "neighboridentity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    goto/16 :goto_0

    .line 224
    :cond_d
    const-string v0, "neighboridtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 225
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 226
    :cond_e
    const-string v0, "neighboridunion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 227
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    goto/16 :goto_0

    .line 228
    :cond_f
    const-string v0, "bsicandcarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 229
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    goto/16 :goto_0

    .line 230
    :cond_10
    const-string v0, "cellidandlac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 231
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/CellID_LAC;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    goto/16 :goto_0

    .line 232
    :cond_11
    const-string v0, "multiframecarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 233
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    goto/16 :goto_0

    .line 234
    :cond_12
    const-string v0, "requestindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 235
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 236
    :cond_13
    const-string v0, "referencelac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 237
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 238
    :cond_14
    const-string v0, "referenceci"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 239
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 240
    :cond_15
    const-string v0, "bcchcarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 241
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 242
    :cond_16
    const-string v0, "multiframeoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 243
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 244
    :cond_17
    const-string v0, "carrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 245
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 246
    :cond_18
    const-string v0, "bsic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 247
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 248
    :cond_19
    const-string v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 249
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 250
    :cond_1a
    const-string v0, "eotdquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 251
    new-instance v0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/EOTDQuality;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    goto/16 :goto_0

    .line 252
    :cond_1b
    const-string v0, "nbrofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 253
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 254
    :cond_1c
    const-string v0, "stdofeotd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 255
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 256
    :cond_1d
    const-string v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 257
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 258
    :cond_1e
    const-string v0, "noofvalidsets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 259
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 260
    :cond_1f
    const-string v0, "msrelerest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 261
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 262
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    goto/16 :goto_0

    .line 263
    :cond_20
    const-string v0, "msrofothersets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 264
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    goto/16 :goto_0

    .line 265
    :cond_21
    const-string v0, "isidentitypresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 266
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 267
    :cond_22
    const-string v0, "msrothersetsunion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 268
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    goto :goto_0

    .line 269
    :cond_23
    const-string v0, "otdmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 270
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-nez v0, :cond_2a

    .line 271
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    new-instance v2, Lcom/android/supl/loc/measure/eotd/OTDMeas;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/eotd/OTDMeas;-><init>()V

    iput-object v2, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    .line 272
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-nez v0, :cond_2a

    .line 273
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    goto :goto_0

    .line 276
    :cond_24
    const-string v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 277
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_0

    .line 278
    :cond_25
    const-string v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 279
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_0

    .line 280
    :cond_26
    const-string v0, "otdrel98present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 281
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_0

    .line 282
    :cond_27
    const-string v0, "count"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 283
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_0

    .line 284
    :cond_28
    const-string v0, "otdrel5present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 285
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_0

    .line 286
    :cond_29
    const-string v0, "systeminfoindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 287
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    .line 290
    :cond_2a
    :goto_0
    return-void
.end method
