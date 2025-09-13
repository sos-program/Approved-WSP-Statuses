# Approved WSP Statuses



This repository contains the WSP statuses that have been approved for use through collaborative review processes with local CU experts.



## Current list of approved CUs

<table>
<tr><th> Sockeye </th><th> Chinook </th><th> Coho </th></tr>
<tr><td valign="top">

| CU ID | CU Name | 
|--- | --- |
| SEL-01-01 | Osoyoos-Skaha-Okanagan |
| SEL-07-01 | Bowron_ES |
| SEL-06-11 | Seton_L |
| SEL-03-04 | Harrison_US_L |
| SEL-04-01 | Lillooet_Harr_L |
| SEL-03-03 | Harrison_DS_L |
| SEL-05-02 | Nahatlatch_ES |
| SEL-06-16 | Taseko_ES |
| SEL-03-01 | Chilliwack_ES |
| SEL-06-14 | Takla_Trembleur_EStu |
| SEL-06-01 | Anderson_Seton_ES |
| SEL-10-01 | Kamloops_ES |
| SEL-09-02 | Shuswap_ES |
| SEL-06-13 | Takla_Trembleur_Stuart_S |
| SEL-06-10 | Quesnel_S |
| SEL-09-03 | Shuswap_L |
| SEL-06-20 | Nadina_Francois_ES |
| SEL-10-03 | North_Barriere_ES |
| SEL-03-05 | Pitt_ES |
| SEL-06-03 | Chilko_S |
| SEL-06-02 | Chilko_ES |
| SEL-06-07 | Francois_Fraser_S |
| SEL-03-02 | Cultus_L |
| SER-02 | Widgeon_RiverType |
| SER-03 | Harrison_RiverType |

</td> <td valign="top">

|CU ID| CU Name | 
| --- | --- |
| CK-01 | Okanagan_1.x |
| CK-02 | Boundary Bay_FA_0.3 |
| CK-03	| Lower Fraser River_FA_0.3 |
| CK-04 | Lower Fraser River_SP_1.3 |
| CK-05 | Lower Fraser River-Upper Pitt_SU_1.3 |
| CK-06 | Lower Fraser River_SU_1.3 |
| CK-07 | Maria Slough_SU_0.3 |
| CK-08 | Middle Fraser-Fraser Canyon_SP_1.3 |
| CK-09 | Middle Fraser River-Portage_FA_1.3 |
| CK-10 | Middle Fraser River_SP_1.3 |
| CK-11 | Middle Fraser River_SU_1.3 |
| CK-12 | Upper Fraser River_SP_1.3 |
| CK-13 | South Thompson_SU_0.3 |
| CK-14 | South Thompson_SU_1.3 |
| CK-15 | Shuswap River_SU_0.3 |
| CK-16 | South Thompson-Bessette Creek_SU_1.2 |
| CK-17 | Lower Thompson_SP_1.2 |
| CK-18 | North Thompson_SP_1.3 |
| CK-19 | North Thompson_SU_1.3 |

</td> <td valign="top">

|CU ID| CU Name | 
| --- | --- |
| CO-04 | Lillooet |
| CO-05 | Fraser Canyon |
| CO-07 | Lower Thompson |
| CO-08 | South Thompson |
| CO-09 | North Thompson |
| CO-47 | Lower Fraser |
| CO-48 | Middle Fraser |

</td></tr> </table>


<table>
<tr><th> Chum </th><th> Pink </th></tr>
<tr><td valign="top">

| CU ID | CU Name | 
|--- | --- |
| CM-02 | Lower Fraser Chum |

</td> <td valign="top">

|CU ID| CU Name | 
| --- | --- |
| PKO-01 | Fraser Pink |

</td></tr> </table>


## Repository Contents

* DATA Folder:
  * CU_Data.csv contains all spawner and recruitment data for each CU
  * CU_PublishedIntegratedStatuses.csv contains previously completed integrated WSP statuses for relevant CUs
* SPECS Folder
  * CU_Metric_Specifications.csv contains metric settings used to tune metrics for each CU
  * CU_CyclicBM contains relative abundance metric benchmarks for cyclic CUs 
* CODE Folder
  * 1_Run_MetricsCalcs&RapidStatus.R calculates WSP metrics and applies the WSP decision tree for each CU 
* PROCESSING Folder
  * Contains various intermediary files documenting outputs at each sub-step run by the code 
* OUTPUT folder:
  * Retro_Synoptic_Details_Approved.csv contains calculated metrics and decision tree results
  * Dashboards visually present data, metrics, and statuses by CU
    


### Data 

WSP statuses are assessed using a composite time series of wild spawner abundances for each CU (SpnForAbd_Wild or SpnForTrend_Wild in CU_Data.csv depending on the metric being calculated). Two steps are required develop a composite time series from raw spawning site data: site selection, and data treatment. 

