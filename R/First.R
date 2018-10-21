hello<-'Hello, World!'
print(hello)
hello
c(1,3,2)
0.1+0.1==0.2
0.1+0.05==0.15
all.equal(0.1+0.05,0.15)
u<-seq(0,1,1/3)
v<-seq(0,1,1/7)
#logical->integer->double->character
if (sqrt(2)>1.5){
  print('Greater')
}else
  {
  print('Less')
  }
# for vector&
ifelse(runif(8)>0.5,"Avers","Revers")
x<-runif(8)
ifelse(x>2/3,'Stoune',
  ifelse(x>1/3,'Cut','Paper'))
switch ("factorial",
  sum = 5+5,
  product = 5*5,
  factorial =factorial(5),
  0)
i<-0
repeat{
  i<-i +runif(1)
  print(i)
  if(i>5) break()
}i<-0
repeat{
  i<-i +runif(1)
  print(i)
  if(i>5) break()
}
i<-2^14
while (i>1000) {
  i<-i/2
  print(i)
}
for(i in 1:8){
  if(i%%2==0)print (i)
}
for (i in letters){
  if (i=='b') next
  if (i=='d')break
  print(i)
}
v<-1:1e5
system.time(
  y<-sqrt(v) 
)
#-0.2, 0.3)
set.seed(1337)
x <- runif(1e6, min = -1, max = 1)

ifelse((-0.2<x), y<-x,
  ifelse((x<0.3), y<-x,TRUE))
print(length(y))
set.seed(1337)
x <- runif(1e6, min = -1, max = 1)
y<-x[-0.2<x]
z<-y[y<0.3]
length(z)
dice_roll <- function(n) {
  as.integer(runif(n,1,6))
}?
  dice_roll <- function(n) {
    return((runif(n,1,7))%/%1)
  }
sample(c(1:6),n, replace=TRUE) 
library(grid)
 grid.newpage()
grid.lines()
install.packages('xts', dependencies=TRUE)
library(xts)
update.packages()
1:5 + 0:1
x<-seq(10,100, by = 10)
x[c(8,7,3,6:8,x[1])]
# without x[5]
x[-5]
x[c(TRUE,FALSE)]
#[1] 10 30 50 70 90
x[c(FALSE,TRUE)]
#[1]  20  40  60  80 100
x[x>77 & x<99]
#[1] 80 90
# all elements x x[i]>200
all(x<200)
#kakoi to(one) element >150
any(x>150)
# return index of element
which(x>=50)
# return index min or max element
which.min(x)
which.max(x)
# Attributes
#names is attr
x<-c(5,3,9)
names(x)<-c('V','III','IX')
#add random attr
attr(x,'author')<-"Caesar"
# show all attr
attributes(x)
#del attr
attributes(x)<-NULL

#set of variats x without 7-th element
x[-(1:floor(length(x)/7) * 7)]
x[-(seq(7, length(x), by = 7))]
x[c(rep(T, 6), F)]
x[1:length(x) %% 7 > 0]
x[1:length(x) %% 7 != 0] 
#Task "fizz-buzz" 1 version imerative style
y<-vector(mode = 'character',length = 100)
#or
y<-character(100)
for (i in 1:100){
  if(i%%15==0){
    y[i]<-'fizz-buzz'
  }else if(i%%3==0){
    y[i]<-'fizz'
  }else if(i%%5==0){
    y[i]<-'buzz'
  }else{
    y[i]<-i
  }
}
# ask "fizz-buzz" 2 version vector-oriented style
x<-1:100
z<-1:100
z[x%%5==0]<-'buzz'
z[x%%3==0]<-'fizz'
z[x%%15==0]<-'fizz-buzz'

letters[c(1, 23, 5, 19, 15, 13, 5)]
#1] "a" "w" "e" "s" "o" "m" "e"
# Geometric progression
x<-2^(0:10)
#Some randomnesss
#fix seed for random
set.seed(42)
x<-sample(1:100,50)
# task Neigbors with greatest diff : x[i]-x[i+1]- max
x[-1] # x[x+1]
x[-length(x)]
x[-1]-x[-length(x)] # vector diff
k<-which.max(abs(x[-1]-x[-length(x)] ))
x[c(k,k+1)]   
#Multiple min/max
#random with duplicate
x<-sample(1:100,50, replace = TRUE)
min(x) # returt min element
which.min(x) # return index only first min element
which(x==min(x)) # return indexs all min element
maxdiff <- function(x){
  y<-abs(x[-1] -x[-length(x)])
  k<- which(y==max(y))
  print('First neghbor(s):')
  print(x[k])
  print('Second neghbor(s):')
  print(x[k+1])
  print('Maximum absolute diff is:')
  print(max(y))
}
factorial(x)
combin_count <- function(n, k, with_repretitions = FALSE) {
  if (with_repretitions){
    #Ckn=n!/k!(n−k)! 
    z<-factorial(k+n-1)/(factorial(k)*factorial(n-1))
    return(z)
  }else{
    #Ckn=(k+n-1)!/k!(n−1)! 
    z<-factorial(n)/((factorial(k)*factorial(n-k)))
    return(z)
  }
}
#MATRIX
matrix(1:6,nrow=2)
matrix(1:6, nrow = 2, byrow = TRUE)
matrix(7:8,nrow = 2, ncol = 5)
dim(m)
# quantity of rows or columns
nrow(m1)
ncol(m1)
# m1+m2
m1<- matrix(1:4, nrow = 2)
m2<-matrix(c(1,2,2,3),nrow = 2)
m1+m2
m1+5
# * element-by-element(pin-to-pin)
m1*2
m1*m2
# but * line algebra
m1 %*% m2
# index
m[1,]<-0
m[,-5]<-11:18
# podmatrix
m <- matrix(1:10, ncol = 5)
ind<-c(1,3,5)
m[,ind]
# if ind -one number matrix-> vector
ind<-3
m[,ind] # vector
# but
m[,ind,drop=FALSE] # matrix
# name rows and columns
rownames(m)<-c('row1','row2')
colnames(m)<-paste0('column',1:5)
m['row1',c("column2","column4"), drop = F]
# connect matrixs on row
rbind(m1,m2)
#connect matrixs on column
cbind(m1,m2)
# argument '...' uncounter params
#function with ... rbind,cbind,c,paste,paste0,sum
m<-matrix(1:25,5)
f<-function(x) sum(x^2)
# function apply have 3 arguments
# 1-st matrix
# 2-st index(1-row,2-column) if both 1:2
# 3-st function
apply(m,1,f)
apply(m,2,f)
apply(m,1:2, function(i) if(i>13) i else 13)
# other variant
m[m<=13]<-13
# function without name - anonim(lambda in Python)
# function(i)  in apply(m,1:2, function(i) if(i>13) i else 13)
#Frequent function for collumn and row sun and mean
# rowSums, rowMean....
# chek this
all.equal(rowSums(m),apply(m, 1, sum))
find_closest <- function(v, n) {
  x<-abs(v-n)
  which(x==min(x)) 
}
# bind(connect) matrices diagonally 
bind_diag<- function(m1,m2,fill){
  m3<-matrix(fill,
             nrow = nrow(m1)+nrow(m2),
             ncol = ncol(m1)+ncol(m2))
  m3[1:nrow(m1),1:ncol(m1)]<-m1
  m3[nrow(m1)+1:nrow(m2),ncol(m1)+1:ncol(m2)]<-m2
  m3
}
m1<-matrix(1:12,nrow=3)
m2<-matrix(10:15,ncol=3)
bind_diag(m1,m2,fill=NA)
bind_diag(m1,m2,fill=0)
#Построим зиккурат! Напишите функцию, которая принимает одно целое
#число n, а возвращает “ступенчатую” матрицу, состоящую из n этажей. 
#Этажи нумеруются с первого, ширина каждой ступеньки равна одной
#строке или столбцу.
build_ziggurat <- function(n){
  c<-1
  m<-matrix(c,n*2-c,n*2-c)
  m2<-matrix(c,n*2-c,n*2-c)
  while (c<n) {
    c<-c+1
    m2<-matrix(c,nrow(m2)-2,ncol(m2)-2)
    m[c:(nrow(m)-(c-1)),c:(ncol(m)-(c-1))]<-m2
  }
  m
}  

 #LIST
l<-list(1:5,'my_data',matrix(0,2,2))
# list with name of element
list(a=1,b=1:3,'1to5'=1:5,42)
# list of list(recursion)
list(a=list(1,2,3),b=list(list(4),5,6))
# c-combine(union) lisls
l1<-list(name='john',salary =1000)
l2<-list(has_car=TRUE,car='lamborghini')
c(l1,l2)
# vector->list
v<-1:7
list(v)
# list-> vector (not always)
l<-list(1:3,4:5,last =6)
unlist(l)
# change type int to char
unlist(c(l,'spy'))
#access to element of pod-list
#[] return list
l[2:3]
#[[]] return element
l[[1]]
#$
l$last = l$l = l$la # return element
#CHANGE LIST
l[[3]]<-NULL
l[[4]]<-99
# function element of list
l<-list(vec=1:7,fun=sqrt)
l$fun(4)
# name  elements of list
names(l)
# chek name element
is.null(l$string)
l$string<-'Citius,altius,fortius'
# function for all elements of list
l<-list(a=c('12','34'),b=LETTERS[5:10],c=1:5)
lapply(l, length)
#function with argument for all elements of list
lapply(l,paste,collapse='|')
# simply vector function with argument for all elements of list
sapply(l,paste,collapse='|')
# short name for element of lisy or argument of function
l<-list(some_name=1,incredibly_long_name=2)
l$incr+1
#Небольшая добавка: в R есть три похожих ключевых слова, NA, NaN и NULL. Они различаются по смысловой нагрузке. 

#NA -- это пропущенное значение ("not available"). Например, респондент не ответил на все вопросы предложенной анкеты, или данные с метеостанции за определённый период потерялись из-за сбоя оборудования. NA в этом случае обозначает, что эти данные существуют и имеют смысл, но их не удалось узнать.
#NaN -- "not-a-number" -- результат недопустимой арифметической операции, например 0/0 или Inf - Inf.
#NULL -- отсутствие объекта, "пустота". Применяется в тех случаях, когда объект действительно не существует, не может иметь осмысленного значения.

#Для проверки значений есть три функции, is.na, is.nan и is.null, соответственно.

#diag�
diag(m)
#[1] 1 2 3 2 1
diag(3)
#[,1] [,2] [,3]
#[1,]    1    0    0
#[2,]    0    1    0
#[3,]    0    0    1
#diag(c(1,2))
#[,1] [,2]
#[1,]    1    0
#[2,]    0    2
  
#Task: We have list of vector different lenght. 
# Must return index elements of list and this elements max lenght
# get the longest element
get_longest<-function(l) {
    len<-sapply(l, length)
    ind <-which.max(len)
    list(number=ind, element=l[[ind]])
}  
  #generate list with random lenght and contents
  #rnorm(x) -generator x numbers
  gen_list<- function(n_elements,max_len,seed=111) {
    set.seed(seed)
    len<-sample(1:max_len,n_elements)
    lapply(1:n_elements, function(i) rnorm(len[i]))
  }
 
