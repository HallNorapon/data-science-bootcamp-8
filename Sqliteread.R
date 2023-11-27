## load RSQlite

library(RSQLite)

##connect to SQLite database (.db file)
# 1. open connection: สร้างตัวแปร object conn+ dbConnect()
conn <- dbConnect(SQLite(), "chinook.db")

# 2. get data
dbListTables(conn) #Table
dbListFields(conn, "customers") #column

df1 <- dbGetQuery(conn, "select * from customers limit 5")
df2 <- dbGetQuery(conn, "select * from customers where country = 'United Kingdom'")

# 3. close connection
dbDisconnect(conn)

## save data
#save.image(file = "data.Rdata"): Save Environment
#load(file = "data.Rdata") : Load environment
#saveRDS(business, file = ""business.rds): save single object
#