if (!requireNamespace("pak", quietly = TRUE)) install.packages("pak")

setup <- function(){
  needed <- c(
    "caret", "cowplot", "data.table", "discrim", "dplyr", "geosphere",
    "ggh4x", "ggmap", "ggpattern", "ggplot2", "ggpubr", "ggrepel",
    "ggspatial", "ggtext", "ggthemes", "googleway", "gt", "gtsummary",
    "here", "Hmisc", "janitor", "kernlab", "kknn", "knitr", "lattice",
    "magick", "mapdata", "maps", "MASS", "dionnecargy/melbourne",
    "naivebayes", "openxlsx", "pals", "pROC", "purrr", "ranger",
    "readxl", "reshape2", "rnaturalearth", "rnaturalearthdata",
    "rstatix", "scales", "sf", "stacks", "stringr", "targets",
    "tidygeocoder", "tidymodels", "tidyr", "tidyverse",
    "workflowsets", "xgboost"
  )
  pak::pak(needed)

  # vip was archived from CRAN on 2026-07-08; pin to the last CRAN release
  if (!requireNamespace("vip", quietly = TRUE) || packageVersion("vip") != "0.4.1") {
    install.packages(
      "https://cran.r-project.org/src/contrib/Archive/vip/vip_0.4.1.tar.gz",
      repos = NULL, type = "source"
    )
  }

  pkgs <- c(gsub(".*/", "", needed), "vip")
  invisible(lapply(pkgs, require, character.only = TRUE))
}

setup()
