test_that("fish_distribution_works", {
  library(tidyverse)
  fish_data = as.data.frame(cbind(x=c("salmon", "tuna", "shark", "salmon", "salmon", "tuna")))
  expect_equal(fish_distribution(fish_data)$"Rarest Fish", "shark")
  expect_equal(fish_distribution(fish_data)$"Total Fish", 6)
  expect_equal(fish_distribution(fish_data)$"Most Common Fish", "salmon")
  })
