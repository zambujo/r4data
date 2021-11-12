#!/usr/bin/env Rscript
input_dir <- here::here()
output_dir <- here::here("docs")

rmarkdown::render(
  "../notebook/gather.Rmd",
  output_format = "md_document",
  output_file = "gather.md",
  output_dir = output_dir,
  knit_root_dir = input_dir,
  quiet = FALSE
)
