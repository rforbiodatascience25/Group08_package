# Function 3
#' Find codons from an RNA sequence
#'
#' @param sequence RNA sequence from which the codons will be found.
#' @param start Reading frame start position default set to 1.
#'
#' @returns
#' @export
#'
#' @examples
find_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_length, by = 3))
  return(codons)
}
