test_that("thinning_works", {
  expect_equal(thinning(plots=5, original=215),0)
  expect_equal(thinning(plots=0),"Not enough plots, more than 0 plots needed")
  expect_true((thinning(plots=7) >thinning(plots=4)))
  expect_length(thinning(plots=45), 1)
})
