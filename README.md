# PvSEM Manuscript
Source code used to develop the machine learning algorithm and associated code relating to the manuscript submitted to Cell Reports Medicine. 

## Viewing the files in this repository

### Repository structure

- `*.qmd` — Quarto documents containing the analysis code and narrative:
  - `single_antigen.qmd`: single-antigen models
  - `ml_compare.qmd`: comparison of machine learning algorithms
  - `rand_forest.qmd`: development and evaluation of the random forest algorithm
  - `cross_reactivity.qmd`: cross-reactivity models
- `packages.R`: script to install and load all required R packages
- `data/`: input data (CSV)
- `model/`: fitted model objects and resampling results (`.rds`)
- `results/`: model performance metrics, ROC curves values, and threshold values (CSV)

### How to view each file type

**Quarto documents (`.qmd`)**
These are plain-text documents and can be read directly on GitHub or in any text editor. To run and render them (e.g., to HTML), open them in [RStudio](https://posit.co/download/rstudio-desktop/) or [Positron](https://positron.posit.co/) and use the *Render* button, or from the command line:

```sh
quarto render rand_forest.qmd
```

First run `packages.R` to install the required packages:

```r
source("packages.R")
```

**CSV files (`data/`, `results/`)**
Open with any spreadsheet application (Excel, Google Sheets) or a text editor, or read into R:

```r
read.csv("results/rand_forest_results.csv")
```

**R data files (`model/*.rds`)**
These are serialized R objects. Load them in R:

```r
model <- readRDS("model/PvSeroTaTmodel.rds")
```

### Requirements

R (version 4.x) with the packages listed in `packages.R`, and [Quarto](https://quarto.org/docs/get-started/) for rendering the `.qmd` documents.
