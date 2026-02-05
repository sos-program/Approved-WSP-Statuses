# Approved WSP Statuses



This repository contains the WSP statuses for Pacific salmon Conservation Units that have been approved for use through collaborative review processes with local CU experts. For background on WSP status assessments and the WSP status assessment process, see the [State of the Salmon Github.io Site](https://sos-program.github.io/)

Approved statuses release for DFO State of the Salmon Program 2026. <i>State of the salmon - The Fraser River: Using data collected through 2023</i>.
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18498157.svg)](https://doi.org/10.5281/zenodo.18498157)

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

</td></tr> 
</table>

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

</td></tr> 
</table>


## Repository Contents

* **DATA Folder**:
  * *CU_Data.csv* contains all spawner and recruitment data for each CU
  * *CU_PublishedIntegratedStatuses.csv* contains previously completed integrated WSP statuses for relevant CUs
  * Details below
* **SPECS Folder**:
  * *CU_Metric_Specifications.csv* contains metric settings used to tune metrics for each CU
  * *CU_CyclicBM.csv* contains relative abundance metric benchmarks for cyclic CUs
  * Details below 
* **CODE Folder**:
  * *1_Run_MetricsCalcs&RapidStatus.R* calculates WSP metrics and applies the WSP decision tree for each CU
  * Details below
* **PROCESSING Folder**:
  * Contains various files that document outputs at each sub-step run by the code 
* **OUTPUT Folder**:
  * *Retrospective_RapidStatus_Results_Approved.csv* contains calculated metrics and decision tree results
  * *Dashboards* visually present data, metrics, and statuses by CU
  * *Narratives* that were reviewed during collaborative review processes for 2023 statuses   


### Data 

WSP statuses are assessed using a composite time series of wild spawner abundances for each CU (SpnForAbd_Wild or SpnForTrend_Wild in CU_Data.csv depending on the metric being calculated). Two steps are required develop a composite time series from raw spawning site data: site selection, and data treatment. 

Sites are selected according to minimum data standards that identify suitable methods used to collect the data, and the necessary length of time series required for each site (see Appendix 5 in [Arbeider et al. (2020)](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-025-eng.pdf) ). Sites may need to be reconciled where data collection methods and resolution have changed over time. For example, if spawners at a particular site are estimated using visual surveys for the first half of the time series, then for the second half that site is aggregated with four other sites using a mark-recapture method, we need to ensure that there is consistency in the sites that are included in the composite estimates over time. 

Once sites are selected, data can be treated to remove hatchery contributions or to fill gaps in the site time series’ where appropriate. Guidelines for hatchery removals are found in [Withler et al. (2018)](https://waves-vagues.dfo-mpo.gc.ca/Library/40702285.pdf). Details on various gap-filling methods are found in Appendix 5 of [Grant et al. (2011)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/344553.pdf).

See [Data folder](https://github.com/BronwynMacDonald/Approved-WSP-Statuses/tree/master/DATA) for further information on the approved data sets. 

### Specifications (Specs Folder)
Up to four key WSP metrics are calculated for each CU to determine status: absolute abundance, relative abundance, long-term trend, and short-term trend, or, percent change.

| Metric | Description |
|--------| -------------|
| Absolute Abundance |	Assesses the recent generation geometric average spawner abundance (not smoothed) against thresholds. Usually only used when absolute abundance data are available representing the total number of spawners in the CU. |
| Relative Abundance |	Assesses the recent generation geometric average spawner abundance (not smoothed) against relative abundance benchmarks estimated using stock-recruit relationships or freshwater habitat models. CU-specific benchmarks are provided by DFO Stock Assessment.|
| Long-term Trend |	Compares the (geometric) average spawner abundance in the current generation to the long-term (geometric) average. |
| Short-term Trend (percent change)	| Estimates the linear change in total spawner abundances over the most recent three generations, or ten years for species with short generation lengths (i.e. Fraser Pink). |


The four key WSP metrics are described in detail in [Pestal et al. (2023)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf). 
Each metric is calculated only where considered appropriate by CU experts, given the data available for the CU and their expert knowledge. Generally, if the data available for a CU captures the total abundance (absolute abundance data), all four metrics will be considered applicable. Alternatively, if the data are an index of the total abundance (relative index data), the absolute abundance metric will not be calculated apart from in a few specific cases where it is deemed appropriate by the CU experts.
Use of the relative abundance metric depends on the availability of appropriate benchmarks for each CU. These are provided by DFO Stock Assessment where they are applicable.  

Along with selecting which metrics are appropriate, experts also select metrics settings. These include inputs like the average generation length, and options like log-transforming or smoothing data as part of the metric calculation. Metric applicability and settings are provided in *CU_Metric_Specifications.csv*. This file also contains metric benchmarks, including CU-specific benchmarks for the relative abundance metric. Settings are described [here](https://github.com/BronwynMacDonald/Approved-WSP-Statuses/tree/master/SPECS). For more details on metric setting see the documentation of the [*WSPMetrics package*](https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg). 


### Code
Contains an R script that performs the following steps:
* installs the *WSPMetrics* Package (Holt et al. 2025);
* runs functions from the *WSPMetrics* package to calculate metrics for each CU according to the specifications and benchmarks provided in *CU_Metric_Specifications.csv*;
* applies the WSP status decision tree (also a function in *WSPMetrics*); and,
* generates status dashboards and the file *Retro_Synoptic_Details_Approved.csv* containing metric and status results.


#### WSP Rapid Status Decision Tree

The rapid status decision tree (see image below) evaluates and combines the WSP metrics through a series of steps, depending on their availability and values for each CU. The decision tree consists of a series of Yes/No questions that ask if metrics are available and, if so, compare metric values to thresholds. Thresholds were derived from previously completed WSP status assessments and represent how Pacific salmon experts interpreted the metrics in practice, and in combination with each other to determine statuses. See [Pestal et al. (2023)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf) for further explanation.   

The path, or branch, taken by each CU for each assessment year depends on which metrics are available, and the values of those metrics in comparison to the thresholds. Each branch leads to a status assignment and a confidence rating for that status. Confidence ratings of low, medium, or high are associated with the metrics used to assign each status. The absolute and relative abundance metrics are associated with greater confidence in the statuses being assigned than statuses that are determined using only trends in abundances (short and long term trend). See [Pestal et al. (2023)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf) for details.  

| Metric | Thresholds |
|--------| -------------|
| Absolute Abundance |	Node 1: 1,500 spawners; Node 2: 10,000 spawners |
| Relative Abundance |	Nodes 9 & 11: relative abundance metric lower benchmark; Node 18: relative abundance metric upper benchmark PLUS a 10% buffer |
| Long-term Trend |	Nodes 8 & 10:  long-term trend < 79%; Node 32: long-term trend < 233% |
| Short-term Trend (percent change)	| Node 16:  short-term trend  < 70% decline |



WSP rapid statuses are iteratively reviewed by species experts through collaborative processes where experts evaluate metric settings and results from the decision tree until final status results are approved by all participants. Comments and concerns expressed by CU experts during the review processes are documented in CU narratives.  

The WSP rapid status decision tree is fully documented in [Pestal et al. (2023)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf) and [DFO (2024)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf). 

![WSP Rapid Status Decision Tree](https://github.com/BronwynMacDonald/Approved-WSP-Statuses/blob/master/Rapid%20status%20algorithm%20infographic%20(full%20algorithm).png)





