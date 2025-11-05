test_that("find_codons() works correctly", {
  # Basic test
  seq <- "ATGCGATTA"
  codons <- find_codons(seq)

  # Output should be a character vector
  expect_type(codons, "character")

  # Expected codons for this sequence
  expect_equal(codons, c("ATG", "CGA", "TTA"))

  # Test with different start position
  codons2 <- find_codons(seq, start = 2)
  expect_equal(codons2, c("TGC", "GAT"))

  # Sequence length not multiple of 3 (e.g., 10 bases)
  seq2 <- "ATGCGATTAA"
  codons3 <- find_codons(seq2)
  # Should return codons until the last full triplet
  expect_equal(codons3, c("ATG", "CGA", "TTA"))

})
