# Importing library
library(stats)
library(dplyr)
library(ggplot2)
library(ggfortify)
library(cluster)
library(readr)

# Loading data set
data1 <- read.csv(file="Customersdata.csv")

# Sub-setting of only numerical type of data columns from the data set
data <- data1 %>% select(Channel, Region, Age, Fresh, Milk, Grocery, Frozen, Detergents_Paper,
                         Delicatessen, Annual.Income..k..)
head(data, n=3)
# Implementing K-means clustering with k=6
set.seed(1)
KMC = kmeans(data,6)

# cluster plot
autoplot(KMC,data,frame=TRUE)
