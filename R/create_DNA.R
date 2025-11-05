# Function 1
#' Create a random DNA sequence of a given length.
#'
#' @param n Length of DNA sequence to be generated.
#'
#' @returns Returns a randomly generated DNA sequence of a given length.
#' @export
#'
#' @examples
create_DNA <- function(n){
  dirty_DNA_seq <- sample(c("A", "T", "G", "C"), size = n, replace = TRUE)
  DNA_seq <- paste0(dirty_DNA_seq, collapse = "")
  return(DNA_seq)
}
