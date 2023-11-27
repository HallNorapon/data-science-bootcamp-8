##ดึงข้อมูล Readxl : Excel
result <- list()

for (i in 1:3) {
  result[[i]] <- read_excel("students.xlsx", sheet = i)
}

result
result[[1]]
result[[2]]
result[[3]]

##ดึงข้อมูลจาก google sheet: library(googlesheets4)
#ใส่ url <- link google sheet
#public google sheet: gs4_deauth() หากมีลิ้งหรือสามารถ access ได้เลย
#read_sheet(url, sheet = ) ตามsheetที่ต้องการ

## bind_rows == SQL UNION ALL: ต้องเปิด dplyr ก่อน
library (dplyr)
library(readxl)

bind_rows(econ,business,data)

