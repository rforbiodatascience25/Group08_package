test_that("translate_codons() works correctly", {
  # Load codon_table from your package data
  data("codon_table", package = "centraldog")

  # Example codons (must exist in your codon_table)
  codons <- c("AUG", "UUU", "GCU", "UAA")

  # Expected translation — adjust to your actual codon_table values if needed
  result <- translate_codons(codons)
  expect_equal(result, "MFA_")

  # Single codon test
  expect_equal(translate_codons("AUG"), "M")

  # Empty vector should return empty string
  expect_equal(translate_codons(character(0)), "")

})
