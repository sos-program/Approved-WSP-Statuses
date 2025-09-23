# Approved CUs

Fraser Sockeye, Chinook, and Interior Fraser Coho data were updated to 2023 using methods previously developed for WSP and COSEWIC status assessments ([Grant et al. 2011,](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/344553.pdf) [2020](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-038-eng.pdf); [DFO 2015](https://waves-vagues.dfo-mpo.gc.ca/Library/364851.pdf); [2016](https://waves-vagues.dfo-mpo.gc.ca/Library/40595419.pdf)), and also previously applied in the development and evaluation of the WSP rapid status assessment methodology [(Pestal et al. 2023;](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf) [DFO 2024)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf).

Details on data preparation are provided in the following: 
* Fraser Chinook: [COSEWIC (2018)](https://wildlife-species.canada.ca/species-risk-registry/virtual_sara/files/cosewic/ChinookSalmon-v00-2019-Eng.pdf), [COSEWIC (2020)](https://publications.gc.ca/collections/collection_2021/eccc/CW69-14-469-2021-eng.pdf), and DFO (in review)
* Fraser Sockeye: [Grant et al. (2011)](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/344553.pdf) and [Grant et al. (2020)](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-038-eng.pdf).
* Interior Fraser Coho: [Arbeider et al. (2020) Appendix 5](https://publications.gc.ca/collections/collection_2020/mpo-dfo/fs70-5/Fs70-5-2020-025-eng.pdf)

Coho CUs in the Lower Fraser River were not assessed for status and are considered data deficient. Spawning escapements in the Lower Fraser Coho CU have been assessed intermittently through visual surveys (Grant et al. 2007), though estimates have not been sufficiently maintained to conduct WSP status assessments. Escapements in the Lillooet Coho CU have been somewhat regularly assessed at one site – Birkenhead River, though the quality and length of this time series is not appropriate for WSP status assessments. Better quality escapement estimates for both the Lower Fraser and Lillooet Coho CUs are currently under development. However, these estimates will only be available for 2021 onwards; therefore this data set will not be appropriate for WSP status assessments for a number of years. 

Fraser Pink data were provided by the Pacific Salmon Commission for 1959 to 2023. Data are described in [Glaser et al. (2025)](https://publications.gc.ca/collections/collection_2025/mpo-dfo/fs70-5/Fs70-5-2024-063-eng.pdf). 

Details on data preparation for Fraser Chum are outlined in {SOS paper}. 

# Data fields in CU_Data.csv

### CU_Data.csv is the main data file that is updated annually in order to update statuses.

| Variable Name | Description | 
|--- | --- |
| CU_ID | Unique and standardized identifier for each Pacific salmon Conservation Unit (CU)  |
| CU_Name | Full offical CU name |
| Species | Species of salmon |
| Year | Escapement year |
| SpnForAbd_Total | Total spawner abundance that can be used to calculate abundance-based WSP metrics (*relative abundance* and *absolute abundance*) |
| SpnForTrend_Total | Total spawner abundance that can be used to calculate trend-based WSP metrics (*long-term trend* and *percent change*) |
| SpnForAbd_Wild | Wild spawner abundance that can be used to calculate abundance-based WSP metrics (*relative abundance* and *absolute abundance*) |
| SpnForTrend_Wild | Wild spawner abundance that can be used to calculate trend-based WSP metrics (*long-term trend* and *percent change*) |
| Recruits_Wild | Wild recruitment from the spawner brood year |
| Recruits_Total | Total recruitment from the spawner brood year |
