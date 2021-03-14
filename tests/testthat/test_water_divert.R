test_that("water_divert_works", {
  expect_equal(water_divert(diversion = 0), 0)
  expect_equal(water_divert(diversion = 1), 396.6)
  expect_lenght(water_divert(diversions = c(1:3)), 3)
})
