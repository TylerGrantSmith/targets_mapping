library(targets)

source(here::here("R/B.r"))

C0_targets <-
  list(
    # This will error because of the name conflict
    tarchetypes::tar_map(
      list(times = c(1,2)),

      B_targets,
      tar_target(write_text, writeLines(text, paste0(times, format)))
    )
  )
