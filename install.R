`%>%` <- magrittr::`%>%`
usethis::ui_info("updating data ....")
usethis::ui_done("deploy site ...")

people <- readr::read_csv(here("data", "people.csv")) #  p3 people data on r4d
institute_numbers <- people %>%
  dplyr::filter(!is.na(institute_id_p3)) %>%
  dplyr::distinct(institute_id_p3) %>%
  dplyr::pull(institute_id_p3)

here::here("Rmd", "explore.Rmd") %>%
  rmarkdown::render(
    output_format = "flexdashboard::flex_dashboard",
    output_file = "index.html",
    output_dir = here::here("docs"),
    quiet = FALSE
  )

render_location <- function(x) {
  here::here("Rmd", "explore.Rmd") %>%
    rmarkdown::render(
      output_format = "flexdashboard::flex_dashboard",
      output_file = glue::glue("{x}.html"),
      output_dir = here::here("docs"),
      quiet = FALSE,
      params = list(inst_id = x)
    )
}

purrr::walk(institute_numbers, render_location)
