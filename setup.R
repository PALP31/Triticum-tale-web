# Project setup script: install and load core packages.

cran_packages <- c("tidyverse", "plotly", "ggiraph")
bioc_packages <- c("DESeq2", "mixOmics")

install_if_missing <- function(pkgs, installer) {
  missing <- pkgs[!vapply(pkgs, requireNamespace, logical(1), quietly = TRUE)]
  if (length(missing) > 0) installer(missing)
}

install_if_missing(
  cran_packages,
  function(pkgs) install.packages(pkgs, repos = "https://cloud.r-project.org")
)

if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager", repos = "https://cloud.r-project.org")
}

install_if_missing(
  bioc_packages,
  function(pkgs) BiocManager::install(pkgs, ask = FALSE, update = FALSE)
)

all_packages <- c(cran_packages, bioc_packages)
for (pkg in all_packages) {
  suppressPackageStartupMessages(library(pkg, character.only = TRUE))
}

message("Environment ready: ", paste(all_packages, collapse = ", "))
