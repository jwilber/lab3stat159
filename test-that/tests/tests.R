setwd("~/Desktop/stat159/lab3stat159/test-that")

library(testthat)
x <- c(1, 2, 3, 4, 5)
y <- c(1, 2, 3, 4, NA)
z <- c(TRUE, FALSE, TRUE)
w <- letters[1:5]


# load the source code of the functions to be tested
source("~/Desktop/stat159/lab3stat159/test-that/functions/range-value.R")
# context with one test that groups expectations
context("Test for range value") 
test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})

test_file("~/Desktop/stat159/lab3stat159/test-that/tests/tests.R")

# Your Turn
test_that("range works as expected for y", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(y), NA)
  expect_length(range_value(y), 1)
  expect_type(range_value(y), 'NA_real_')
})

test_that("range works as expected for z", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})


test_that("range works as expected for w", {
  w <- letters[1:5]
  
  expect_error(range_value(w), w)
})



source("~/Desktop/stat159/lab3stat159/test-that/functions/missing-values.R")
# -------------------------
# Missing Values
context("Test for missing values") 
test_that("missing values function works", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_gt(missing_values(y), 1)
  expect_length(missing_values(y), 1)
  expect_type(missing_values(y), 'double')
})


# update range

# New test for y

test_that("range works as expected for y", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(y), 3)
  expect_length(range_value(y), 1)
  expect_type(range_value(y), 'double')
})