#Если вектор достаточно длинный, то визуально сложно оценить,
#какие в нём содержатся элементы и сколько раз они повторяются. 
#В этом случае полезно будет посмотреть на таблицу частот элементов.
  
#Пусть x -- целочисленный вектор. Напишите функцию, которая вернёт матрицу 
#из двух строк. В первой строке перечислите все различные элементы вектора, 
#упорядоченные по возрастанию. Во второй строке укажите частоты 
#(количество повторов) этих элементов.
#Пример. Пусть x <- c(5, 2, 7, 7, 7, 2, 0, 0). 
#Тогда функция должна вернуть матрицу 2х4 с элементами
#  0 2 5 7
#  2 2 1 3
  
count_elements <- function(x) {
    x<-sort(x)
    xu<-unique(x)
    n<-length(xu)
    m<-matrix(0,2,n)
    m[1,]<-xu
    for (i in xu){
      j<-length(which(x==i))
      m[2,which(xu==i)]<-j
    }
    m
}

set.seed(1789)
bastille <- list(
  "La Chapelle Tower" = rbinom(5, 10, 1/2), 
  "Tresor Tower" = rbinom(8, 12, 1/4), 
  "Comte Tower" = rbinom(14, 3, 1/5) + 1,
  "Baziniere Tower" = rbinom(8, 4, 4/5), 
  "Bertaudiere Tower" = rbinom(4, 8, 2/3),
  "Liberte Tower" = rbinom(1, 100, 0.1), 
  "Puits Tower" = rbinom(5, 5, 0.7),
  "Coin Tower" = rbinom(3, 16, 0.4)
)
l<-sapply(bastille, function(i)sum(i))
sum(l)
print (c(names(l[which(l==min(l))]),min(l),sum(l)))

# DATA FRAME
df <-data.frame(x=1:4,y=LETTERS[1:4],z=c(T,F))
# structure df
str(df)
# add name row
df <-data.frame(x=1:4,y=LETTERS[1:4],z=c(T,F),
                row.names = c('Alpha','Bravo','Chsrlie','Delta'))
# get row or column name
rownames(df)
dimnames(df)
# quntity row or columns
nrow(df)
ncol(df)
# indexation df
# 1. positiv , negativ
df[3:4,-1]
#2 logic and name indexation
df[c(F,T),c('z','x')]
# 3 index one column
df[,1] # get vector
df[,1,drop = FALSE] #get df
# $ indexation
df$z # df[[3]],df[['z']]
#choice with condition
df[df$x>2,]
#or
subset(df,x>2)
# or subset whit condition for columns
subset(df,x>2,select = c(x,z))
# combination matrix with rbind or cbind
# combination on row (ex:add)
rbind(df,data.frame(x=5:6,y=c('K','Z'),z=TRUE,
                    row.names =c('Kappa','Zulu')))
# combination on columns cbind
# combination with key or other words "inner join"
df_salary<-data.frame(x=c(3,2,6,1),salary=c(100,1000,300,500))
merge(df,df_salary,by='x')
weights[order(-weights$attr_importance),,drop=FALSE]
# TASK
df<-attitude
df<-df[order(df$learning,decreasing = TRUE ),,drop=FALSE]
df<-df[1:5,]
df<-cbind(df,sum=df$complaints+df$raises+df$advance)
rownames(df[which.max(df$sum),])

#IMPORT DATA
#file
#web
#DB
#read.table
#Типичные этапы предобработки данных
#1. Импорт в дата фрейм из источника
#2. Очистка значений, проверка типов (data cleaning,verify type)
#3. Работа со строками: именабпеременные строкового типа, факторы
#4. Пропущенные значения: идентификация, способ обработки
#5. Манипулирование переменными, преобразование, создание,удалиние
#6. Подсчет опесательных статистик split-apply-combine
#7. Визуализация данных
#8. Экспорт

####2. Очистка значений, проверка типов (data cleaning,verify type))
#Troubles
#1.integer become character
# NA -> not formated Ex "Not Available"
# separator is not true. Action: sep=",' dec='.'
#quotes("") in the comment.Action quote,comment.char,kip
# character decom factor or  vice versa(<->) Action: as.chracter,as.factor
#Data/time become character. Action: as.POSIct,a.data
#General solution: str,summary(statistics),head(6 top row),tail(6 down row)

###Work with variable
#1. Delete row with NA
#df[complete/cases(df),]
#ns.omit(df)
#2.Change NA . Attention!!
#3 Create,change,delete variable
#df$ne_var<-<...> Add
#df$d_var<-f(df@old_var) change
#df$old_var<-NULL DEL
# for big  amount(level) data use within

### Export
#write.table,write.csv and ect
max(quakes$mag)
#[1] 6.4
min(quakes$mag)
#[1] 4
mean(quakes$depth)
#[1] 311.371
median(quakes$depth)
#[1] 247
#or only summary function for statistic data
## Not run: 
## remove (almost) everything in the working environment.
## You will get no warning, so don't do this unless you are really sure.
rm(list = ls())
   
###Example work with data from file
#1.Importing and inspecting data
avian<-read.csv("~/R/TestR/avianHabitat.csv")
#2. Checking data
str(avian)
head(avian)
summary(avian)
# Propuski
any(!complete.cases(avian))
# Checing correct data
any(avian$PDB<0)
any(avian$pdb>100)
#or make function:
check_percent_range<- function(x){
  any(x<0|x>100)
}
#check_percent_range(avian$PW)
# 3. Transforming variables
names(avian)
# all columns who name started "P"
coverage_variables<-names(avian)[-(1:4)][c(T,F)]
# Sum all data in columns in coverage_variables name
avian$total_coverage<- rowSums(avian[,coverage_variables])
summary(avian$total_coverage)

#TASK
# Read file and fix data (NA and comment)
avian2<-read.csv2("~/R/TestR/avianHabitat2.csv",skip =5,comment.char = "%", na.strings = "Don't remember")
str(avian2)
head(avian2)
# add column Observer
avian2$Observer<-'CL'
# add column total_coverage
coverage_variables2<-names(avian2)[-(1:3)][c(T,F)]
avian2$total_coverage<- rowSums(avian2[,coverage_variables2])
# Connect avian,avian2
rbind(avian,avian2)
# Get info
summary(v$total_coverage)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#2.000   8.000  10.000   9.572  11.000  17.000 
# Quntity row
nrow(v)
#[1] 1088
#Task 2
head(avian)
coverage_variables3<-names(avian)[-(1:5)][c(T,F)]
coverage_variables3<-coverage_variables3[-7]
# max for columns incoverage_variables3
ht<-sapply(avian[, coverage_variables3], function(i) max(i))
ht<-sort(ht,decreasing = TRUE)
ht

### String
s<-c('Терпение и труд все  перетрут',
     'Кончил дело - гуляй смело')
#  "Операция /"Ы/""
# Concatenation of strings
#past/past0 Arguments:sep(past " ", past0 -empty string),
#collapse vector to string
paste(c('углекислый','веселящий'),'газ')
#"углекислый газ" "веселящий газ" 
paste(c('углекислый','веселящий'),'газ',sep ='_')
#[1] "углекислый_газ" "веселящий_газ" 
paste(c('углекислый','веселящий'),'газ',collapse = ' а так же ')
"углекислый газ а так же веселящий газ"
R version 3.5.1 (2018-07-02) -- "Feather Spray"
Copyright (C) 2018 The R Foundation for Statistical Computing
Platform: x86_64-pc-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> avian<-read.csv("~/R/TestR/avianHabitat.csv")
> str(avian)
'data.frame':	1070 obs. of  17 variables:
  $ Site    : Factor w/ 101 levels "BunkerHill11",..: 14 14 14 14 14 14 14 14 14 14 ...
$ Observer: Factor w/ 3 levels "JT","RA","RR": 2 2 2 2 2 1 1 1 1 1 ...
$ Subpoint: int  1 2 3 4 5 6 7 8 9 10 ...
$ VOR     : num  6 4.5 2 2.5 4 2 5.5 4 3.5 3.5 ...
$ PDB     : int  3 2 4 3 4 3 3 2 2 2 ...
$ DBHt    : num  5.2 3.1 5.5 6.2 5.4 4 5.2 4.4 5.7 4.8 ...
$ PW      : int  0 3 1 0 0 0 2 1 1 0 ...
$ WHt     : num  0 4.7 5.8 0 0 0 6.3 4.1 5.7 0 ...
$ PE      : int  4 3 3 3 3 3 2 2 2 1 ...
$ EHt     : num  2.9 4.1 3.9 4 3.5 4.1 2.6 4.3 5.2 1.7 ...
$ PA      : int  0 0 0 0 0 0 0 0 0 0 ...
$ AHt     : num  0 0 0 0 0 0 0 0 0 0 ...
$ PH      : int  4 3 3 4 4 2 4 5 4 5 ...
$ HHt     : num  3 3.5 7.5 5 3.7 3.5 5.8 8.2 6.9 5.7 ...
$ PL      : int  0 2 0 0 0 0 0 0 0 0 ...
$ LHt     : num  0 1 0 0 0 0 0 0 0 0 ...
$ PB      : int  0 0 0 0 0 0 0 0 0 0 ...
> head(avian)
Site Observer Subpoint VOR PDB DBHt PW WHt PE EHt PA AHt PH
1 BunkerHill27       RA        1 6.0   3  5.2  0 0.0  4 2.9  0   0  4
2 BunkerHill27       RA        2 4.5   2  3.1  3 4.7  3 4.1  0   0  3
3 BunkerHill27       RA        3 2.0   4  5.5  1 5.8  3 3.9  0   0  3
4 BunkerHill27       RA        4 2.5   3  6.2  0 0.0  3 4.0  0   0  4
5 BunkerHill27       RA        5 4.0   4  5.4  0 0.0  3 3.5  0   0  4
6 BunkerHill27       JT        6 2.0   3  4.0  0 0.0  3 4.1  0   0  2
HHt PL LHt PB
1 3.0  0   0  0
2 3.5  2   1  0
3 7.5  0   0  0
4 5.0  0   0  0
5 3.7  0   0  0
6 3.5  0   0  0
> summary(avian)
Site     Observer    Subpoint           VOR        
LivingstonCreek13: 15   JT:150   Min.   : 1.000   Min.   : 0.000  
LivingstonCreek14: 15   RA:574   1st Qu.: 3.000   1st Qu.: 0.000  
LivingstonCreek17: 15   RR:346   Median : 6.000   Median : 1.000  
LivingstonCreek18: 15            Mean   : 5.921   Mean   : 1.203  
McAdamCreek11    : 15            3rd Qu.: 8.000   3rd Qu.: 1.500  
McAdamCreek12    : 15            Max.   :15.000   Max.   :19.000  
(Other)          :980                                             
PDB              DBHt               PW             WHt        
Min.   :0.0000   Min.   : 0.0000   Min.   :0.000   Min.   : 0.000  
1st Qu.:0.0000   1st Qu.: 0.0000   1st Qu.:0.000   1st Qu.: 0.000  
Median :0.0000   Median : 0.0000   Median :1.000   Median : 0.400  
Mean   :0.8682   Mean   : 0.7827   Mean   :1.151   Mean   : 1.027  
3rd Qu.:2.0000   3rd Qu.: 1.2000   3rd Qu.:2.000   3rd Qu.: 1.100  
Max.   :5.0000   Max.   :10.0000   Max.   :6.000   Max.   :24.500  