Sites are selected according to minimum data standards that identify suitable methods used to collect the data, and the necessary length of time series required for each site (see Appendix 5 in [Arbeider et al. (2020)](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-025-eng.pdf) ). Sites may need to be reconciled where data collection methods and resolution have changed over time. For example, if spawners at a particular site are estimated using visual surveys for the first half of the time series, then for the second half that site is aggregated with four other sites using a mark-recapture method, we need to ensure that there is consistency in the sites that are included in the composite estimates over time. 

Once sites are selected, data can be treated to remove hatchery contributions or to fill gaps in the site time series’ where appropriate. Guidelines for hatchery removals are found in [Withler et al. (2018)](https://waves-vagues.dfo-mpo.gc.ca/Library/40702285.pdf). Details on various gap-filling methods are found in Appendix 5 of [Grant et al. (2011)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/344553.pdf).

Fraser Sockeye, Chinook, and Interior Fraser Coho data were updated to 2023 using methods previously developed for WSP and COSEWIC status assessments ([Grant et al. 2011,](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/344553.pdf) [2020](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-038-eng.pdf); [DFO 2015](https://waves-vagues.dfo-mpo.gc.ca/Library/364851.pdf); [2016](https://waves-vagues.dfo-mpo.gc.ca/Library/40595419.pdf)), and also previously applied in the developement and evaluation of the WSP rapid status assessment methodology [(Pestal et al. 2023;](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf) [DFO 2024)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf).

Details on data preparation are provided in the following: 
* Fraser Chinook: [COSEWIC (2018)](https://wildlife-species.canada.ca/species-risk-registry/virtual_sara/files/cosewic/ChinookSalmon-v00-2019-Eng.pdf), [COSEWIC (2020)](https://publications.gc.ca/collections/collection_2021/eccc/CW69-14-469-2021-eng.pdf), and DFO (in review)
* Fraser Sockeye: [Grant et al. (2011)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/344553.pdf) and [Grant et al. (2020)](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-038-eng.pdf).
* Interior Fraser Coho: [Arbeider et al. (2020) Appendix 5](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-025-eng.pdf)

Coho CUs in the Lower Fraser River were not assessed for status and are considered data deficient. Spawning escapements in the Lower Fraser Coho CU have been assessed intermittently through visual surveys (Grant et al. 2007), though estimates have not been sufficiently maintained to conduct WSP status assessments. Escapements in the Lillooet Coho CU have been somewhat regularly assessed at one site – Birkenhead River, though the quality and length of this time series is not appropriate for WSP status assessments. Better quality escapement estimates for both the Lower Fraser and Lillooet Coho CUs are currently under development. However, these estimates will only be available for 2021 onwards; therefore this data set will not be appropriate for WSP status assessments for a number of years. 

Fraser Pink data were provided by the Pacific Salmon Commission for 1959 to 2023. Data are described in [Glaser et al. (2025)](https://publications.gc.ca/collections/collection_2025/mpo-dfo/fs70-5/Fs70-5-2024-063-eng.pdf). 

Details on data preparation for Fraser Chum are outlined in {SOS paper}. 



### Specs
Up to four key WSP metrics are calculated for each CU to determine status: absolute abundance, relative abundance, long-term trend, and short-term trend, or, percent change.

| Metric | Description |
|--------| -------------|
| Absolute Abundance |	Assesses the recent generation geometric average spawner abundance (not smoothed) against thresholds. Usually only used when absolute abundance data are available representing the total number of spawners in the CU. |
| Relative Abundance |	Assesses the recent generation geometric average spawner abundance (not smoothed) against relative abundance benchmarks estimated using stock-recruit relationships or freshwater habitat models. CU-specific benchmarks are provided by DFO Stock Assessment.|
| Long-term Trend |	Compares the (geometric) average spawner abundance in the current generation to the long-term (geometric) average. |
| Short-term Trend (percent change)	| Estimates the linear change in total spawner abundances over the most recent three generations, or ten years for species with short generation lengths (i.e. Fraser Pink). |


The four key WSP metrics are described in detail in [Pestal et al. (2023)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf). 
Each metric is calculated only where it is considered appropriate by CU experts, given the data available for the CU and their expert knowledge. Along with selecting which metrics are appropriate for each CU, experts also select metrics settings, which include inputs like the average generation length, and options like log-transforming or smoothing data as part of the metric calculation.

Metric applicability and settings are provided in CU_Metric_Specifications.csv. This file also contains metric benchmarks, including CU-specific relative abundance benchmarks provided by DFO Stock Assessment where appropriate.

### Code
Contains an R script that installs the WSPMetrics Package (Holt et al. 2025), calculates metrics for each CU according to the specifications provided in the spec file, applies the WSP status decision tree, and generates a csv file containing results and status dashboards.





