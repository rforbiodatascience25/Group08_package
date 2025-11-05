# Function 4
#' Translate codons into amino acids
#'
#' @param codons
#'
#' @returns
#' @export
#'
#' @examples
translate_codons <- function(codons){
  translated_codons <- paste0(codon_table[codons], collapse = "")
  return(translated_codons)
}