PE             EHt               PA               AHt        
Min.   :0.000   Min.   :0.0000   Min.   :0.00000   Min.   : 0.000  
1st Qu.:1.000   1st Qu.:0.3000   1st Qu.:0.00000   1st Qu.: 0.000  
Median :2.000   Median :0.8000   Median :0.00000   Median : 0.000  
Mean   :2.239   Mean   :0.9659   Mean   :0.04206   Mean   : 0.186  
3rd Qu.:3.000   3rd Qu.:1.4000   3rd Qu.:0.00000   3rd Qu.: 0.000  
Max.   :6.000   Max.   :5.3000   Max.   :6.00000   Max.   :31.500  

PH             HHt              PL             LHt        
Min.   :0.000   Min.   :0.000   Min.   :0.000   Min.   :0.0000  
1st Qu.:2.000   1st Qu.:1.400   1st Qu.:0.000   1st Qu.:0.0000  
Median :3.000   Median :2.300   Median :1.000   Median :0.2000  
Mean   :2.867   Mean   :2.321   Mean   :1.652   Mean   :0.2685  
3rd Qu.:4.000   3rd Qu.:3.100   3rd Qu.:3.000   3rd Qu.:0.5000  
Max.   :6.000   Max.   :8.200   Max.   :6.000   Max.   :1.3000  

PB        
Min.   :0.0000  
1st Qu.:0.0000  
Median :0.0000  
Mean   :0.7318  
3rd Qu.:1.0000  
Max.   :6.0000  

> # Propuski
  > any(!complete.cases(avian))
[1] FALSE
> # Checing correct data
  > any(avian$PDB<0)
[1] FALSE
> any(avian$pdb>100)
[1] FALSE
> check_percent_range<- function(x){
  +   any(x<0|x>100)
  + }
> check_percent_range(avian$PW)
[1] FALSE
> 
  > #check_percent_range(avian$PW)
  > # 3. Transforming variables
  > names(avian)
[1] "Site"     "Observer" "Subpoint" "VOR"      "PDB"      "DBHt"    
[7] "PW"       "WHt"      "PE"       "EHt"      "PA"       "AHt"     
[13] "PH"       "HHt"      "PL"       "LHt"      "PB"      
> # all columns who name started "P"
  > coverage_variables<-names(avian)[-(1:4)][c(T,F)]
> coverage_variables
[1] "PDB" "PW"  "PE"  "PA"  "PH"  "PL"  "PB" 
> # Sum all data in columns in coverage_variables name
  > avian$total_coverage<- rowSums(avian[,coverage_variables])
> summary(avian$total_coverage)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
2.000   8.000  10.000   9.552  11.000  17.000 
> #TASK
  > avian2<-read.csv("~/R/TestR/avianHabitat2.csv")
> str(avian2)
'data.frame':	23 obs. of  2 variables:
  $ Dear.Sir.or.Madam: Factor w/ 23 levels "----data starts from here!----",..: 3 23 2 1 22 4 5 6 7 8 ...
$ X                : Factor w/ 4 levels ""," "," I messed up",..: 4 2 1 1 1 1 1 1 1 1 ...
> head(avian2)
Dear.Sir.or.Madam
1                                                                                                  Here's the rest of our data
2                                                                                                            With best regards
3                                                                                                               Carlos Linayas
4                                                                                               ----data starts from here!----
5 Site;Subpoint;VOR;PDB;DBHt;PW;WHt;PE;EHt;PA;AHt;PH;HHt;PL;LHt;PB % I removed Observer column since all measurements are mine
6                                                                               HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
X
1  sorry for the delay!
2                      
3                      
4                      
5                      
6                      
> avian[1,]
Site Observer Subpoint VOR PDB DBHt PW WHt PE EHt PA AHt PH HHt PL LHt PB
1 BunkerHill27       RA        1   6   3  5.2  0   0  4 2.9  0   0  4   3  0   0  0
total_coverage
1             11
> avian2[-4]
Dear.Sir.or.Madam
1                                                                                                   Here's the rest of our data
2                                                                                                             With best regards
3                                                                                                                Carlos Linayas
4                                                                                                ----data starts from here!----
  5  Site;Subpoint;VOR;PDB;DBHt;PW;WHt;PE;EHt;PA;AHt;PH;HHt;PL;LHt;PB % I removed Observer column since all measurements are mine
6                                                                                HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
7                                                                             HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
8                                                                           HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
9                                                                           HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
10                                                                       HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
11                                                                       HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
12                                                                         HortonCreek111;7;0;2;0.3;0;0;5;0.4;0;0;2;1.8;5;0.3;0
13                                      HortonCreek111;Don't remember;0;2;0.7;0;0;5;0.6;0;0;1;1.6;4;0.2;1 % <- Sorry about that
14                                                          HortonCreek111;Don't remember;0;1;0.4;2;0.3;3;0.3;0;0;2;1.3;5;0.4;0
15                                                                         HortonCreek112;1;0;1;0.8;0;0;3;0.3;0;0;1;0.9;4;0.4;1
16                                                                         HortonCreek112;2;0;2;0.5;0;0;3;0.4;0;0;2;0.7;3;0.1;1
17                                                                         HortonCreek112;3;0;1;0.1;0;0;3;0.2;0;0;1;0.5;4;0.1;2
18                                                                         HortonCreek112;4;0;2;0.3;0;0;3;0.2;0;0;1;0.5;4;0.1;1
19                                                                           HortonCreek112;5;0;0;0;0;0;4;0.7;0;0;1;0.5;2;0.1;2
20                                                                           HortonCreek112;6;0;0;0;0;0;2;0.3;0;0;2;0.7;3;0.3;3
21                                                                         HortonCreek112;7;0;0;0;2;0.3;3;0.3;0;0;2;0.8;4;0.4;2
22                                                                           HortonCreek112;8;0;3;0.7;0;0;0;0;0;0;1;3.1;5;0.5;0
23                                                                           HortonCreek112;9;0;0;0;0;0;2;0.2;0;0;2;0.7;1;0.3;4
X
1   sorry for the delay!
  2                       
3                       
4                       
5                       
6                       
7                       
8                       
9                       
10                      
11                      
12                      
13           I messed up
14                      
15                      
16                      
17                      
18                      
19                      
20                      
21                      
22                      
23                      
> t<-avian2[-4]
> t
Dear.Sir.or.Madam
1                                                                                                   Here's the rest of our data
2                                                                                                             With best regards
3                                                                                                                Carlos Linayas
4                                                                                                ----data starts from here!----
5  Site;Subpoint;VOR;PDB;DBHt;PW;WHt;PE;EHt;PA;AHt;PH;HHt;PL;LHt;PB % I removed Observer column since all measurements are mine
6                                                                                HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
7                                                                             HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
8                                                                           HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
9                                                                           HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
10                                                                       HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
11                                                                       HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
12                                                                         HortonCreek111;7;0;2;0.3;0;0;5;0.4;0;0;2;1.8;5;0.3;0
13                                      HortonCreek111;Don't remember;0;2;0.7;0;0;5;0.6;0;0;1;1.6;4;0.2;1 % <- Sorry about that
14                                                          HortonCreek111;Don't remember;0;1;0.4;2;0.3;3;0.3;0;0;2;1.3;5;0.4;0
15                                                                         HortonCreek112;1;0;1;0.8;0;0;3;0.3;0;0;1;0.9;4;0.4;1
16                                                                         HortonCreek112;2;0;2;0.5;0;0;3;0.4;0;0;2;0.7;3;0.1;1
17                                                                         HortonCreek112;3;0;1;0.1;0;0;3;0.2;0;0;1;0.5;4;0.1;2
18                                                                         HortonCreek112;4;0;2;0.3;0;0;3;0.2;0;0;1;0.5;4;0.1;1
19                                                                           HortonCreek112;5;0;0;0;0;0;4;0.7;0;0;1;0.5;2;0.1;2
20                                                                           HortonCreek112;6;0;0;0;0;0;2;0.3;0;0;2;0.7;3;0.3;3
21                                                                         HortonCreek112;7;0;0;0;2;0.3;3;0.3;0;0;2;0.8;4;0.4;2
22                                                                           HortonCreek112;8;0;3;0.7;0;0;0;0;0;0;1;3.1;5;0.5;0
23                                                                           HortonCreek112;9;0;0;0;0;0;2;0.2;0;0;2;0.7;1;0.3;4
X
1   sorry for the delay!
2                       
3                       
4                       
5                       
6                       
7                       
8                       
9                       
10                      
11                      
12                      
13           I messed up
14                      
15                      
16                      
17                      
18                      
19                      
20                      
21                      
22                      
23                      
> t[1]
Dear.Sir.or.Madam
1                                                                                                   Here's the rest of our data
2                                                                                                             With best regards
3                                                                                                                Carlos Linayas
4                                                                                                ----data starts from here!----
  5  Site;Subpoint;VOR;PDB;DBHt;PW;WHt;PE;EHt;PA;AHt;PH;HHt;PL;LHt;PB % I removed Observer column since all measurements are mine
6                                                                                HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
7                                                                             HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
8                                                                           HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
9                                                                           HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
10                                                                       HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
11                                                                       HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
12                                                                         HortonCreek111;7;0;2;0.3;0;0;5;0.4;0;0;2;1.8;5;0.3;0
13                                      HortonCreek111;Don't remember;0;2;0.7;0;0;5;0.6;0;0;1;1.6;4;0.2;1 % <- Sorry about that
14                                                          HortonCreek111;Don't remember;0;1;0.4;2;0.3;3;0.3;0;0;2;1.3;5;0.4;0
15                                                                         HortonCreek112;1;0;1;0.8;0;0;3;0.3;0;0;1;0.9;4;0.4;1
16                                                                         HortonCreek112;2;0;2;0.5;0;0;3;0.4;0;0;2;0.7;3;0.1;1
17                                                                         HortonCreek112;3;0;1;0.1;0;0;3;0.2;0;0;1;0.5;4;0.1;2
18                                                                         HortonCreek112;4;0;2;0.3;0;0;3;0.2;0;0;1;0.5;4;0.1;1
19                                                                           HortonCreek112;5;0;0;0;0;0;4;0.7;0;0;1;0.5;2;0.1;2
20                                                                           HortonCreek112;6;0;0;0;0;0;2;0.3;0;0;2;0.7;3;0.3;3
21                                                                         HortonCreek112;7;0;0;0;2;0.3;3;0.3;0;0;2;0.8;4;0.4;2
22                                                                           HortonCreek112;8;0;3;0.7;0;0;0;0;0;0;1;3.1;5;0.5;0
23                                                                           HortonCreek112;9;0;0;0;0;0;2;0.2;0;0;2;0.7;1;0.3;4
> t[1,]
Dear.Sir.or.Madam                     X
1 Here's the rest of our data  sorry for the delay!
> t<-avian2[-4,]
> head(t)
Dear.Sir.or.Madam
1                                                                                                  Here's the rest of our data
2                                                                                                            With best regards
3                                                                                                               Carlos Linayas
5 Site;Subpoint;VOR;PDB;DBHt;PW;WHt;PE;EHt;PA;AHt;PH;HHt;PL;LHt;PB % I removed Observer column since all measurements are mine
6                                                                               HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
7                                                                            HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
X
1  sorry for the delay!
  2                      
