# Script to run through the main steps of the workflow

# Use Ctrl-Enter to run one line of code at a time
# Use Ctrl-A to highlight whole script and then click "Run" above to run all the steps
# Adjust True/False settings below as needed

# Settings
install.package <- TRUE # if TRUE, install the latest version of the R package
#new.readme <- TRUE # if TRUE, generate a basic Readme file template.
#new.quarto <- TRUE # if TRUE, generate a basic quarto file template that can be used to render word, html, or pdf files
# IMPORTANT: if new.readme or new.quarto are TRUE, these will be generated and overwrite
#              any edits made to earlier versions of the template


# Install the WSPMetrics package
if(install.package){
require("devtools") # check for and, if needed, install the devtools package
library(devtools) # Load the devtools package.
install_github("SOLV-CODE/WSP-Metrics-Pkg", dependencies = TRUE, build_vignettes = FALSE)
library(WSPMetrics)
citation("WSPMetrics")
}



# load packages

require(tidyverse)
library(WSPMetrics)

metrics.out <- calculateMetricsByCU(cu.file = read_csv("DATA/CU_Data.csv"),
                                                    cu.info = read_csv("SPECS/CU_Metric_Specifications.csv")     ,
                                                    cyclic.cu.bm = read_csv("SPECS/CU_CyclicBM.csv"),
                                                    retro.start.use = 1995,
                                                    out.label = "Approved",
                                                    out.filepath = "PROCESSING")



rapid.status.input <- prepDataForRapidStatus(
                                            cu.info = metrics.out$Specs,
                                            metrics.raw = metrics.out$Metrics,
                                            gen.avg.src = metrics.out$GenAvg,
                                            out.label = "Approved",
                                            out.filepath = "PROCESSING")


rapid.status.results <- generateRapidStatus(cu.info = metrics.out$Specs,
                                            cu.data = metrics.out$Data,
                                            publ.status.src = read_csv("DATA/CU_PublishedIntegratedStatuses.csv"),
                                            retro.values = rapid.status.input$Values,
                                            retro.status = rapid.status.input$Status,
                                            metrics.long = rapid.status.input$LongForm,
                                            group.var = "Species",
                                            out.label = "Approved",
                                            out.filepath = "OUTPUT")


plotStatusDashboards(
                    cu.info =  metrics.out$Specs,
                    retro.summary.tbl = rapid.status.results$SummaryTable,
                    cu.data = metrics.out$Data,
                    out.label = "WSPStatusOut",
                    out.filepath = "OUTPUT/Dashboards")




