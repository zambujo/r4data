#!/usr/bin/env Rscript
input_dir <- here::here()
output_dir <- here::here("docs")

usethis::ui_done("render page ...")
  rmarkdown::render(
    "../notebook/explore.Rmd",
    output_format = "flexdashboard::flex_dashboard",
    output_file = "index.html",
    output_dir = output_dir,
    knit_root_dir = input_dir,
    quiet = FALSE
  )
