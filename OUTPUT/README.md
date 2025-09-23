# WSP Status Outputs

[Retro_Synoptic_Details_Approved.csv] contains the escapement data, annual metric values, and statuses for each approved CU.

[Dashboards] are image files that graphically display annual WSP metric values and statuses. Each dashboard has four top panels in a 2X2 grid, and a bottom panel. 
- The top panels show the four standard WSP metrics (relative abundance, absolute abundance, long term trend & percent change), calculated based on the available time series of spawner abundances for each CU. 
- The bottom panel summarizes the "status" for each of the four individual metrics (i.e. they are categorized into red, amber or green zones based on the annual metric value in relation to the WSP metric benchmarks).
  The fifth row shows the WSP rapid status for the CU with a confidence rating. If integrated WSP status assessments have been completed for this CU, they are shown on the last row (IntStatus). 

**Note that metric benchmarks may differ from algorithm thresholds since thresholds approximate the status determination process from past WSP integrated status assessments**

Algorithm thresholds are described below.

### Retro_Synoptic_Details_Approved.csv Data Fields

| Variable | Description |
| ---------| ----------- |
| CU_ID |                                                                                                                                    
Species
Stock
DataType
Year
SpnForAbd_Wild
SpnForTrend_Wild
RelLBM
AbsLBM
LongTrend
PercChange
ProbDeclBelowLBM
Percentile
RelUBM
AbsUBM
NumStdMetrics
Value
IntStatusRaw
IntStatusRaw_Short
IntStatus_Short
RapidStatus
BinLabel
BinPath
RapidScore
RelLBMCat
AbsLBMCat
LongTrendCat
PercChangeCat
ProbDeclBelowLBMCat
PercentileCat
RelUBMCat
AbsUBMCat
RelAbdCat
AbsAbdCat
RelAbd_LBM
RelAbd_UBM
SpnForAbd_Total
SpnForTrend_Total
ConfidenceRating5
ConfidenceRating3
ConfidenceRating2
IntStatus5
IntStatus3
IntStatus2
