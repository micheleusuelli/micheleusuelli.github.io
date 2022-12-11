# terminal_args <- c("-a", "1", 2, 3, "-c", 4, "-d", "-e", 7, "f")
library("argparser")

p <- arg.parser("A test program")
p <- add.argument(parser = p, arg = "--a", help = "test argument")
argv <- parse.args(parser = p, commandArgs()[-(1:5)])
print(argv)


# print(commandArgs())
# 
# readTerminalArgs <- function () {
#   terminal_args <- commandArgs()[-(1:5)]
#   if(length(terminal_args) == 0) return(list())
#   names_args <- c("", terminal_args[-length(terminal_args)])
#   names_args[!grepl("^-", names_args)] <- ""
#   names(terminal_args) <- gsub("^-", "", names_args)
#   terminal_args <- terminal_args[grepl("^[^-]", terminal_args)]
#   as.list(terminal_args)
# }
# list_args <- readTerminalArgs()
# print(list_args)
# # do.call(what = list_args[[1]], args = list_args[-1])
