#tidying Urbanization_over_1_million
#first, import the data
Urbanization_over_1_million <- read.csv("~/R Stuff/GDP and Cities/Urbanization_over_1_million.csv")
#now, let's convert Country.Name into a string
i <- sapply(Urbanization_over_1_million, is.factor)
Urbanization_over_1_million[i] <- lapply(Urbanization_over_1_million[i], as.character)
#create dummy variables
j <- 1
y <- 1970
s <- 2
n <- 1
#let's make our matrix
tidy.matrix <- matrix(ncol=3, nrow=6000)
tidy.data <- data.frame(tidy.matrix)
#now let's make the for loop to get data into a nice form
for(n in 1:127)
{
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- y + 1
  s <- s + 1
  tidy.data[j,1] <- Urbanization_over_1_million[n,1]
  tidy.data[j,2] <- y
  tidy.data[j,3] <- Urbanization_over_1_million[n,s]
  j <- j + 1
  y <- 1970
  s <- 2
  
}
#now let's see if it worked
View(tidy.data)
#looks good!
#time to export
write.csv(tidy.data, file = "tidy.urbanization.data.csv", row.names = FALSE)