# WSP Status Outputs

[Retro_Synoptic_Details_Approved.csv](https://github.com/BronwynMacDonald/Approved-WSP-Statuses/blob/master/OUTPUT/Retro_Synoptic_Details_Approved.csv) contains the escapement data, annual metric values, and statuses for each approved CU.

[Dashboards](https://github.com/BronwynMacDonald/Approved-WSP-Statuses/tree/master/OUTPUT/Dashboards) are image files that graphically display annual WSP metric values and statuses. Each dashboard has four top panels in a 2X2 grid, and a bottom panel. 
- The top panels show the four standard WSP metrics (relative abundance, absolute abundance, long term trend & percent change), calculated based on the available time series of spawner abundances for each CU. Shaded backgrounds (red, amber, green) delineate the metric status zones according to the WSP metric benchmarks, where they are applicable. 
- The bottom panel summarizes the "status" for each of the four individual metrics (i.e. they are categorized into red, amber or green zones based on the annual metric value in relation to the WSP metric benchmarks).
  The fifth row shows the WSP rapid status for the CU with a confidence rating. If integrated WSP status assessments have been completed for this CU, they are shown on the last row (IntStatus). 
**Note that metric benchmarks may differ from algorithm thresholds since thresholds approximate the status determination process from past WSP integrated status assessments**

[Narratives](https://github.com/BronwynMacDonald/Approved-WSP-Statuses/tree/master/OUTPUT/Narratives) are also known as Limit Reference Point and WSP rapid status summaries. These are prepared during rapid status assessment review processes with experts. Each covers a Stock Management Unit, which is a fisheries management aggregation that consists of one or more CUs. Narratives document the data and data preparation methods used in the rapid status assessment of each CU, including relative abundance metric benchmarks. They also document WSP statuses, the logic for each status assignment according to the WSP decision tree, and any additional comments or concerns that were raised by experts during the review processes.  


### Retrospective_RapidStatus_Results_Approved.csv Data Fields 

| Variable | Description |
| ---------| ----------- |
| CU_ID | Unique and standardized identifier for each Pacific salmon Conservation Unit (CU) |                                                                                                                               
| Species | 	Species of salmon |
| Stock | Full CU name |
| DataType | Data type, either Absolute Abundance (AbsAbd) or Relative Index (RelIdx) |  
| Year | Escapement year |
| SpnForAbd_Wild | Wild spawner abundance that can be used to calculate abundance-based WSP metrics (*relative abundance* and *absolute abundance*) |
| SpnForTrend_Wild | Wild spawner abundance that can be used to calculate trend-based WSP metrics (*long-term trend* and *percent change*) |
| RelLBM | Ratio of the recent average spawner abundance to the relative abundance metric lower benchmark (where available) |
| AbsLBM | Ratio of the recent average spawner abundance to the absolute abundance metric lower benchmark |
| LongTrend | Longer term trend metric value |
| PercChange | Percent change metric value |
| ProbDeclBelowLBM | Not currently in use |
| Percentile | Not used (NA) |
| RelUBM | Ratio of the recent average spawner abundance to the relative abundance metric upper benchmark (where available) |
| AbsUBM | Ratio of the recent average spawner abundance to the absolute abundance metric upper benchmark |
| GenAvgSpnForAbd | Generational average |
| IntStatusRaw | Integrated Status |
| IntStatusRaw_Short | NA |
| IntStatus_Short | NA |
| RapidStatus | WSP rapid status |
| BinLabel |  End node of the WSP rapid status decision tree that determined the rapid status |
| BinPath | WSP decision tree pathway that led to the end node (BinLabel) and rapid status |
| RapidScore | NA |
| LongTrendCat | Long term trend metric status |
| PercChangeCat | Percent change metric status |
| ProbDeclBelowLBMCat | NA |
| PercentileCat | NA | 
| RelAbdCat | Relative abundance metric status |
| AbsAbdCat | Absolute abundance metric status |
| RelAbd_LBM | Relative abundance metric lower benchmark |  
| RelAbd_UBM | Relative abundance metric lower benchmark |
| SpnForAbd_Total | Total spawner abundance that can be used to calculate abundance-based WSP metrics (*relative abundance* and *absolute abundance*) |
| SpnForTrend_Total | Total spawner abundance that can be used to calculate trend-based WSP metrics (*long-term trend* and *percent change*) |
| ConfidenceRating | Status confidence rating |
| IntStatus5 | to be removed |
| IntStatus3 | to be removed |
| IntStatus2 | to be removed |
