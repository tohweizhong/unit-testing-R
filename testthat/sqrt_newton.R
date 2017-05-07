# sqrt_newton.R
# Example from: http://www.brodrigues.co/fput/unit-testing.html#actually-running-your-tests

#install.packages("testthat")
#library(testthat)

# Newton's algorithm
sqrt_newton <- function(a, init, eps = 0.01){
  while(abs(init**2 - a) > eps){
    init <- 1/2 *(init + a/init)
  }
  return(init)
}

sqrt_newton(4, 1)
