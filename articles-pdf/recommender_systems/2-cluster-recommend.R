

rm(list = ls())

library(recommenderlab)

# define-data -------------------------------------------------------------

connection_string <- "Driver=SQL Server;Server=.;Database=movies;Uid=usernam;password"
sql_movies <- RxSqlServerData(connectionString = connection_string,
                              table = "movies")
sql_clust_users <- RxSqlServerData(connectionString = connection_string,
                              table = "sql_clust_users")


# rxDataStep("sql_ratings.xdf", "sql_movies.xdf", overwrite = TRUE,
#            transformFunc = function(list_in) {
#              list_in[-1] <- lapply(list_in[-1], function(x) as.numeric(x > 0))
#              list_in
#              # browser()
#            })
sql_movies <- RxXdfData("sql_movies.xdf")
sql_clust_users <- RxXdfData("sql_clust_users.xdf")
# View(head(sql_movies))



# cluster the users -------------------------------------------------------

# define the formula
cols_movies <- names(sql_movies)[-1]
string_users <- paste(cols_movies, collapse = " + ")
formula_users <- formula(paste("~", string_users))

# build the hierachical clustering model
cor_users <- rxCor(formula_users, sql_movies,
                   rowsPerRead = 5e02)
dist_users <- as.dist(1 - abs(cor_users))
model_hc <- hclust(dist_users, method = "complete")
which_cluster <- cutree(model_hc, k = 100)
var_clusters <- sort(unique(which_cluster))

# group the users into clusters
clusterCols <- function(list_in) {
  
  # define a field for each cluster
  list_out <- lapply(var_clusters, function(this_cluster) {
    these_cols <- names(which_cluster[which_cluster == this_cluster])
    df_cols <- data.frame(list_in[these_cols])
    rowSums(df_cols) > 0
  })
  
  names(list_out) <- paste0("clust", var_clusters)
  # for each movie, count the number of clusers having watched it
  df_views <- data.frame(list_out)
  list_out$n_views <- rowSums(df_views)
  
  # add the movie ID
  list_out$MovieId <- list_in$MovieId
  
  list_out
}

rxDataStep(
  inData = sql_movies,
  outFile = sql_clust_users,
  overwrite = TRUE,
  transformFunc = clusterCols,
  transformObjects = list(var_clusters = var_clusters,
                          which_cluster = which_cluster))

dim(sql_clust_users)



# cluster the movies ------------------------------------------------------

cols_km <- names(sql_clust_users)
feat_km <- paste(cols_km, collapse = " + ")
formula_km <- formula(paste("~", feat_km))
model_km <- rxKmeans(formula_km, sql_clust_users,
                     numClusters = 20)
model_km$centers
df_movies <- ifelse(model_km$centers[, -1] > 0.1, 1, 0)
df_movies[1:10, 1:6]




# # split-data --------------------------------------------------------------
# 
# n_clusters <- ncol(df_movies)
# cluster_train <- sample(colnames(df_movies), n_clusters * 0.8)
# cluster_test <- setdiff(colnames(df_movies), cluster_train)
# 
# recc_data_train <- df_movies[, cluster_train] %>%
#   t() %>%
#   as("realRatingMatrix")
# 
# recc_data_test <- df_movies[, cluster_test] %>%
#   t() %>%
#   as("realRatingMatrix")



# build-model -------------------------------------------------------------

rrm_movies <- as(df_movies, "realRatingMatrix")

recc_model <- recommenderlab::Recommender(
  data = rrm_movies,
  method = "IBCF",
  parameter = list(k = 30))

image(recc_model@model$sim[1:10, 1:10],
      main = "Heatmap of the first rows and columns")



## ------------------------------------------------------------------------
list_recc <- lapply(recc_model@model$items, function(x){
  colnames(recc_data_train)[x]
})
list_recc


