library(ggplot2)

#----------------------------------------- Module 61 ------------------------------------------

#NIL

#----------------------------------------- Module 62 ------------------------------------------

movies <- read.csv(file.choose(), stringsAsFactors = TRUE)

head(movies)
tail(movies)
str(movies)
summary(movies)

colnames(movies) <- c("Film", "Genre", "CriticRatings", "AudienceRatings", "BudgetMillions", "Year")

factor(movies$Year)
movies$Year <- factor(movies$Year)

#----------------------------------------- Module 63 ------------------------------------------

library(ggplot2)

ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings))

ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings)) + geom_point()

ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings, color = Genre)) + geom_point()

ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings, color = Genre, size = BudgetMillions)) + geom_point()

#----------------------------------------- Module 64 ------------------------------------------

p <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings, color = Genre, size = BudgetMillions))
p

p + geom_point()
p + geom_line()
p + geom_point() + geom_line()
p + geom_line() + geom_point()

#----------------------------------------- Module 65 ------------------------------------------

q <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings, color = Genre, size = BudgetMillions))

q + geom_point()

#overriding aesthetics

q + geom_point(aes(size = CriticRatings))
q + geom_point(aes(color = BudgetMillions))
q + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions")

q + geom_line(size = 1) + geom_point()

#----------------------------------------- Module 66 ------------------------------------------

r <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings))
r + geom_point()

r + geom_point(aes(color = Genre))
r + geom_point(color = "DarkGreen")
r + geom_point(aes(color = "DarkGreen"))

r + geom_point(aes(size = BudgetMillions))

r + geom_point(size = 10)
r + geom_point(aes(size = 10))

#set something - don't use aesthetic
# map something - use aesthetic

#----------------------------------------- Module 67 ------------------------------------------

s <- ggplot(data = movies, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10)

s + geom_histogram(binwidth = 10, aes(fill = Genre))
s + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black")

s + geom_density()
s + geom_density(aes(fill = Genre), position = "stack")

#----------------------------------------- Module 68 ------------------------------------------

t <- ggoplot(data = movies, aes(x = AudienceRatings))
t + geom_histogram(binwidth = 10, fill = "white", color = "Blue")

#or

t <- ggplot(data = movies)
t + geom_histogram(binwidth = 10, aes(x = AudienceRatings), fill = "white", color = "Blue")

t + geom_histogram(binwidth = 10, aes(x = CriticRatings), fill = "white", color = "Blue")

t <- ggplot()

#----------------------------------------- Module 69 ------------------------------------------

?geom_smooth

u <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings), color = Genre)

u + geom_point() + geom_smooth()
u + geom_point() + geom_smooth(fill = NA)

u <- ggplot(data = movies, aes(x = Genre, y = AudieceRating, color = Genre))
u + geom_boxplot()
u + geom_boxplot(size = 1.2)

u + geom_boxplot(size = 1.2) + geom_point()
u + geom_boxplot(size = 1.2) + geom_jitter()

u + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)

#----------------------------------------- Module 70 ------------------------------------------

v <- ggplot(data = movies, aes(x = BudgetMillions))

v + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black")

v + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black") + facet_grid(Genre~.)
v + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black") + facet_grid(Genre~., scales = "free")

w <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings, color = Genre))

w + geom_point(size = 3)
w + geom_point(size = 3) + facet_Grid(Genre~.)
w + geom_point(size = 3) + facet_Grid(.~Year)
w + geom_point(size = 3) + geom_smooth() + facet_Grid(Genre~Year)
w + geom_point(aes(size = BudgetMillions)) + geom_smooth() + facet_Grid(Genre~Year)

#----------------------------------------- Module 71 ------------------------------------------

m <- ggplot(data = movies, aes(x = CriticRatings, y = AudienceRatings, size = BudgetMillions, color = genre))

m + geom_point()

m + geom_point() + xlim(50, 100) + ylim(50, 100) #won't work always

n <- ggplot(data = movies, aes(x = BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fil = Genre), color = "Black")
n + geom_histogram(binwidth = 10, aes(fil = Genre), color = "Black") + ylim(0, 50)

n + geom_histogram(binwidth = 10, aes(fill = genre), color = "Black") + coord_cartesian(ylim = c(0, 50))

w + geom_point(Aes(size = BudgetMillions) ) + geom_smooth() + facet_grid(Genre~Year) + coord_cartesian(ylim = c(0, 100))

#----------------------------------------- Module 72 ------------------------------------------

?theme

o <- ggplot(data = movies, aes(x = BudgetMillions))

h <- o + geom_histogram(binwidth = 10, aes(fill = Genre), color = "Black")

h + xlab("Money Axis") + ylab("Number of Movies")
h + xlab("Money Axis") + ylab("Number of Movies") + teme(axis.title.x = elemnt_text(color = "DarkGreen", size = 30), axis.title.y = element_text(color = "Red", size=30))
h + xlab("Money Axis") + ylab("Number of Movies") + teme(axis.title.x = elemnt_text(color = "DarkGreen", size = 30), axis.title.y = element_text(color = "Red", size=30), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20))
h + xlab("Money Axis") + ylab("Number of Movies") + teme(axis.title.x = elemnt_text(color = "DarkGreen", size = 30), axis.title.y = element_text(color = "Red", size=30), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20), legend.title = element_text(size = 30), legend.text = element_text(size = 20, legend.position = c(1, 1)))
h + xlab("Money Axis") + ylab("Number of Movies") + teme(axis.title.x = elemnt_text(color = "DarkGreen", size = 30), axis.title.y = element_text(color = "Red", size=30), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20), legend.title = element_text(size = 30), legend.text = element_text(size = 20, legend.position = c(1, 1)), legend.justification = c(1, 1))
h + xlab("Money Axis") + ylab("Number of Movies") + teme(axis.title.x = elemnt_text(color = "DarkGreen", size = 30), axis.title.y = element_text(color = "Red", size=30), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20), legend.title = element_text(size = 30), legend.text = element_text(size = 20, legend.position = c(1, 1)), legend.justification = c(1, 1), plot.title = element_text(color = "DarkBle", size = 40, family = "Courier"))