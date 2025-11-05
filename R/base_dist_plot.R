# Function 5
#' Generate base distribution plot
#'
#' @param bases
#'
#' @returns
#' @export
#'
#' @examples
base_dist_plot <- function(bases){
  find_unique_bases <- bases |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(find_unique_bases, function(amino_acid) stringr::str_count(string = bases, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["bases"]] <- rownames(counts)

  DNA_base_dist_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = bases, y = Counts, fill = bases)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(DNA_base_dist_plot)
}
