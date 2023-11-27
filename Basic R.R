## create variables
income <- 50000
expense <- 30000
Saving <- income - expense

## remove variables
rm(Saving)

##compare values
1 + 1 == 2
2 * 2 <= 4
5 >= 10
5 - 2 != 3 ## not equal
10 < 2
10 > 2

##compare texts/characters
"Hello" == "hello" ##R programming: Case sensitive

##Data type

## 1. numeric
age <- 32
print(age)
class(age)

## 2. character
my_name <- 'Hall'
my_university <- 'KMUTT'
print(my_name)
print(my_university)
class(my_name); class(my_university)

## 3. logical
result <- 1 + 1 == 2
print(result)
class(result)

## 4. factor: STAT; จัดการตัวแปรแบบกลุ่ม เช่น gender, animal types
animal <- c("Dog", "cat", "cat", "Hippo")  ##Vector=Array
class(animal)
animal <- factor(animal) ##เขียนทับ Obj เดิมได้เลย
class(animal)

## 5. date/time
time_now <- Sys.time() ##sys.time 
class(time_now)

## covert data type

## main functions
## as.numeric()
## as.character()
## as.character()
## as.logical()

x <- 100
class(x)

x<- as.character(x) ##convert numeric -> character
char_x

x <- as.numeric(x)  ##convert character -> numeric
num_x

##logical: TRUE/FALSE
as.logical(0) ##TRUE
as.logical(1) ##FALSE
as.numeric(TRUE)
as.numeric(FALSE)

##Data Structure
## 1. Vector
1:10 ## 1-10
16:25

seq(from = 1, to = 100, by =2) ## Sequence function
seq(from = 1, to = 100, by =5)
help("seq") ##คู่มือ help(function)

## function c
friends <- c("david", "marry", "anna", "john", "william")
ages <- c(30,31,25,29,32)
is_male <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

## matrix
x <- 1:25
length(x)
dim(x) <- c(5,5) ## dim() dimension
m1 <- matrix(1:25, ncol = 5)
m2 <- matrix(1:6, ncol =3, nrow=2, byrow = T) ##เรียงเลขไว้แถวบนลงล่างซ้ายไปขวา

  ##element wise computation: บวกลบคุณหาร
  m2+100
  m2 * 4

## List:เก็บอะไรก็ได้ได้ทุก Data type
  
my_name <- "Hall" ##Object
my_friends <- c("A", "B", "C") ##vector
m1 <- matrix(1:25, ncol = 5) ##matrix
R_is_cool <- TRUE ##logical
my_list <- list(item1 = my_name,
                item2 = my_friends,
                item3 = m1,
                item4 = R_is_cool)
my_list$item3 ## ดึงเฉพาะไอเทม my_list แล้วเพิ่ม $ ตามด้วยไอเทม
my_list$item4



