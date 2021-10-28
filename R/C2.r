library(targets)

source(here::here("R/B.r"))

C2_targets <-
  list(
    tarchetypes::tar_map(
      list(times = c(1,2)),
      B_targets,
      # add an override to allow me to redefine `times`
      override = TRUE
    )
  )

