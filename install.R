`%>%` <- magrittr::`%>%`
usethis::ui_info("updating data ....")

usethis::ui_done("deploy site ...")
here::here("Rmd", "explore.Rmd") %>%
  rmarkdown::render(
    output_format = "flexdashboard::flex_dashboard",
    output_file = "index.html",
    output_dir = here::here("docs"),
    quiet = FALSE
  )
