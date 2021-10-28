library(targets)

source(here::here("R/A.r"))

B_targets <-
  list(
    A_targets,
    tar_target(write_text, writeLines(text, paste0(times, ".txt")))
  )
