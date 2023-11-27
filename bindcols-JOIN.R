##bind_cols() != Join

df1 <- data.frame(
  id = 1:5,
  name = c("J", "M", "A", "D", "L")
)

## rep() = replicate: ซ้ำกันตามจำนวนที่ระบุ
df2 <- data.frame(
  id = 1:5, #เพิ่มมาในการทำ LeftJoin
  city = c(rep("BKK",3), rep("London", 2)),
  country = c(rep("TH",3), rep("UK",2))
)

bind_cols(df1,df2)
bind_cols(df2,df1)
left_join(df1, df2, by="id")
## JOIN ต้องมี key ในการ merge แต่ bind_cols ไม่ต้อง
