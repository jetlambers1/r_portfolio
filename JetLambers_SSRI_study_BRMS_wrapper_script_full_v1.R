rm(list=ls())

library(rmarkdown)

if (!dir.exists("reports/pGo")) {
  dir.create("reports/pGo")
}
setwd("/project/2424182.03/analysis/robot_task/jet/Statistics/Models")
getwd()

Sys.setenv(RSTUDIO_PANDOC="/opt/rstudio/2024.04.1/resources/app/bin/quarto/bin/tools/x86_64")

.libPaths(c('/home/control/jetlam/R/x86_64-pc-linux-gnu-library/4.3', .libPaths()))

brmsmodels <- as.numeric(Sys.getenv("SLURM_ARRAY_TASK_ID")) # get brmsmodels information from slurm job

# Version
ver <- "v4"

groups <- c("all") # "adaptive", "all", 

for (subgroup in groups){
  inputfile <- paste0("JL_BRMS_models_",ver,".Rmd") 
  outfile <- paste0("JL_BRMS_models_",ver,"_", subgroup, "_", brmsmodels, ".html")
  ftitle <- paste0("JL_BRMS_full_models_",ver,"_", subgroup, "_BRMS_model", brmsmodels)
  rmarkdown::render(input = inputfile, 
                    output_file = outfile,
                    output_dir = "reports/pGo/",
                    params = list(render_title = ftitle, group = subgroup, computer = "VNC", models2run = brmsmodels),
                    clean = TRUE) # = FALSE to prevent cleaning of intermediate files
}

groups <- c("all")
for (subgroup in groups){
  #ver <- "v2"
  inputfile <- paste0("JL_BRMS_models_",ver,".Rmd")
  outfile <- paste0("JL_BRMS_models_",ver,"_", subgroup, "_", brmsmodels, ".html")
  figure_folder <- sub("\\.html$", "_files/figure-html", outfile)
  figure_folder <- file.path(getwd(), figure_folder)
  if (dir.exists(figure_folder)){
    unlink(figure_folder, recursive = TRUE, force = TRUE)
  }
}


cat("End.\n")


