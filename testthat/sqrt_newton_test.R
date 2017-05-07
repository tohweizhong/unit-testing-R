# sqrt_newton_test.R
# Example from: http://www.brodrigues.co/fput/unit-testing.html#actually-running-your-tests

library(testthat)

test_that("Test sqrt_newton: positive numeric",{
  expected <- 2
  actual <- sqrt_newton(4, 1)
  expect_equal(expected, actual)
})

test_that("Test sqrt_newton: positive numeric",{
  eps <- 0.001
  expected <- 2
  actual <- sqrt_newton(4, 1, eps = eps)
  expect_lt(abs(expected - actual), eps)
})

test_that("Test sqrt_newton: negative numeric",{
  expect_error(sqrt_newton(-4, 1))
})
