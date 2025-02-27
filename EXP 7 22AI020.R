print('1. HISTOGRAM')
install.packages('RColorBrewer')
library(RColorBrewer)
data(VADeaths)
par(mfrow=c(2,3))

# Histograms with different colors
hist(VADeaths, breaks=10, col=brewer.pal(3,"Set3"), main="Set3 3 colors")
hist(VADeaths, breaks=3, col=brewer.pal(3,"Set2"), main="Set2 3 colors")
hist(VADeaths, breaks=7, col=brewer.pal(3,"Set1"), main="Set1 3 colors")
hist(VADeaths, breaks=2, col=brewer.pal(8,"Set3"), main="Set3 8 colors")
hist(VADeaths, col=brewer.pal(8,"Greys"), main="Greys 8 colors")
hist(VADeaths, col=brewer.pal(8,"Greens"), main="Greens 8 colors")

print('-2.1. Line Chart')
data(AirPassengers)
plot(AirPassengers, type="l")  # Simple Line Plot

print('2.2. Bar Chart')
data("iris")
barplot(iris$Petal.Length)  # Creating simple Bar Graph
barplot(iris$Sepal.Length, col = brewer.pal(3,"Set1"))
barplot(table(iris$Species, iris$Sepal.Length), col = brewer.pal(3,"Set1"))  # Stacked Plot

print('3. Box Plot')
par(mfrow=c(2,2))
boxplot(iris$Sepal.Length, col="red")
boxplot(iris$Sepal.Length ~ iris$Species, col="red")
boxplot(iris$Sepal.Length ~ iris$Species, col=heat.colors(3))
boxplot(iris$Sepal.Length ~ iris$Species, col=topo.colors(3))
boxplot(iris$Petal.Length ~ iris$Species)

print('4. Scatter Plot')
plot(x=iris$Petal.Length)  # Simple Scatter Plot
plot(x=iris$Petal.Length, y=as.numeric(iris$Species))  # Convert Species to numeric for scatter plot

print('5. Heat Map')
X <- rnorm(10, mean=rep(1:5, each=2), sd=0.7)
y <- rnorm(10, mean=rep(c(1, 9), each=5), sd=0.1)
dataFrame <- data.frame(x=X, y=y)
set.seed(143)
dataMatrix <- as.matrix(dataFrame)[sample(1:10),]  # Convert to class 'matrix', then shuffle rows
heatmap(dataMatrix)  # Visualize hierarchical clustering via a heatmap

print('6. Correlogram')
install.packages("corrplot")
library(corrplot)
corr_matrix <- cor(mtcars)
# With circles
corrplot(corr_matrix)
# With numbers and lower triangle
corrplot(corr_matrix, method = 'number', type = "lower")

print('Area Chart')
install.packages("magrittr")
install.packages("dplyr")
install.packages('tidyverse')
library(dplyr)
library(magrittr)
library(tidyverse)
data("airquality")  # Corrected the data call
airquality %>%
  group_by(Day) %>%
  summarise(mean_wind = mean(Wind, na.rm = TRUE)) %>%
  ggplot() + 
  geom_area(aes(x = Day, y = mean_wind)) + 
  labs(title = "Area Chart of Average Wind per Day", 
       subtitle = "Using airquality data", 
       y = "Mean Wind")

