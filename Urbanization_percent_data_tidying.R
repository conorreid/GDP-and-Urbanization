#tidying Urbanization_percent
#first, import the data
Urbanization_percent <- read.csv("~/R Stuff/GDP and Cities/Urbanization_percent.csv")
#now, let's convert County into a string
i <- sapply(Urbanization_percent, is.factor)
Urbanization_percent[i] <- lapply(Urbanization_percent[i], as.character)
#create dummy variables
j <- 1
y <- 1970
s <- 2
n <- 1
#let's make our matrix
tidy.matrix <- matrix(ncol=3, nrow=6000)
tidy.data <- data.frame(tidy.matrix)
#now let's make the for loop to get data into a nice form
for(n in 1:104)
{
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_percent[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_percent[n,s]
  j <- j + 1
  y <- 1970
  s <- 2
}
#now let's see if it worked
View(tidy.data)
#looks good!
#time to export
write.csv(tidy.data, file = "tidy.urbanization_percent.data.csv", row.names = FALSE)
