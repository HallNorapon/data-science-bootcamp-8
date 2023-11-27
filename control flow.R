## Control flow

## =IF() in google sheet
score <- 92

if (score >= 80) {
  print("Passed")
} else {
  print("Failed")
}

if(score >= 90){
  print("Passed")
} else if (score >= 50){
  print ("OK")
} else {
  print("Enroll again!")
}

## IFELSE() in google sheet
ifelse(score >= 80, "Passed", "Failed")

ifelse(score >= 90, "Passed", ifelse( 
  score >= 50, "OK", "Enroll Again!"))

##for loop
friends <- c("Hall", "Min", "Max", "Mew")

for (friend in friends) {
  print(friend)
}  ##for (loop: สร้างตัวแปร in database)

for (friend in friends) {
  print(paste ("Hi!", friend))
} ## for loop ใช้น้อยมากเพราะ code R รันแบบ Vectorization

## vectorization
paste ("Hi!", friends) 
nums <- c(5,10,12,20,25)
nums <- nums +2 ##แทนที่ตัวชุดข้อมูลเดิม
(nums <- nums +2) ##ใส่ () เมื่อกดรันสามารถปริ้นข้อมูลได้เลย ไม่เหมือนกับไม่มีวงเล็บ (บรรทัดบน)

##While loop
count <- 0

while (count < 5) {
  print("Hi!")
}  ## infinite loop จะ print "Hi!" ไม่หยุด ไม่ควรทำ

while (count < 5) {
  print("Hi!")
  count <- count +1
} ## print "Hi!" ตามจำนวนที่กำหนดใน count โดยต้องอัพเดตตัวแปร count ใน While loop
