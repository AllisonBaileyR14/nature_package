library(testthat)
library(Nature)

test_check("Nature")



#### Test lightening probability error.

source("R/lightening_probability.R")

test_that("Probability frequency will return an error if lightening sample is zero", {
  expect_error(lightening_sample(0))
})

##### END OF TEST ON LIGHTENING_PROBABILITY
