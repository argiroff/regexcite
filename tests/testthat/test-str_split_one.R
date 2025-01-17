test_that("str_split_one() splits a string", {
  expect_equal(str_split_one("a,b,c", pattern = ","), c("a", "b", "c"))
})

test_that("str_split_one() errors if input length > 1", {
  expect_error(str_split_one(c("a,b", "c,d"), pattern = ","))
})

test_that("str_split_one() exposes features of stringr::str_split()", {
  expect_equal(str_split_one("a,b,c", pattern = ",", n = 2), c("a", "b,c"))
  expect_equal(str_split_one("a.b", pattern = stringr::fixed(".")), c("a", "b"))
})
