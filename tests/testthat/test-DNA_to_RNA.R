test_that("DNA_to_RNA() works correctly", {
  set.seed(123)  # for reproducibility
  DNA <- "GGACGGATAT"
  RNA <- DNA_to_RNA(DNA)

  # Test output type
  expect_type(RNA, "character")

  # Test valid characters
  expect_true(all(strsplit(RNA, "")[[1]] %in% c("A", "U", "G", "C")))

  # Test that different calls produce the same sequence
  RNA2 <- DNA_to_RNA(DNA)
  expect_equal(RNA, RNA2)

  # Test that Ts are correctly converted to Us
  expect_equal(DNA_to_RNA("TTTT"), "UUUU")

  # Test that no unintended substitutions happen
  expect_equal(DNA_to_RNA("ACGC"), "ACGC")

})
