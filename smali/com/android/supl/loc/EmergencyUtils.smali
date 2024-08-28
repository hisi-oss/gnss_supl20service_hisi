.class public Lcom/android/supl/loc/EmergencyUtils;
.super Ljava/lang/Object;
.source "EmergencyUtils.java"


# static fields
.field public static NUMBER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    .line 39
    const-string v0, "15"

    const-string v1, "14"

    const-string v2, "16"

    const-string v3, "17"

    const-string v4, "18"

    const-string v5, "19"

    const-string v6, "011"

    const-string v7, "022"

    const-string v8, "033"

    const-string v9, "019"

    const-string v10, "000"

    const-string v11, "066"

    const-string v12, "065"

    const-string v13, "068"

    const-string v14, "100"

    const-string v15, "101"

    const-string v16, "102"

    const-string v17, "103"

    const-string v18, "105"

    const-string v19, "107"

    const-string v20, "108"

    const-string v21, "111"

    const-string v22, "110"

    const-string v23, "112"

    const-string v24, "113"

    const-string v25, "114"

    const-string v26, "115"

    const-string v27, "116"

    const-string v28, "117"

    const-string v29, "118"

    const-string v30, "119"

    const-string v31, "120"

    const-string v32, "122"

    const-string v33, "123"

    const-string v34, "124"

    const-string v35, "125"

    const-string v36, "127"

    const-string v37, "128"

    const-string v38, "129"

    const-string v39, "133"

    const-string v40, "132"

    const-string v41, "131"

    const-string v42, "140"

    const-string v43, "155"

    const-string v44, "156"

    const-string v45, "171"

    const-string v46, "177"

    const-string v47, "175"

    const-string v48, "180"

    const-string v49, "190"

    const-string v50, "191"

    const-string v51, "192"

    const-string v52, "193"

    const-string v53, "197"

    const-string v54, "198"

    const-string v55, "199"

    const-string v56, "211"

    const-string v57, "311"

    const-string v58, "511"

    const-string v59, "991"

    const-string v60, "993"

    const-string v61, "994"

    const-string v62, "995"

    const-string v63, "997"

    const-string v64, "998"

    const-string v65, "999"

    const-string v66, "901"

    const-string v67, "902"

    const-string v68, "903"

    const-string v69, "911"

    const-string v70, "990"

    const-string v71, "912"

    const-string v72, "913"

    const-string v73, "10111"

    const-string v74, "10177"

    const-string v75, "1298"

    const-string v76, "1122"

    const-string v77, "1669"

    const-string v78, "9170"

    const-string v79, "2611"

    filled-new-array/range {v0 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/supl/loc/EmergencyUtils;->NUMBER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "stOutNumber"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "isEmergency":Z
    if-nez p0, :cond_0

    .line 55
    return v0

    .line 60
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/supl/loc/EmergencyUtils;->NUMBER:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 61
    .local v4, "stNumber":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_1

    .line 60
    .end local v4    # "stNumber":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    goto :goto_2

    .line 66
    :catch_0
    move-exception v1

    .line 70
    :goto_2
    return v0
.end method
