library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2[theo]', host = 'localhost')
dbListTables(con)
myQuery<- "select * from Book1;"
df <- dbGetQuery(con, myQuery)

library(dplyr)
df<- filter(df, Gender=="L")
print(df)
