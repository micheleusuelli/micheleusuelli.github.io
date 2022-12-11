

# @knitr prepare-data -----------------------------------------------------
print(getwd())
source("rmr2_lib.R")
vector_lines <- readLines("../R OOP/R and OOP methods 06.txt")
input_val <- list(vector_lines[1:10], vector_lines[1:10 + 10])
input <- lapply(input_val, function(val){
  keyval(NULL, data.frame(val, stringsAsFactors = FALSE))
})



# @knitr word-count-map ---------------------------------------------------
map_word_count <- function(., v) {
  words_by_row <- lapply(v[, 1], strsplit, split = " ")
  words_by_row <- lapply(words_by_row, "[[", 1)
  words_tot <- do.call("c", words_by_row)
  table_words <- table(words_tot)
  keyval(names(table_words), as.vector(table_words))
}


# @knitr word-count-reduce ------------------------------------------------

reduce_count <- function(k, v) {
  # browser()
  count_tot <- sum(v)
  if(count_tot > 10){
    keyval(k, count_tot)
  }else{
    NULL
  }
}


# @knitr iris-map ---------------------------------------------------------
map_iris_count <- function(., v) {
  table_species <- table(v[, "Species"])
  keyval(names(table_species), as.vector(table_species))
}



# @knitr word-count -------------------------------------------------------
mr_output <- mapreduce(input = input,
                       map = map_word_count,
                       reduce = reduce_count)
data.frame(mr_output)


# @knitr iris -------------------------------------------------------------
mr_output <- mapreduce(input = iris,
                       map = map_iris_count,
                       reduce = reduce_count)
data.frame(mr_output)



