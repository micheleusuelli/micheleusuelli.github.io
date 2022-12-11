

# set-up-environment ------------------------------------------------------

# define the parameters
sql_par <- list(
  Driver = "SQL Server",
  Server = ".",
  Database = "testiris",
  Uid = "username",
  Pwd = "password"
)

# build the connection string
sql_connect <- paste(names(sql_par), unlist(sql_par), 
                     sep = "=", collapse = ";")

# define the MRS data source
table_iris <- "iris"
sql_iris <- RxSqlServerData(connectionString = sql_connect,
                            table = table_iris)

# import the data
names(iris) <- gsub("[.]", "_", names(iris))
rxDataStep(iris, sql_iris, overwrite = TRUE)

# set-up RODBC
# install.packages("RODBC")
library(RODBC)
channel <- RODBC::odbcDriverConnect(sql_connect)



# explore-data ------------------------------------------------------------

# MRS info
rxGetVarInfo(sql_iris)

# MRS summary
rxSummary(~ ., sql_iris)

# Sql query
RODBC::sqlQuery(channel, "select count(*) from iris")

# SQL group-by
query_sql <- "select %s, avg(%s) as avg_sl from iris group by %s"
col_group <- "Species"
col_value <- "Sepal_Length"
query_sql <- sprintf(query_sql, col_group, col_value, col_group)
df_avg_value <- RODBC::sqlQuery(channel, query_sql)
df_avg_value



# process-data ------------------------------------------------------------

# process using MRS
table_iris_2 <- "iris2"
sql_iris_2 <- RxSqlServerData(connectionString = sql_connect,
                            table = table_iris_2x)
rxDataStep(inData = sql_iris, 
           outFile = sql_iris_2, 
           transforms = list(Sepal.Size = Sepal.Length * Sepal.Width),
           overwrite = TRUE)
rxGetVarInfo(sql_iris_2)

# join in SQL
table_avg_value <- "avg_value"
sql_avg_value <- RxSqlServerData(connectionString = sql_connect,
                                 table = table_avg_value)
rxDataStep(df_avg_value, sql_avg_value, overwrite = TRUE)
query_join <- "select * from iris
                left join avg_value
                on iris.Species = avg_value.Species"
df_join <- RODBC::sqlQuery(channel, query_join)
head(df_join)

# build a MRS predictive model
model_lm <- rxLinMod(formula = Petal_Length ~ Sepal_Length + Petal_Width,
                     data = sql_iris)
summary(model_lm)

