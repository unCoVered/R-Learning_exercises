## R course: Seventh lesson

library(RODBC)


## Exercise 7.1

connStr <- paste(
  "driver={SQL Server}",
  "server=msedxeus.database.windows.net",
  "database=DAT209x01",
  "uid=RLogin",
  "pwd=P@ssw0rd",
  sep=";"
)

conn <- odbcDriverConnect(connStr)

sqlTables(conn, tableType = "TABLE")

sqlColumns(conn,"bi.sentiment")[c("COLUMN_NAME","TYPE_NAME")]



## Exercise 7.2

my.data.frame<- sqlQuery(conn,
                         "SELECT AVG(Score),Date
                          FROM bi.sentiment
                          WHERE State='WA'
                          GROUP BY Date"
)

names(my.data.frame)<-c("Average Score","Date")
my.data.frame



## Lab