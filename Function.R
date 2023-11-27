##function
# input -> f() -> output

x <- c(10,25,50,100)
sum(x)
mean(x)
sd(x)

## create our first function: function()

greeting <- function() {
  print("Hello world!")
}
greeting ## เทียบเท่า =Textformula()ใน excel
greeting()

greeting_name <- function(name) {
  print(paste("Hello!", name))
}

Func <- function() {
  greeting()
  greeting_name("Hall")
}
Func
Func()

## Parameter and Argument
#Parameter = named input e.g. name, age 
#Argument = Actual value ใส่ใน parameter e.g. "Hall", 25
greeting_name <- function(name = "Hall", age = 25) {
  print(paste("Hello!", name))
  print(paste("Age:", age))
} 

##Add_two_nums() function
add_two_nums <- function(val1, val2){
  val1+val2
} ##return (val1+val2) หรือ val1+val2 ก็ได้ optional

##cube() function
cube <- function(base,power=3){
  base ** power
}

##count_ball() function
balls <- c("red", "green", "blue", "green", "green", "red")

count_ball <- function(balls, color) {
  sum(balls == color)
}
count_ball(balls, "red")
count_ball(balls, "green")
count_ball(balls, "blue")

##loop in data.frame
data() #Built-in dataset ที่ DA ใช้กันเยอะมาก
USArrests # ตัวอย่าง dataset
class(USArrests)
View(USArrests)

mean(USArrests$Murder)
mean(USArrests$Rape) #เขียนทุกอันเป็นร้อยคงไม่ไหว

nrow(USArrests)
ncol(USArrests)
head(USArrests)

for(i in 1:ncol(USArrests)) {
  print(names(USArrests)[i])
  print(mean(USArrests[[i]]))
} #loop over function

#Generic function
cal_mean_by_col <- function(df) {
  for (i in 1:ncol(df)) {
    print(names(df[i]))
    print(mean(df[[i]]))
  }
}
cal_mean_by_col(USArrests)

View(mtcars)
cal_mean_by_col(mtcars)

##Refractory Output -> Readability
cal_mean_by_col <- function(df){
  col_names <- names(df)
  
  # [[]] use to extract column as vector
  for (i in 1:ncol(df)){
    avg_col <- mean(df[[i]])
    print(paste(col_names[i], ":", avg_col))
  }
}
cal_mean_by_col(mtcars)

## apply() อ่านเพิ่มเติมที่ https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/apply

# Margin = 1: By row, Margin = 2: By column
apply(mtcars, MARGIN = 2, mean)
avg_by_row_mtcars <- apply(mtcars, MARGIN = 1, mean)
avg_by_row_mtcars[1:10] #Filter 1-10 row
View(mtcars)

apply(mtcars, MARGIN = 2, sum)
apply(mtcars, MARGIN = 2, median)
