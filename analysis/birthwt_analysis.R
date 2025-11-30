# Birth weight analysis in R
# Author: Divyanshi Mishra

# install MASS only once
# install.packages("MASS")

library(MASS)

# load the dataset
?birthwt
data(birthwt)

# inspect the data
View(birthwt)
nrow(birthwt)
ncol(birthwt)
dim(birthwt)
str(birthwt)

# print the 100th sample
birthwt[100, ]

# access 'smoke' column
birthwt$smoke
birthwt[, 5]

# mothers with physician visits > 3
which(birthwt$ftv > 3)
birthwt[which(birthwt$ftv > 3), ]

# convert 'low' to factor
birthwt$low <- as.factor(birthwt$low)
levels(birthwt$low)

# rename factor levels for clarity
levels(birthwt$low) <- c("Normal", "Underweight")

# counts per category
table(birthwt$low)

# histogram for age
summary(birthwt$age)
hist(birthwt$age, main = "Histogram of Age", xlab = "Mother's Age")

# relationship between low and age
table(birthwt$low, birthwt$age)
plot(birthwt$low, birthwt$age,
     xlab = "Birth Weight Category",
     ylab = "Age")

# boxplot of age distribution per birth weight category
boxplot(age ~ low, data = birthwt,
        main = "Age Distribution by Birth Weight Category",
        xlab = "Birth Weight Category",
        ylab = "Age")