3                      
5                      
6                      
7                      
> t<-avian2[-5,]
> head(t)
Dear.Sir.or.Madam                     X
1                       Here's the rest of our data  sorry for the delay!
2                                 With best regards                      
3                                    Carlos Linayas                      
4                    ----data starts from here!----                      
6    HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0                      
7 HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0                      
> avian2<-read.csv("~/R/TestR/avianHabitat2.csv",skip = 5)
> head(avian2)
Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB...I.removed.Observer.column.since.all.measurements.are.mine
1                                                                               HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
2                                                                            HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
3                                                                          HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
4                                                                          HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
5                                                                       HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
6                                                                       HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
> str(avian2)
'data.frame':	19 obs. of  1 variable:
$ Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB...I.removed.Observer.column.since.all.measurements.are.mine: Factor w/ 19 levels " I messed up",..: 2 3 4 5 6 7 8 10 1 9 ...
> #TASK
> avian2<-read.csv("~/R/TestR/avianHabitat2.csv",skip =5 ,comment.char = "%", na.strings = "Don't remember")
> str(avian2)
'data.frame':	18 obs. of  1 variable:
$ Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB: Factor w/ 18 levels "HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0",..: 1 2 3 4 5 6 7 9 8 10 ...
> head(avian2)
Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB
1                   HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
2                HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
3              HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
4              HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
5           HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
6           HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
> avian2
Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB
1                       HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
2                    HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
3                  HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
4                  HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
5               HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
6               HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
7                 HortonCreek111;7;0;2;0.3;0;0;5;0.4;0;0;2;1.8;5;0.3;0
8   HortonCreek111;Don't remember;0;2;0.7;0;0;5;0.6;0;0;1;1.6;4;0.2;1 
9  HortonCreek111;Don't remember;0;1;0.4;2;0.3;3;0.3;0;0;2;1.3;5;0.4;0
10                HortonCreek112;1;0;1;0.8;0;0;3;0.3;0;0;1;0.9;4;0.4;1
11                HortonCreek112;2;0;2;0.5;0;0;3;0.4;0;0;2;0.7;3;0.1;1
12                HortonCreek112;3;0;1;0.1;0;0;3;0.2;0;0;1;0.5;4;0.1;2
13                HortonCreek112;4;0;2;0.3;0;0;3;0.2;0;0;1;0.5;4;0.1;1
14                  HortonCreek112;5;0;0;0;0;0;4;0.7;0;0;1;0.5;2;0.1;2
15                  HortonCreek112;6;0;0;0;0;0;2;0.3;0;0;2;0.7;3;0.3;3
16                HortonCreek112;7;0;0;0;2;0.3;3;0.3;0;0;2;0.8;4;0.4;2
17                  HortonCreek112;8;0;3;0.7;0;0;0;0;0;0;1;3.1;5;0.5;0
18                  HortonCreek112;9;0;0;0;0;0;2;0.2;0;0;2;0.7;1;0.3;4
> #TASK
> avian2<-read.csv("~/R/TestR/avianHabitat2.csv",skip =5 ,quote ="\"'" ,comment.char = "%", na.strings = "Don't remember")
> avian2
Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB
1                                                                                                                           HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
2                                                                                                                        HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
3                                                                                                                      HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
4                                                                                                                      HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
5                                                                                                                   HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
6                                                                                                                   HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
7                                                                                                                     HortonCreek111;7;0;2;0.3;0;0;5;0.4;0;0;2;1.8;5;0.3;0
8  HortonCreek111;Dont remember;0;2;0.7;0;0;5;0.6;0;0;1;1.6;4;0.2;1 % <- Sorry about that, I messed up\nHortonCreek111;Dont remember;0;1;0.4;2;0.3;3;0.3;0;0;2;1.3;5;0.4;0
9                                                                                                                     HortonCreek112;1;0;1;0.8;0;0;3;0.3;0;0;1;0.9;4;0.4;1
10                                                                                                                    HortonCreek112;2;0;2;0.5;0;0;3;0.4;0;0;2;0.7;3;0.1;1
11                                                                                                                    HortonCreek112;3;0;1;0.1;0;0;3;0.2;0;0;1;0.5;4;0.1;2
12                                                                                                                    HortonCreek112;4;0;2;0.3;0;0;3;0.2;0;0;1;0.5;4;0.1;1
13                                                                                                                      HortonCreek112;5;0;0;0;0;0;4;0.7;0;0;1;0.5;2;0.1;2
14                                                                                                                      HortonCreek112;6;0;0;0;0;0;2;0.3;0;0;2;0.7;3;0.3;3
15                                                                                                                    HortonCreek112;7;0;0;0;2;0.3;3;0.3;0;0;2;0.8;4;0.4;2
16                                                                                                                      HortonCreek112;8;0;3;0.7;0;0;0;0;0;0;1;3.1;5;0.5;0
17                                                                                                                      HortonCreek112;9;0;0;0;0;0;2;0.2;0;0;2;0.7;1;0.3;4
> #TASK
  > avian2<-read.csv("~/R/TestR/avianHabitat2.csv",skip =5,comment.char = "%", na.strings = "Don't remember")
> avian2
Site.Subpoint.VOR.PDB.DBHt.PW.WHt.PE.EHt.PA.AHt.PH.HHt.PL.LHt.PB
1                       HortonCreek111;1;3;0;0;0;0;4;3.5;0;0;3;5;0;0;0
2                    HortonCreek111;2;3;0;0;4;18.5;0;0;0;0;4;5.7;0;0;0
3                  HortonCreek111;3;2;0;0;3;11.3;2;3;0;0;4;4.9;1;0.2;0
4                  HortonCreek111;4;3.5;0;0;4;15.8;0;0;0;0;3;4.2;0;0;0
5               HortonCreek111;5;0;1;0.3;2;0.5;4;0.4;0;0;2;1.4;5;0.3;0
6               HortonCreek111;6;0;2;0.7;3;0.5;4;0.5;0;0;1;1.6;3;0.5;1
7                 HortonCreek111;7;0;2;0.3;0;0;5;0.4;0;0;2;1.8;5;0.3;0
8   HortonCreek111;Don't remember;0;2;0.7;0;0;5;0.6;0;0;1;1.6;4;0.2;1 
9  HortonCreek111;Don't remember;0;1;0.4;2;0.3;3;0.3;0;0;2;1.3;5;0.4;0
10                HortonCreek112;1;0;1;0.8;0;0;3;0.3;0;0;1;0.9;4;0.4;1
11                HortonCreek112;2;0;2;0.5;0;0;3;0.4;0;0;2;0.7;3;0.1;1
12                HortonCreek112;3;0;1;0.1;0;0;3;0.2;0;0;1;0.5;4;0.1;2
13                HortonCreek112;4;0;2;0.3;0;0;3;0.2;0;0;1;0.5;4;0.1;1
14                  HortonCreek112;5;0;0;0;0;0;4;0.7;0;0;1;0.5;2;0.1;2
15                  HortonCreek112;6;0;0;0;0;0;2;0.3;0;0;2;0.7;3;0.3;3
16                HortonCreek112;7;0;0;0;2;0.3;3;0.3;0;0;2;0.8;4;0.4;2
17                  HortonCreek112;8;0;3;0.7;0;0;0;0;0;0;1;3.1;5;0.5;0
18                  HortonCreek112;9;0;0;0;0;0;2;0.2;0;0;2;0.7;1;0.3;4
> #TASK
  > avian2<-read.csv2("~/R/TestR/avianHabitat2.csv",skip =5,comment.char = "%", na.strings = "Don't remember")
