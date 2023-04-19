#----------------------------------------- Module 22 ------------------------------------------

#NIL

#----------------------------------------- Module 23 ------------------------------------------

myfirstVector <- c(3, 45, 56, 732)
is.numeric(myfirstVector)
is.integer(myfirstVector)
is.double(myfirstVector)

v2 <- c(3L, 45L, 56L, 0L)
is.numeric(v2)
is.integer(v2)
is.double(v2)

sep() # sequence / ":"
rep() # replicates

seq(1:15)
1:15
seq(1, 15, 4)
z <- seq(1, 15, 4)
z

rep(3, 10)
d <- rep(3, 10)

#----------------------------------------- Module 24 ------------------------------------------

w <- c("a", "b", "c", "d", "e")
w[1]
w[2]
w[3]
w[-1]
v < -w[-3]
w[1:3]
w[3:5]
w[c(1, 3, 5)]
w[-3:-5]
w[1:2]

#----------------------------------------- Module 25 ------------------------------------------

#NIL

#----------------------------------------- Module 26 ------------------------------------------

#R specific method of printing elements in a vector
x <- rnorm(5)
for(i in x) {
  print(x)
}

#or

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])


#Conventional method of printing elements in a vector

for(i in 1:5){
  print(x[i])
}

n <- 100
a <- rnorm(N)
b <- rnorm(N)

#vectorized approach

c <- a*b

#devectorized approach

d <- rep(NA, N)

for(i in 1:100){
  d[i]<-a[i]*b[i]
}

#----------------------------------------- Module 27 ------------------------------------------

rnorm(n = 5, sd = 8)

x <- c("a", "b", "c")

c()

A <- seq(from = 10, to = 20, along.with = x)
rep(x, times = 5)

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()

sqrt(A)
paste()

#----------------------------------------- Module 28 ------------------------------------------

install.packages("ggplot2")

?rnorm
?seq

?qplot()
?ggplot()
?diamonds

library(ggplot2)

qplot(data = diamonds, carat, price, color = clarity, facets = .~clarity)

