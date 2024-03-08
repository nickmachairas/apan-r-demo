require('RPostgres')

drv <- Postgres()

con <- dbConnect(
  drv, dbname = 'r_demo',
  host = 'localhost', port = 5432,
  user = 'postgres', password = '123'
)

#query_stmt = "SELECT * FROM student;"

#df <- dbGetQuery(con, query_stmt)
#print(df)

#create_stmt = "
#CREATE TABLE sales (
#  id int,
#  prd_name varchar(100) NOT NULL,
#  price numeric(6,2) NOT NULL,
#  PRIMARY KEY (id)
#);
#"

#dbSendStatement(con, create_stmt)

# df <- read.csv('MOCK_DATA.csv')

# dbWriteTable(con, 'sales', df, row.names=FALSE, append=TRUE)

print(dbGetQuery(con, 'SELECT * FROM sales'))

dbDisconnect(con)
dbUnloadDriver(drv)