> avian2
Site Subpoint VOR PDB DBHt PW  WHt PE EHt PA AHt PH HHt PL LHt PB
1  HortonCreek111        1   3   0    0  0    0  4 3.5  0   0  3   5  0   0  0
2  HortonCreek111        2   3   0    0  4 18.5  0   0  0   0  4 5.7  0   0  0
3  HortonCreek111        3   2   0    0  3 11.3  2   3  0   0  4 4.9  1 0.2  0
4  HortonCreek111        4 3.5   0    0  4 15.8  0   0  0   0  3 4.2  0   0  0
5  HortonCreek111        5   0   1  0.3  2  0.5  4 0.4  0   0  2 1.4  5 0.3  0
6  HortonCreek111        6   0   2  0.7  3  0.5  4 0.5  0   0  1 1.6  3 0.5  1
7  HortonCreek111        7   0   2  0.3  0    0  5 0.4  0   0  2 1.8  5 0.3  0
8  HortonCreek111       NA   0   2  0.7  0    0  5 0.6  0   0  1 1.6  4 0.2  1
9  HortonCreek111       NA   0   1  0.4  2  0.3  3 0.3  0   0  2 1.3  5 0.4  0
10 HortonCreek112        1   0   1  0.8  0    0  3 0.3  0   0  1 0.9  4 0.4  1
11 HortonCreek112        2   0   2  0.5  0    0  3 0.4  0   0  2 0.7  3 0.1  1
12 HortonCreek112        3   0   1  0.1  0    0  3 0.2  0   0  1 0.5  4 0.1  2
13 HortonCreek112        4   0   2  0.3  0    0  3 0.2  0   0  1 0.5  4 0.1  1
14 HortonCreek112        5   0   0    0  0    0  4 0.7  0   0  1 0.5  2 0.1  2
15 HortonCreek112        6   0   0    0  0    0  2 0.3  0   0  2 0.7  3 0.3  3
16 HortonCreek112        7   0   0    0  2  0.3  3 0.3  0   0  2 0.8  4 0.4  2
17 HortonCreek112        8   0   3  0.7  0    0  0   0  0   0  1 3.1  5 0.5  0
18 HortonCreek112        9   0   0    0  0    0  2 0.2  0   0  2 0.7  1 0.3  4
> avian2$Observer<-'CL'
> avian2
Site Subpoint VOR PDB DBHt PW  WHt PE EHt PA AHt PH HHt PL LHt PB Observer
1  HortonCreek111        1   3   0    0  0    0  4 3.5  0   0  3   5  0   0  0       CL
2  HortonCreek111        2   3   0    0  4 18.5  0   0  0   0  4 5.7  0   0  0       CL
3  HortonCreek111        3   2   0    0  3 11.3  2   3  0   0  4 4.9  1 0.2  0       CL
4  HortonCreek111        4 3.5   0    0  4 15.8  0   0  0   0  3 4.2  0   0  0       CL
5  HortonCreek111        5   0   1  0.3  2  0.5  4 0.4  0   0  2 1.4  5 0.3  0       CL
6  HortonCreek111        6   0   2  0.7  3  0.5  4 0.5  0   0  1 1.6  3 0.5  1       CL
7  HortonCreek111        7   0   2  0.3  0    0  5 0.4  0   0  2 1.8  5 0.3  0       CL
8  HortonCreek111       NA   0   2  0.7  0    0  5 0.6  0   0  1 1.6  4 0.2  1       CL
9  HortonCreek111       NA   0   1  0.4  2  0.3  3 0.3  0   0  2 1.3  5 0.4  0       CL
10 HortonCreek112        1   0   1  0.8  0    0  3 0.3  0   0  1 0.9  4 0.4  1       CL
11 HortonCreek112        2   0   2  0.5  0    0  3 0.4  0   0  2 0.7  3 0.1  1       CL
12 HortonCreek112        3   0   1  0.1  0    0  3 0.2  0   0  1 0.5  4 0.1  2       CL
13 HortonCreek112        4   0   2  0.3  0    0  3 0.2  0   0  1 0.5  4 0.1  1       CL
14 HortonCreek112        5   0   0    0  0    0  4 0.7  0   0  1 0.5  2 0.1  2       CL
15 HortonCreek112        6   0   0    0  0    0  2 0.3  0   0  2 0.7  3 0.3  3       CL
16 HortonCreek112        7   0   0    0  2  0.3  3 0.3  0   0  2 0.8  4 0.4  2       CL
17 HortonCreek112        8   0   3  0.7  0    0  0   0  0   0  1 3.1  5 0.5  0       CL
18 HortonCreek112        9   0   0    0  0    0  2 0.2  0   0  2 0.7  1 0.3  4       CL
> head(avian)
Site Observer Subpoint VOR PDB DBHt PW WHt PE EHt PA AHt PH HHt PL LHt PB
1 BunkerHill27       RA        1 6.0   3  5.2  0 0.0  4 2.9  0   0  4 3.0  0   0  0
2 BunkerHill27       RA        2 4.5   2  3.1  3 4.7  3 4.1  0   0  3 3.5  2   1  0
3 BunkerHill27       RA        3 2.0   4  5.5  1 5.8  3 3.9  0   0  3 7.5  0   0  0
4 BunkerHill27       RA        4 2.5   3  6.2  0 0.0  3 4.0  0   0  4 5.0  0   0  0
5 BunkerHill27       RA        5 4.0   4  5.4  0 0.0  3 3.5  0   0  4 3.7  0   0  0
6 BunkerHill27       JT        6 2.0   3  4.0  0 0.0  3 4.1  0   0  2 3.5  0   0  0
total_coverage
1             11
2             13
3             11
4             10
5             11
6              8
> head(avian)
Site Observer Subpoint VOR PDB DBHt PW WHt PE EHt PA AHt PH HHt PL LHt PB total_coverage
1 BunkerHill27       RA        1 6.0   3  5.2  0 0.0  4 2.9  0   0  4 3.0  0   0  0             11
2 BunkerHill27       RA        2 4.5   2  3.1  3 4.7  3 4.1  0   0  3 3.5  2   1  0             13
3 BunkerHill27       RA        3 2.0   4  5.5  1 5.8  3 3.9  0   0  3 7.5  0   0  0             11
4 BunkerHill27       RA        4 2.5   3  6.2  0 0.0  3 4.0  0   0  4 5.0  0   0  0             10
5 BunkerHill27       RA        5 4.0   4  5.4  0 0.0  3 3.5  0   0  4 3.7  0   0  0             11
6 BunkerHill27       JT        6 2.0   3  4.0  0 0.0  3 4.1  0   0  2 3.5  0   0  0              8
> head(avian2)
Site Subpoint VOR PDB DBHt PW  WHt PE EHt PA AHt PH HHt PL LHt PB Observer
1 HortonCreek111        1   3   0    0  0    0  4 3.5  0   0  3   5  0   0  0       CL
2 HortonCreek111        2   3   0    0  4 18.5  0   0  0   0  4 5.7  0   0  0       CL
3 HortonCreek111        3   2   0    0  3 11.3  2   3  0   0  4 4.9  1 0.2  0       CL
4 HortonCreek111        4 3.5   0    0  4 15.8  0   0  0   0  3 4.2  0   0  0       CL
5 HortonCreek111        5   0   1  0.3  2  0.5  4 0.4  0   0  2 1.4  5 0.3  0       CL
6 HortonCreek111        6   0   2  0.7  3  0.5  4 0.5  0   0  1 1.6  3 0.5  1       CL
> typeof(avian2)
[1] "list"
> coverage_variables2<-names(avian2)[-(1:3)][c(T,F)]
> coverage_variables2
[1] "PDB" "PW"  "PE"  "PA"  "PH"  "PL"  "PB" 
> avian2$total_coverage<- rowSums(avian2[,coverage_variables2])
> head(avian2)
Site Subpoint VOR PDB DBHt PW  WHt PE EHt PA AHt PH HHt PL LHt PB Observer total_coverage
1 HortonCreek111        1   3   0    0  0    0  4 3.5  0   0  3   5  0   0  0       CL              7
2 HortonCreek111        2   3   0    0  4 18.5  0   0  0   0  4 5.7  0   0  0       CL              8
3 HortonCreek111        3   2   0    0  3 11.3  2   3  0   0  4 4.9  1 0.2  0       CL             10
4 HortonCreek111        4 3.5   0    0  4 15.8  0   0  0   0  3 4.2  0   0  0       CL              7
5 HortonCreek111        5   0   1  0.3  2  0.5  4 0.4  0   0  2 1.4  5 0.3  0       CL             14
6 HortonCreek111        6   0   2  0.7  3  0.5  4 0.5  0   0  1 1.6  3 0.5  1       CL             14
> v<-rbind(avian,avian2)
> v
Site Observer Subpoint  VOR PDB DBHt PW  WHt PE EHt PA  AHt PH HHt PL  LHt PB
1          BunkerHill27       RA        1    6   3  5.2  0    0  4 2.9  0  0.0  4   3  0    0  0
2          BunkerHill27       RA        2  4.5   2  3.1  3  4.7  3 4.1  0  0.0  3 3.5  2    1  0
3          BunkerHill27       RA        3    2   4  5.5  1  5.8  3 3.9  0  0.0  3 7.5  0    0  0
4          BunkerHill27       RA        4  2.5   3  6.2  0    0  3   4  0  0.0  4   5  0    0  0
5          BunkerHill27       RA        5    4   4  5.4  0    0  3 3.5  0  0.0  4 3.7  0    0  0
6          BunkerHill27       JT        6    2   3    4  0    0  3 4.1  0  0.0  2 3.5  0    0  0
7          BunkerHill27       JT        7  5.5   3  5.2  2  6.3  2 2.6  0  0.0  4 5.8  0    0  0
8          BunkerHill27       JT        8    4   2  4.4  1  4.1  2 4.3  0  0.0  5 8.2  0    0  0
9          BunkerHill27       JT        9  3.5   2  5.7  1  5.7  2 5.2  0  0.0  4 6.9  0    0  0
10         BunkerHill27       JT       10  3.5   2  4.8  0    0  1 1.7  0  0.0  5 5.7  0    0  0
11         BunkerHill26       RA        1    2   2  3.6  2    1  3 2.3  0  0.0  3   3  0    0  0
12         BunkerHill26       RA        2  4.5   3    6  2  6.1  2 4.5  0  0.0  4 4.1  0    0  0
13         BunkerHill26       RA        3    2   3  3.1  2    3  2 1.4  0  0.0  5 2.9  0    0  0
14         BunkerHill26       RA        4    1   2    5  2  0.9  4 1.5  0  0.0  3 3.4  0    0  0
15         BunkerHill26       RA        5    2   3  2.9  1  0.8  3   2  0  0.0  4   3  0    0  0
16         BunkerHill26       JT        6    2   1  1.2  1  0.6  1 2.7  0  0.0  4 4.7  0    0  0
17         BunkerHill26       JT        7  2.5   2  2.1  1  0.4  2 2.7  0  0.0  5 5.2  0    0  0
18         BunkerHill26       JT        8  2.5   3  3.8  0    0  1 2.2  0  0.0  3 5.8  0    0  1
19         BunkerHill26       JT        9    2   1  2.4  1  1.7  1 1.8  0  0.0  5 5.2  0    0  0
20         BunkerHill26       JT       10    1   0    0  0    0  1 2.1  0  0.0  4 4.1  0    0  0
21         BunkerHill25       RA        1  4.5   1  1.1  2  2.7  1 2.8  0  0.0  4 3.9  0    0  0
22         BunkerHill25       RA        2    3   1    1  2  0.8  2 2.3  0  0.0  5 3.1  0    0  0
23         BunkerHill25       RA        3    1   0    0  1  0.7  2 1.5  0  0.0  4 2.1  2  0.2  0
24         BunkerHill25       RA        4    2   2  2.3  2  2.5  2 0.5  0  0.0  4 3.5  0    0  0
25         BunkerHill25       RA        5  3.5   2  1.5  2  1.1  2   2  0  0.0  5 2.9  0    0  0
26         BunkerHill25       JT        6    1   2  1.2  2  2.7  3 1.2  0  0.0  2 2.2  3  0.4  0
27         BunkerHill25       JT        7    4   3  3.4  1  0.6  2 3.7  0  0.0  3 5.5  0    0  0
28         BunkerHill25       JT        8    2   3  3.4  2  2.4  2 1.7  0  0.0  3 4.1  0    0  0
29         BunkerHill12       JT        9  3.5   0    0  0    0  0   0  6 31.5  4 4.6  0    0  0
30         BunkerHill12       JT       10    2   0    0  0    0  0   0  6 28.5  3 3.1  0    0  0
31         BunkerHill13       RA        1   19   0    0  4  0.4  1 1.5  0  0.0  2 1.3  0    0  2
32         BunkerHill13       RA        2   19   0    0  2 10.5  0   0  4 11.7  1 3.5  0    0  3
33         BunkerHill13       RA        3   19   2  3.3  4  5.6  2 2.7  2  5.5  1 2.5  0    0  0
34         BunkerHill13       RA        4   19   1    7  5  9.3  2 3.7  0  0.0  1 3.9  0    0  0
35         BunkerHill13       RA        5   19   1    2  2  4.8  1 2.2  3 10.4  3 2.9  0    0  3
36         BunkerHill13       JT        6  2.5   2  4.6  2  4.1  2 3.8  0  0.0  2 3.9  0    0  0
37         BunkerHill13       JT        7    1   0    0  2  0.3  2 1.4  0  0.0  3 2.1  0    0  0
38         BunkerHill13       JT        8  2.5   2    3  1  1.2  2 2.4  0  0.0  4 4.5  0    0  0
39         BunkerHill13       JT        9    1   1  1.3  2  0.7  2 2.2  0  0.0  4 3.1  0    0  0
40         BunkerHill13       JT       10  0.5   1  1.5  3  2.5  2 2.9  0  0.0  3 4.1  0    0  0
41         BunkerHill14       RA        1  0.5   0    0  1  0.7  3 1.3  0  0.0  3   2  1  0.1  0
42         BunkerHill14       RA        2    1   1  0.8  1  0.5  3 1.5  0  0.0  3 6.2  2  0.3  0
43         BunkerHill14       RA        3  2.5   2  2.5  2  2.4  4 2.2  0  0.0  2   2  1  0.1  0
44         BunkerHill14       RA        4    1   3  1.5  1  1.7  3 1.8  0  0.0  3 3.5  1  0.5  0
45         BunkerHill14       RA        5  1.5   4  1.8  1  1.6  3 0.7  0  0.0  3 2.5  1  0.4  0
46         BunkerHill14       JT        6  0.5   0    0  0    0  2 1.5  0  0.0  2   3  0    0  0
47         BunkerHill14       JT        7    1   1  1.4  1  0.8  3 1.4  0  0.0  4 3.2  0    0  0
48         BunkerHill14       JT        8    1   1  0.9  2  1.1  2   1  0  0.0  4 3.1  0    0  0
49         BunkerHill14       JT        9  1.5   2  1.7  2  2.5  3   2  0  0.0  2 2.3  0    0  0
50         BunkerHill14       JT       10  3.5   3  5.4  0    0  2 3.2  0  0.0  1 2.5  0    0  0
51         BunkerHill15       RA        1    0   0    0  0    0  3 0.2  0  0.0  1   1  4  0.2  0
52         BunkerHill15       RA        2    0   0    0  1  0.1  4 0.5  0  0.0  1 1.2  3  0.1  1
53         BunkerHill15       RA        3    0   0    0  0    0  3 0.2  0  0.0  1 1.6  4  0.4  0
54         BunkerHill15       RA        4    0   0    0  0    0  4 0.3  0  0.0  1 1.6  3  0.4  0
55         BunkerHill15       RA        5    0   0    0  0    0  3 0.4  0  0.0  1 0.5  4  0.3  0
total_coverage
1                11
2                13
3                11
4                10
5                11
6                 8
7                11
8                10
9                 9
10                8
11               10
12               11
13               12
14               11
15               11
16                7
17               10
18                8
19                8
20                5
21                8
22               10
23                9
24               10
25               11
26               12
27                9
28               10
29               10
30                9
31                9
32               10
33               11
34                9
35               13
36                8
37                7
38                9
39                9
40                9
41                8
42               10
43               11
44               11
45               12
46                4
47                9
48                9
49                9
50                6
51                8
52               10
53                8
54                8
55                8
[ reached getOption("max.print") -- omitted 1033 rows ]
> tail(v)
Site Observer Subpoint VOR PDB DBHt PW WHt PE EHt PA AHt PH HHt PL LHt PB total_coverage
1083 HortonCreek112       CL        4   0   2  0.3  0   0  3 0.2  0   0  1 0.5  4 0.1  1             11
1084 HortonCreek112       CL        5   0   0    0  0   0  4 0.7  0   0  1 0.5  2 0.1  2              9
1085 HortonCreek112       CL        6   0   0    0  0   0  2 0.3  0   0  2 0.7  3 0.3  3             10
1086 HortonCreek112       CL        7   0   0    0  2 0.3  3 0.3  0   0  2 0.8  4 0.4  2             13
1087 HortonCreek112       CL        8   0   3  0.7  0   0  0   0  0   0  1 3.1  5 0.5  0              9
1088 HortonCreek112       CL        9   0   0    0  0   0  2 0.2  0   0  2 0.7  1 0.3  4              9
> 
  > summary(v$total_coverage)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
