.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_NeighModeSpecMeas.java"


# instance fields
.field public stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

.field public stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeighModeSpecMeas()[B
    .locals 2

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "bData":[B
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->getModeSpecMeasFDD()[B

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->getMDSpecINF_TDD()[B

    move-result-object v0

    .line 55
    :cond_1
    :goto_0
    return-object v0
.end method
