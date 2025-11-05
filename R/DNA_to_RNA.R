# Function 2
#' Turn a DNA sequence to an RNA sequence (exchange T to U).
#'
#' @param sequence string of a DNA sequence.
#'
#' @returns Returns an RNA sequence from a DNA sequence.
#' @export
#'
#' @examples
DNA_to_RNA <- function(sequence){
  RNA_seq <- gsub("T", "U", sequence)
  return(RNA_seq)
}
