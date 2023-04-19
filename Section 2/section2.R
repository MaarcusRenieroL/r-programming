#----------------------------------------- Module 12 ------------------------------------------

# -> comment

#integer
x <- 2L
typeof(x)

#double
y <- 2.5
typeof(y)

#complex
z <- 3+2i
typeof(z)

#character
a <- "ha"
typeof(a)

#integer
b <- TRUE
typeof(x)

#----------------------------------------- Module 13 ------------------------------------------

A <- 10
B <- 5
 
C <- A+B

var1 <- 2.5
var2 <- 4

result <- var1/var2
result

answer <- sqrt(var1)
answer

greeting <- "Hello"
name <- "Bob"

message <- paste(greeting, name)
message

#----------------------------------------- Module 14 ------------------------------------------

4 < 5
10 > 100

result <- 4 < 5
result
typeof(result)

result2 <- !TRUE
result2

result | result2
result & result2

isTrue(result)

#----------------------------------------- Module 15 ------------------------------------------

while(condition){
  body of content
}

#infinite loop
while(TRUE){
  print("Hello")
}

#counter
counter<-1
while(counter<12) {
  print(counter)
  counter<-counter+1
}

#----------------------------------------- Module 16 ------------------------------------------

#NIL

#----------------------------------------- Module 17 ------------------------------------------

for(i in 1:5) {
  print("Hello")
}

for(i in 5:10) {
  print("Hello")
}

#----------------------------------------- Module 18 ------------------------------------------

x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
  answer
} else {
  answer<-"Lesser than 1"
  answer
}


if(x>1){
  answer<-"Greater than 1"
  answer
} else {
  if(x>=-1) {
    answer<-"Between -1 and 1"
    answer
  } else {
    answer<-"Lesser than 1"
    answer
  }
}



if(x>1){
  answer<-"Greater than 1"
  answer
} else if(x>=-1){
  answer<-"Between -1 and 1"
  answer
} else {
  answer<-"Lesser than 1"
  answer
}
