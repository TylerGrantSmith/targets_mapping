library(targets)

A_targets <-
  list(
    tar_target(times, 1),
    tar_target(text, strrep("x", times))
  )
