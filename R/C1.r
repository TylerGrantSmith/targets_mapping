library(targets)

source(here::here("R/B.r"))

C1_targets <-
  list(
    tarchetypes::tar_map(
      list(times = c(1,2)),

      # I have to manually exclude the `times` target as it is defined in A.r
      # and brought into B.r so that there are no conflicts. This requires knowing
      # the position of the element in the list, which is not ideal.

      B_targets[[1]],
      tar_target(write_text, writeLines(text, paste0(times, format)))
    )
  )

