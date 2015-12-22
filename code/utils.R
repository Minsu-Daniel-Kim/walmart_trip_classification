mode <- function(items, index) {
  
  names(sort(table(items),decreasing=TRUE)[index])
}