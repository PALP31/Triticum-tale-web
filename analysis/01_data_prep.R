# -----------------------------------------------------------------------------
# 01_data_prep.R
# Purpose: Starter template for preparing multi-omic input data (e.g., RNA-Seq
# counts) with tidyverse before downstream modeling in DESeq2 or mixOmics.
# -----------------------------------------------------------------------------

# 1) Load core wrangling packages ------------------------------------------------
# Use tidyverse for import, cleaning, reshaping, joins, and QA summaries.
library(tidyverse)

# 2) Define project paths --------------------------------------------------------
# Keep immutable inputs in analysis/data/raw and cleaned outputs in
# analysis/data/processed to preserve reproducibility.
raw_dir <- "analysis/data/raw"
processed_dir <- "analysis/data/processed"

# 3) Import raw data -------------------------------------------------------------
# Typical inputs:
# - count matrix (genes/features x samples)
# - sample metadata (sample IDs, condition, batch, replicate, timepoint, etc.)
# Replace filenames below with your study-specific files.
# counts_raw <- readr::read_csv(file.path(raw_dir, "rna_counts.csv"))
# metadata_raw <- readr::read_csv(file.path(raw_dir, "sample_metadata.csv"))

# 4) Standardize identifiers and data types -------------------------------------
# Recommended checks before integration:
# - ensure sample IDs are unique and consistently formatted
# - convert categorical fields to factors with explicit level order
# - trim whitespace, harmonize naming conventions, and remove duplicate rows
# metadata <- metadata_raw %>%
#   mutate(sample_id = stringr::str_trim(sample_id)) %>%
#   distinct(sample_id, .keep_all = TRUE)

# 5) Quality control and exploratory summaries ----------------------------------
# Generate quick diagnostics to detect obvious issues:
# - missing values by field
# - distribution of library sizes / total counts per sample
# - outlier samples or inconsistent experimental labels
# Example: metadata %>% summarise(across(everything(), ~ sum(is.na(.x))))

# 6) Prepare expression matrix for downstream tools ------------------------------
# For RNA-Seq workflows, preserve raw integer counts for DESeq2.
# Optional tidyverse pre-filtering may remove low-information features
# (e.g., genes with very low counts across nearly all samples).
# counts_filtered <- counts_raw %>%
#   filter(if_any(-gene_id, ~ .x >= 10))

# 7) Normalize/transform for exploratory integration tasks -----------------------
# Depending on downstream goals, prepare transformed views for EDA/integration:
# - CPM/TPM-style scaling for exploratory plots
# - log transformation with pseudocount for variance stabilization in visuals
# Keep transformation rules explicit and versioned for reproducibility.

# 8) Align counts and metadata ---------------------------------------------------
# Ensure sample ordering and membership match exactly between matrix columns and
# metadata rows before handing off to DESeq2 or mixOmics inputs.
# stopifnot(all(colnames(count_matrix) %in% metadata$sample_id))

# 9) Export processed artifacts --------------------------------------------------
# Save cleaned metadata and analysis-ready tables to analysis/data/processed.
# Suggested outputs:
# - processed counts matrix
# - curated metadata table
# - optional QC summary tables used by reports
# readr::write_csv(metadata, file.path(processed_dir, "sample_metadata_clean.csv"))

# 10) Hand-off note --------------------------------------------------------------
# Next scripts can construct:
# - DESeq2::DESeqDataSetFromMatrix(...) for differential expression
# - mixOmics-compatible matrices (X blocks + response/factor vectors)
# from the processed files created here.
