library(testthat)
library(Nature)


source("R/lightening_probability.R")

test_that("Probability frequency will return an error if lightening sample is zero", {
  expect_error(lightening_sample(0))
})