2.000   8.000  10.000   9.572  11.000  17.000 
> nrow(v)
[1] 1088
> v
Site Observer Subpoint  VOR PDB DBHt PW  WHt PE EHt PA  AHt PH HHt PL  LHt PB
1          BunkerHill27       RA        1    6   3  5.2  0    0  4 2.9  0  0.0  4   3  0    0  0
2          BunkerHill27       RA        2  4.5   2  3.1  3  4.7  3 4.1  0  0.0  3 3.5  2    1  0
3          BunkerHill27       RA        3    2   4  5.5  1  5.8  3 3.9  0  0.0  3 7.5  0    0  0
4          BunkerHill27       RA        4  2.5   3  6.2  0    0  3   4  0  0.0  4   5  0    0  0
5          BunkerHill27       RA        5    4   4  5.4  0    0  3 3.5  0  0.0  4 3.7  0    0  0
6          BunkerHill27       JT        6    2   3    4  0    0  3 4.1  0  0.0  2 3.5  0    0  0
7          BunkerHill27       JT        7  5.5   3  5.2  2  6.3  2 2.6  0  0.0  4 5.8  0    0  0
8          BunkerHill27       JT        8    4   2  4.4  1  4.1  2 4.3  0  0.0  5 8.2  0    0  0
9          BunkerHill27       JT        9  3.5   2  5.7  1  5.7  2 5.2  0  0.0  4 6.9  0    0  0
10         BunkerHill27       JT       10  3.5   2  4.8  0    0  1 1.7  0  0.0  5 5.7  0    0  0
11         BunkerHill26       RA        1    2   2  3.6  2    1  3 2.3  0  0.0  3   3  0    0  0
12         BunkerHill26       RA        2  4.5   3    6  2  6.1  2 4.5  0  0.0  4 4.1  0    0  0
13         BunkerHill26       RA        3    2   3  3.1  2    3  2 1.4  0  0.0  5 2.9  0    0  0
14         BunkerHill26       RA        4    1   2    5  2  0.9  4 1.5  0  0.0  3 3.4  0    0  0
15         BunkerHill26       RA        5    2   3  2.9  1  0.8  3   2  0  0.0  4   3  0    0  0
16         BunkerHill26       JT        6    2   1  1.2  1  0.6  1 2.7  0  0.0  4 4.7  0    0  0
17         BunkerHill26       JT        7  2.5   2  2.1  1  0.4  2 2.7  0  0.0  5 5.2  0    0  0
18         BunkerHill26       JT        8  2.5   3  3.8  0    0  1 2.2  0  0.0  3 5.8  0    0  1
19         BunkerHill26       JT        9    2   1  2.4  1  1.7  1 1.8  0  0.0  5 5.2  0    0  0
20         BunkerHill26       JT       10    1   0    0  0    0  1 2.1  0  0.0  4 4.1  0    0  0
21         BunkerHill25       RA        1  4.5   1  1.1  2  2.7  1 2.8  0  0.0  4 3.9  0    0  0
22         BunkerHill25       RA        2    3   1    1  2  0.8  2 2.3  0  0.0  5 3.1  0    0  0
23         BunkerHill25       RA        3    1   0    0  1  0.7  2 1.5  0  0.0  4 2.1  2  0.2  0
24         BunkerHill25       RA        4    2   2  2.3  2  2.5  2 0.5  0  0.0  4 3.5  0    0  0
25         BunkerHill25       RA        5  3.5   2  1.5  2  1.1  2   2  0  0.0  5 2.9  0    0  0
26         BunkerHill25       JT        6    1   2  1.2  2  2.7  3 1.2  0  0.0  2 2.2  3  0.4  0
27         BunkerHill25       JT        7    4   3  3.4  1  0.6  2 3.7  0  0.0  3 5.5  0    0  0
28         BunkerHill25       JT        8    2   3  3.4  2  2.4  2 1.7  0  0.0  3 4.1  0    0  0
29         BunkerHill12       JT        9  3.5   0    0  0    0  0   0  6 31.5  4 4.6  0    0  0
30         BunkerHill12       JT       10    2   0    0  0    0  0   0  6 28.5  3 3.1  0    0  0
31         BunkerHill13       RA        1   19   0    0  4  0.4  1 1.5  0  0.0  2 1.3  0    0  2
32         BunkerHill13       RA        2   19   0    0  2 10.5  0   0  4 11.7  1 3.5  0    0  3
33         BunkerHill13       RA        3   19   2  3.3  4  5.6  2 2.7  2  5.5  1 2.5  0    0  0
34         BunkerHill13       RA        4   19   1    7  5  9.3  2 3.7  0  0.0  1 3.9  0    0  0
35         BunkerHill13       RA        5   19   1    2  2  4.8  1 2.2  3 10.4  3 2.9  0    0  3
36         BunkerHill13       JT        6  2.5   2  4.6  2  4.1  2 3.8  0  0.0  2 3.9  0    0  0
37         BunkerHill13       JT        7    1   0    0  2  0.3  2 1.4  0  0.0  3 2.1  0    0  0
38         BunkerHill13       JT        8  2.5   2    3  1  1.2  2 2.4  0  0.0  4 4.5  0    0  0
39         BunkerHill13       JT        9    1   1  1.3  2  0.7  2 2.2  0  0.0  4 3.1  0    0  0
40         BunkerHill13       JT       10  0.5   1  1.5  3  2.5  2 2.9  0  0.0  3 4.1  0    0  0
41         BunkerHill14       RA        1  0.5   0    0  1  0.7  3 1.3  0  0.0  3   2  1  0.1  0
42         BunkerHill14       RA        2    1   1  0.8  1  0.5  3 1.5  0  0.0  3 6.2  2  0.3  0
43         BunkerHill14       RA        3  2.5   2  2.5  2  2.4  4 2.2  0  0.0  2   2  1  0.1  0
44         BunkerHill14       RA        4    1   3  1.5  1  1.7  3 1.8  0  0.0  3 3.5  1  0.5  0
45         BunkerHill14       RA        5  1.5   4  1.8  1  1.6  3 0.7  0  0.0  3 2.5  1  0.4  0
46         BunkerHill14       JT        6  0.5   0    0  0    0  2 1.5  0  0.0  2   3  0    0  0
47         BunkerHill14       JT        7    1   1  1.4  1  0.8  3 1.4  0  0.0  4 3.2  0    0  0
48         BunkerHill14       JT        8    1   1  0.9  2  1.1  2   1  0  0.0  4 3.1  0    0  0
49         BunkerHill14       JT        9  1.5   2  1.7  2  2.5  3   2  0  0.0  2 2.3  0    0  0
50         BunkerHill14       JT       10  3.5   3  5.4  0    0  2 3.2  0  0.0  1 2.5  0    0  0
51         BunkerHill15       RA        1    0   0    0  0    0  3 0.2  0  0.0  1   1  4  0.2  0
52         BunkerHill15       RA        2    0   0    0  1  0.1  4 0.5  0  0.0  1 1.2  3  0.1  1
53         BunkerHill15       RA        3    0   0    0  0    0  3 0.2  0  0.0  1 1.6  4  0.4  0
54         BunkerHill15       RA        4    0   0    0  0    0  4 0.3  0  0.0  1 1.6  3  0.4  0
55         BunkerHill15       RA        5    0   0    0  0    0  3 0.4  0  0.0  1 0.5  4  0.3  0
total_coverage
1                11
2                13
3                11
4                10
5                11
6                 8
7                11
8                10
9                 9
10                8
11               10
12               11
13               12
14               11
15               11
16                7
17               10
18                8
19                8
20                5
21                8
22               10
23                9
24               10
25               11
26               12
27                9
28               10
29               10
30                9
31                9
32               10
33               11
34                9
35               13
36                8
37                7
38                9
39                9
40                9
41                8
42               10
43               11
44               11
45               12
46                4
47                9
48                9
49                9
50                6
51                8
52               10
53                8
54                8
55                8
[ reached getOption("max.print") -- omitted 1033 rows ]
> #[1] 1088
  > #Task 2
  > head(avian)
