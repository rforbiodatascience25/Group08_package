test_that("create_DNA() works correctly", {
  set.seed(123)  # for reproducibility
  seq <- create_DNA(10)

  # Test output type
  expect_type(seq, "character")

  # Test output length
  expect_equal(nchar(seq), 10)

  # Test valid characters
  expect_true(all(strsplit(seq, "")[[1]] %in% c("A", "T", "G", "C")))

  # Test that different calls produce different sequences (most of the time)
  seq2 <- create_DNA(10)
  expect_false(identical(seq, seq2))

  # n = 0 should return an empty string
  expect_equal(create_DNA(0), "")

  # n = 1 should return one valid base
  seq1 <- create_DNA(1)
  expect_true(seq1 %in% c("A", "T", "G", "C"))

  # Negative n should return an error
  expect_error(create_DNA(-5))
})
