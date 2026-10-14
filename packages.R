setup <- function(){
  needed <- c(
    "MASS", "RColorBrewer", "caret", "data.table", "discrim", "dplyr", 
    "geosphere", "ggh4x", "ggmap", "ggpattern", "ggplot2", "ggpubr", "ggrepel", 
    "ggspatial", "ggtext", "ggthemes", "googleway", "gt", "gtsummary", "here", 
    "janitor", "kernlab", "kknn", "knitr",  "lattice", "mapdata", "maps", 
    "melbourne", "naivebayes", "openxlsx", "pals", "pROC", "purrr",  "ranger", 
    "readxl", "reshape2", "rnaturalearth", "rnaturalearthdata", "rstatix", 
    "scales", "sf", "stacks", "stringr", "targets", "tidygeocoder", 
    "tidymodels", "tidyr", "tidyverse", "workflowsets", "vip", "xgboost"
  )
  for(package in needed){
    if(!sum(installed.packages() %in% package)){
      install.packages(package)
    }
    
    require(package, character.only = TRUE)
  }
}

setup()