Site Observer Subpoint VOR PDB DBHt PW WHt PE EHt PA AHt PH HHt PL LHt PB total_coverage
1 BunkerHill27       RA        1 6.0   3  5.2  0 0.0  4 2.9  0   0  4 3.0  0   0  0             11
2 BunkerHill27       RA        2 4.5   2  3.1  3 4.7  3 4.1  0   0  3 3.5  2   1  0             13
3 BunkerHill27       RA        3 2.0   4  5.5  1 5.8  3 3.9  0   0  3 7.5  0   0  0             11
4 BunkerHill27       RA        4 2.5   3  6.2  0 0.0  3 4.0  0   0  4 5.0  0   0  0             10
5 BunkerHill27       RA        5 4.0   4  5.4  0 0.0  3 3.5  0   0  4 3.7  0   0  0             11
6 BunkerHill27       JT        6 2.0   3  4.0  0 0.0  3 4.1  0   0  2 3.5  0   0  0              8
> coverage_variables3<-names(avian)[-(1:5)][c(T,F)]
> coverage_variables3
[1] "DBHt"           "WHt"            "EHt"            "AHt"            "HHt"            "LHt"           
[7] "total_coverage"
> colMeans(avian[,coverage_variables3])
DBHt            WHt            EHt            AHt            HHt            LHt total_coverage 
0.7827103      1.0268224      0.9658879      0.1859813      2.3210280      0.2685140      9.5523364 
> coverage_variables3<-names(avian)[-(1:5)][c(T,F)][-18]
> coverage_variables3
[1] "DBHt"           "WHt"            "EHt"            "AHt"            "HHt"            "LHt"           
[7] "total_coverage"
> coverage_variables3<-coverage_variables3[-7]
> coverage_variables3
[1] "DBHt" "WHt"  "EHt"  "AHt"  "HHt"  "LHt" 
> colMeans(avian[,coverage_variables3])
DBHt       WHt       EHt       AHt       HHt       LHt 
0.7827103 1.0268224 0.9658879 0.1859813 2.3210280 0.2685140 
> max(avian[,coverage_variables3])
[1] 31.5
> max.col(avian[,coverage_variables3])
[1] 1 2 5 1 1 3 2 5 5 5 1 2 1 1 5 5 5 5 5 5 5 5 5 5 5 2 5 5 4 4 3 4 2 2 4 1 5 5 5 5 5 5 1 5 5 5 5 5 2 1 5 5
[53] 5 5 5 3 3 5 3 5 5 5 5 5 5 5 5 5 2 5 5 5 1 2 5 5 5 5 5 5 5 5 5 2 5 1 2 5 5 5 5 1 5 5 5 5 5 5 5 5 5 5 5 5
[105] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 3 1 4 2 1 2 1 2 1 5 4 1 4 5 4 4 4 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
[157] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 6 5 6 5 5 6 6 6 6 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
[209] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 1 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 6 6 5 1 5
[261] 5 5 5 2 6 1 5 5 5 6 5 5 5 5 5 3 5 5 5 5 5 5 5 5 5 3 5 5 3 3 5 5 5 5 5 5 5 5 2 2 3 6 5 5 6 5 3 3 3 5 3 3
[313] 3 5 3 5 5 5 5 5 6 5 3 5 5 5 5 5 5 5 5 5 5 5 5 5 5 2 5 5 3 5 5 1 5 6 3 5 5 3 5 5 5 5 3 5 5 5 5 5 5 5 5 5
[365] 5 5 5 3 5 5 5 5 5 3 5 5 5 6 3 5 5 1 5 5 5 3 5 1 5 5 5 5 5 5 5 2 5 3 3 5 1 5 3 3 3 5 5 3 2 5 1 5 5 5 5 5
[417] 2 2 5 3 5 3 5 5 3 5 5 5 5 5 5 5 5 5 5 5 5 1 5 3 1 5 5 1 5 5 1 5 5 5 5 5 5 5 5 5 5 5 5 3 5 5 5 5 5 5 5 5
[469] 5 5 5 5 5 5 5 5 1 5 5 6 3 5 5 3 5 5 5 3 5 5 5 3 6 5 3 3 5 5 5 2 5 2 5 5 5 5 6 3 5 5 5 5 6 5 5 5 3 2 2 2
[521] 2 5 5 5 5 5 5 5 5 5 4 2 2 2 2 2 5 5 5 3 5 3 5 5 5 3 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 3 5 5 5 5 5 5 2 2 2 5
[573] 5 5 5 5 5 5 5 5 3 5 5 5 5 5 1 5 5 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 2 5
[625] 5 5 5 5 5 2 5 5 5 5 5 2 5 5 1 5 5 5 5 5 5 5 5 5 1 5 5 2 5 5 5 5 5 5 2 5 5 5 5 3 5 2 5 5 5 5 1 5 5 5 5 5
[677] 5 5 5 5 3 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 1 5 5 5 5 5 5 5 5 5 5 5
[729] 5 5 5 5 5 5 5 3 3 5 3 3 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 1 5 5 2 5 5 2 5 5 5 2 2
[781] 2 5 5 5 5 5 3 5 5 5 5 5 5 3 5 5 5 5 5 5 5 2 3 2 5 5 5 5 5 5 5 5 3 5 5 5 2 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5
[833] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 2 5 5 2 5 5 5 5 2
[885] 2 5 1 2 1 5 5 5 5 5 5 5 2 5 2 5 5 5 5 5 5 5 5 5 5 5 5 5 1 5 5 5 5 5 2 5 5 5 5 5 5 5 5 5 1 5 5 5 5 5 5 5
[937] 5 5 2 5 1 5 1 5 5 1 5 1 5 5 1 1 5 1 5 5 5 5 5 1 3 3 5 2 1 5 1 5 5 3 5 5 5 5 5 5 5 1 1 5 2 1 2 5 5 5 1 5
[989] 5 1 5 5 5 5 5 3 5 5 5 5
[ reached getOption("max.print") -- omitted 70 entries ]
> maxCol(avian[,coverage_variables3])
Error in maxCol(avian[, coverage_variables3]) : 
  could not find function "maxCol"
> 
  > which.max(avian[, coverage_variables3])
Error in which.max(avian[, coverage_variables3]) : 
  (list) object cannot be coerced to type 'double'
> max(avian)
Error in FUN(X[[i]], ...) : 
  only defined on a data frame with all numeric variables
> max(avian$DBHt)
[1] 10
> max(avian$WHt)
[1] 24.5
> sapply(avian[, coverage_variables3], function(i) max(i))
DBHt  WHt  EHt  AHt  HHt  LHt 
10.0 24.5  5.3 31.5  8.2  1.3 
> ht<-sapply(avian[, coverage_variables3], function(i) max(i))
> ht<-sort(ht)
> ht
LHt  EHt  HHt DBHt  WHt  AHt 
1.3  5.3  8.2 10.0 24.5 31.5 
> ht<-sort(ht,decreasing = TRUE)
> ht
AHt  WHt DBHt  HHt  EHt  LHt 
31.5 24.5 10.0  8.2  5.3  1.3 
> "Операция "Ы""
Error: unexpected symbol in ""Операция "Ы"
> "Операция /"Ы/""
Error: unexpected symbol in ""Операция /"Ы"
#  "Операция /"Ы/""

# Concatenation of strings
#past/past0 Arguments:sep(past " ", past0 -empty string),
#collapse vector to string
paste(c('углекислый','веселящий'),'газ')
#[1] "углекислый газ" "веселящий газ" 
paste(c('углекислый','веселящий'),'газ',sep ='_')
#[1] "углекислый_газ" "веселящий_газ"
paste(c('углекислый','веселящий'),'газ',collapse = " ,а также ")
#[1] "углекислый газ ,а также веселящий газ"
# Division of string strsplit-> result list
strsplit(s,'и', fixed = TRUE)
# if fixed=FALSE, 'и'=regular expressions
strsplit(s,'[[:punct:]]')
#[:punct:]- punctuation marks

###regular expressions
s<-c('Терпение и труд - все перетрут',
     'Сделал дело - гуляй смело',
     'Работа не волк в лес не убежит')
#grep\gsub
# grep('труд',s) - index of elements s where 'труд'find
grep('труд',s)
#grepl('труд',s) -return logical vector (TRUE FALSE FALSE) of elements s where 'труд'find
grepl('труд',s)
#gsub(RE,CHANGE,STRING)-change RE jn CHANGE in STRING
gsub('\\b[[:alpha:]]{4,5}\\b','####',s) #'\\b[[:alpha:]](4,5)\\b' all words length 5 or 6

# Package STRINGR
install.packages('stringr')
library(stringr)
# all function of thise packege consistent(единообразны(входные параметры\ выхождные параметры))
str_extract(s,'н.') # first entrance 'н.' '.'- any symbol
str_replace(s,'[иа]','?') # replace first symbol from '[иа] on '?' [иа] и or а
# if add _all function make work for all words in string
str_extract_all(s,'н.') 

str_replace_all(s,'[иаео]','?')

#tolower and toupper
tolower(month.name)
toupper(month.abb)
#
nchar(NA) # функцию базового R, которая возвращает длину (количество символов) строки
#лучше использовать str_length из пакета stringr?. 

### Files and directories
getwd() # work dir
head(list.files())
list.dirs('..',recursive = FALSE)# level up dir
setwd() # change work dir
#.Rproj -project file- dir with project file - work dir

# Number formating
formatC(c(pi, exp(pi)), digits =3)
formatC(c(pi, exp(pi)), digits =3,format = 'e')

# function cat - print "as it is"
print('Операция "Ы"')
#[1] "Операция \"Ы\""
cat('Операция "Ы"')
#Операция "Ы"
# cat understend esc-sequence
print("Трус\tБалбес\nБывалый")
№[1] "Трус\tБалбес\nБывалый"
cat("Трус\tБалбес\nБывалый")
#Трус	Балбес
#Бывалый

#Task
library(stringr)

hamlet <- "To be, or not to be: that is the question:
Whether 'tis nobler in the mind to suffer
The slings and arrows of outrageous fortune,
Or to take arms against a sea of troubles,
And by opposing end them?"

hamlet <- str_replace_all(hamlet, "[:punct:]", "")
hamlet <- tolower(unlist(str_split(hamlet, "[:space:]")))
#Количество слов "to"
length(grep('to',hamlet))
#or "\\bto\\b"
#[1] 4
#Количество слов, содержащих любую букву из "f", "q" и "w"
length(grep('[fqw]',hamlet))
#[1] 7
#Количество слов, содержащих букву "b", после которой -- любой другой символ
length(grep('b.',hamlet))
#[1] 5
#Количество слов ровно из семи букв
> hamlet[grep('.......',hamlet)]
#[1] "question"   "whether"    "outrageous" "fortune"    "against"   
#[6] "troubles"   "opposing" 
length(grep('.......',hamlet))
#### http://regexr.com/
hamlet[grep('\\b\\w{7}\\b' ,hamlet)]
#[1] "whether" "fortune" "against"
length(grep('\\b\\w{7}\\b',hamlet))
#[1] 3

####FACTORS
# is gibrid numeric and character
#Как я понял фактор - некий тип для
#качественных параметров объекта(кажется перечисляемые значения)
set.seed(1337)
f<-factor(sample(LETTERS,30,replace = TRUE))
as.numeric(f)
as.character(f)
# unique levels(value) of factor
levels(f)
nlevels(f)
# indexing factors only use conditions '==' or'!='
f[f=='A']<-'Z'
f
# for del empty levels (for ex A), USE () for PRINT RESULT
(f<-droplevels(f))
# Change factors levels
levels(f)<-tolower(levels(f))
f
#[1] o o b l j i y h g d z z v f z z z y i g w s b d o z y x m z
#Levels: b d f g h i j l m o s v w x y z
# change element levels
levels(f)[1]<-'bbb'
f
#[1] o   o   bbb l   j   i   y   h   g   d   z   z   v   f   z   z   z  
#[18] y   i   g   w   s   bbb d   o   z   y   x   m   z  
#Levels: bbb d f g h i j l m o s v w x y z

