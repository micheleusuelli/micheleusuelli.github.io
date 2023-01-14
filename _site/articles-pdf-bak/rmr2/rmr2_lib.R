
library(data.table)

keyval <- function(key, val){
  list(key = key, val = val)
}

mapreduce <- function(
  input,
  map,
  reduce,
  chunk_size = 10
) {
  
  # prepare the input
  if(is(input, "data.frame")){
    table_input <- data.table(input)
    table_input[, chunk := floor(seq(1, .N) / chunk_size)]
    table_map <- table_input[
      ,
      map(NULL, data.frame(.SD, stringsAsFactors = FALSE)),
      by = chunk]
    
  } else if(is(input, "list")){
    
    map_outputs <- lapply(input, function(input_el){
      map(input_el$key, input_el$val)
    })
    # shuffle
    list_to_shuffle <- lapply(map_outputs, function(map_el){
      data.frame(map_el, stringsAsFactors = FALSE)
    })
    table_map <- data.table(do.call(rbind, list_to_shuffle))
  }
  
  # reduce
  table_reduce <- table_map[, reduce(key, val), by = key]
  keyval(table_reduce[, key], table_reduce[, val])
  
}