###Orderly(упорядоченный) factors
# function ordered or params ordered=TRUE for factor
temp<-c('freezing cold','cold','comfortable','hot','burning hot')
ft<- ordered(sample(temp,14,replace = TRUE),temp)
ft
# For orderly factors use >= for indexing elements
ft[ft>='hot']
#[1] hot         burning hot hot         hot         burning hot
#[6] hot        
#Levels: freezing cold < cold < comfortable < hot < burning hot

### Change quantity valiable to qulity
#cut dev numeric vector  on intervals 
cut(rnorm(10),-5:5)
#[1] (-1,0]  (0,1]   (-1,0]  (-1,0]  (0,1]   (0,1]   (-1,0]  (1,2]  
#[9] (-2,-1] (0,1]  
#10 Levels: (-5,-4] (-4,-3] (-3,-2] (-2,-1] (-1,0] (0,1] (1,2] ... (4,5]
# table count elements in each interval
table(cut(rnorm(1000),-5:5))
#(-5,-4] (-4,-3] (-3,-2] (-2,-1]  (-1,0]   (0,1]   (1,2]   (2,3]   (3,4] 
#0       3      17     144     331     343     141      19       2 
#(4,5] 
#0 

#### OPTIONS
#options of activ session R as digits,error,width
#for not interpretation string as factor when load data  use:
options(stringsAsFactors = FALSE)

###tapply
### statictic data for group of data
str(warpbreaks)
'data.frame':	54 obs. of  3 variables:
#$ breaks : num  26 30 54 25 70 52 51 26 67 18 ...
#$ wool   : Factor w/ 2 levels "A","B": 1 1 1 1 1 1 1 1 1 1 ...
#$ tension: Factor w/ 3 levels "L","M","H": 1 1 1 1 1 1 1 1 1 2 ...
#tapply(vector, index, function) vector - pokazatel, index -group of data,function - raschet znachenia
tapply(warpbreaks$breaks,warpbreaks$wool,max)# -понимаем как:
#  какое  максимальное значенияwarpbreaks$breaks для каждой
# группы в warpbreaks$wool (какой тип шерсти приводит к максимальному количеству поломок)

#Task
quakes
summary(quakes$mag)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#4.00    4.30    4.60    4.62    4.90    6.40 
cut(quakes$mag,b=c(4.00,4.5,5.0,5.5,6.0,6.5),right = F)

quakes$mag
q<-quakes
gd<-seq(min(q$mag),max(q$mag),by=0.5)
q$mag<-cut(q$mag,gd,right = F)
table(q$mag)
# TRUE Solution
table(cut(quakes$mag,b=c(4.00,4.5,5.0,5.5,6.0,6.5),right = F))

##### Continue with avianHabitat.csv"

list.files(pattern ='.*\\.csv$' ) # list of file use pattern
readLines('~/R/TestR/avianHabitat.csv',5)

options(stringsAsFactors = F)
avian <- read.csv("~/R/TestR/avianHabitat.csv")
avian$Observer<-as.factor(avian$Observer)
#avian <- read.table("avianHabitat.csv", head = T, sep = ",")
str(avian)
head(avian)
summary(avian)

# Checking data
any(!complete.cases(avian))
any(avian$PDB < 0)
any(avian$PDB > 100)

check_percent_range <- function(x) {
  any(x < 0 | x > 100)
}

check_percent_range(avian$PW)

library(stringr)
coverage_variables <- names(avian)[str_detect(names(avian), "^P")]
sapply(coverage_variables, function(name) check_percent_range(avian[[name]]))

# Transforming variables
#names(avian)
#coverage_variables <- names(avian)[-(1:4)][c(T, F)]
#coverage_variables

avian$total_coverage <- rowSums(avian[, coverage_variables])
summary(avian$total_coverage)

##### old step with new variant
library(stringr)
# coverage_variables
coverage_variables<-names(avian)[str_detect(names(avian),'^P')]
#[1] "PDB" "PW"  "PE"  "PA"  "PH"  "PL"  "PB" 
# use our function check_percent_range
sapply(coverage_variables, function(name) check_percent_range(avian[[name]]))
#PDB    PW    PE    PA    PH    PL    PB 
3FALSE FALSE FALSE FALSE FALSE FALSE FALSE 

unique(avian$Site)
avian$site_name<-factor(str_replace(avian$Site,'[:digit:]+','')) #+ many time of symbol of [:digit:] 
head(avian)
tapply(avian$DBHt, avian$site_name, mean)
min(v<-tapply(avian$total_coverage, avian$site_name, mean))

#Task
library(stringr)
coverage_variablesHt<-names(avian)[str_detect(names(avian),'Ht$')]
sapply(avian[coverage_variablesHt],function(i) tapply(i, avian$Observer, max))
#    DBHt  WHt EHt  AHt HHt LHt
#JT  9.9 24.5 5.3 31.5 8.2 0.8
#RA 10.0 18.5 4.9 19.2 7.5 1.3
#RR  5.0 22.0 4.2  0.2 7.3 1.1

#####Modul #3
### 3.1 Function
# 1. Function is the same element as the vector
str(c(mean,max))
#List of 2
#$ :function (x, ...)  
#$ :function (..., na.rm = FALSE)
fun_list<-c(mean,max)
sapply(fun_list,function (f) f(1:100))
#[1]  50.5 100.0
# 2. Function can be argument other function
apply_f<-function(f,x) f(x)
sapply(fun_list, apply_f,x=1:100)
#[1]  50.5 100.0
# 3. Anonim function
apply_f(function(x) sum(x^2),1:10)
[#1] 385
# 4. Function is return value
square<-function()function(x)x^2
square()  
#function(x)x^2
#<environment: 0x669c0b8>
square()(5)
#[1] 25
# 5. Function inside function -incapsulation in R
f<-function(x){
  g<-function(y)if(y>0) 1 else if(y<0) -1 else 0
  sapply(x, g)
}
# f(-100:100) equal sign(-100:100)
all.equal(f(-100:100),sign(-100:100))
#[1] TRUE
# 6. Source code of function
#6.1ame function withot brackets
sd
#function (x, na.rm = FALSE) 
#  sqrt(var(if (is.vector(x) || is.factor(x)) x else as.double(x), 
#           na.rm = na.rm))
#<bytecode: 0x671d9a0>
#  <environment: namespace:stats>
#6.2 Use brackets for function
(f<-function(x) x^5)
#function(x) x^5
#7.Polymorphism - способность функции обрабатывать данные разных типо
methods(plot)[1:20]
#8. Return functions value 
#8.1 Use 'return'
has_na<-function(v){
  for(k in v) if (is.na(k)) return(TRUE)
  return(FALSE)
}
#8.2 Not use 'return'
has_na<-function(v) any(is.na(v))
#9. Default arguments of  function
#9.1 Arguments can have default values
#9.2 Argument can calculate 'on the fly'
#seq()
#seq(from = 1, to = 1, by = ((to - from)/(length.out - 1)),
#   length.out = NULL, along.with = NULL, ...)
seq() # from=1, to=1 
#[1] 1
seq(1,5,length.out = 11) # by=(5-1)/(11-1)
#[1] 1.0 1.4 1.8 2.2 2.6 3.0 3.4 3.8 4.2 4.6 5.0
#10. Rules of function arguments parsing
f<-function(arg1,arg2,remove_na=TRUE,...,optional_arg) {}
f(1,arg2 = 2,remove = F,optional_arg = 42,do_magic = TRUE )
# 3 step
# 1-st An exact match arguments(точное совпадение)
#arg2,optional_arg
#2-st Overlap between (частичное совпадение)
#remove ->remove_na
#3-st Number of position arg1 =1
# Other arguments in '...'(ellipsis) do_magic
#11 Probros arguments
#11.1 Use Elipsis ('...') -random argumets Ex: sum.c and ect
#11.2 Probros arguments
f<-function(x,pow=2) x^pow
integrate(f,0,1)# lower=0,upper=1,pow=2(for f default)
integrate(f,0,1,pow=5)#lower=0,upper=1,pow=2(for f through integrate(...))
#12. Binary operation
# 12.1 R have
1:5 %in% c(1,2,5)
#[1]  TRUE  TRUE FALSE FALSE  TRUE
# 12. My own
'%nin%'<-function(x,y) !(x%in%y)
1:5 %nin% c(1,2,5)
#[1] FALSE FALSE  TRUE  TRUE FALSE

#TASK
paste
paste(1:12,sep = "^^",collapse = '|') 
paste("122 2222 3333",sep = " ",collapse = '|')
paste("1st", "2nd", "3rd", sep = ", ",collapse = "?")
> paste(1:12,13:15,sep = "^^",collapse = '|')
#[1] "1^^13|2^^14|3^^15|4^^13|5^^14|6^^15|7^^13|8^^14|9^^15|10^^13|11^^14|12^^15"
decorate_string <- function(pattern,...) { 
  r<-paste(...)
  r<-paste(pattern,r,sep='')
  paste(r, sapply(lapply(strsplit(pattern, NULL), rev), paste, collapse=""),sep='')
}
> decorate_string(pattern = ".:", 1:2, 3:4, 5:6, sep = "&")
[1] ".:1&3&5:." ".:2&4&6:."
##### REVERS STR
Reverse <- function(x)
  sapply(lapply(strsplit(x, NULL), rev), paste, collapse="")

#Patter Function factory
#outer(l1,l2,paste, sep=' of ')# for all combination of l1,l2
# Generate deck card
values<- c('Ace',2:10,'Jack','Queen','King')
suits <-c('Clubs','Diamons','Hearts','Spaders')
card_deck<-outer(values,suits,paste,sep =' of ')
length(card_deck)
# Function factory
generator <-function(set) function(n)  sample(set,n,replace = T)

#Define generators
#cards
card_generator <- generator(card_deck)
# (Coin*maney)
coin_generator <- generator(c('Heads','Tall'))

#Let's play!!!
card_generator(10)
coin_generator(5)


#Task  'roulettes'  
generator <- function(set, prob = rep(1/length(set), length(set))) { 
  function(n)  sample(set,n,replace = T,prob = prob)
} 
roulette_values <- c("Zero!", 1:36)
fair_roulette <- generator(roulette_values)
rigged_prob<-c(rep((1/length(roulette_values))*2, 1),rep(1/length(roulette_values), length(roulette_values)-1))
rigged_roulette <- generator(roulette_values, prob=rigged_prob)

#TASK
"%+%" <- function(x, y) {
 NA_n = abs(length(x)-length(y))
 if(length(x)<length(y)) x<-c(x,rep(NA,NA_n))
 else y<-c(y,rep(NA,NA_n))
 x+y
}
#> 1:5 %+% 1:2   # c(2, 4, NA, NA, NA)
#[1]  2  4 NA NA NA
#> 5 %+% c(2, 6) # c(7, NA) 
#[1]  7 NA
