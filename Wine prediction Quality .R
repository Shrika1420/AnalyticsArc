#Installing Required Libraries abd Packages
install.packages("readr")
install.packages("ggplot2")
install.packages("corrplot")
install.packages("randomForest")
install.packages("caret")
install.packages("nnet")
install.packages("class")
install.packages("rpart")
install.packages("rpart.plot")
library(readr)
library(ggplot2)
library(corrplot)
library(randomForest)
library(caret)
library(nnet)
library(class)
library(rpart)
library(rpart.plot)


# Loading the Wine Quality Dataset
data <- read.csv("winequality-red.csv")
print("Successfully Imported Data!")
head(data)


#Checking dataset for NULL/Missing Values
na_count <- colSums(is.na(data))
print(na_count)
#removing the Null/Missing values and saving as a new dataframe
wine <- na.omit(data)

#Rechecking the Null/Missing Values for new Data Frame
na_count <- colSums(is.na(wine))
print(na_count)

#Getting Summary Statistics of the Data set
summary(wine)
str(wine)
attributes(wine)$names


## Boxplot 
# Set up 4x4 layout
par(mfrow = c(4, 4), mar = c(4, 4, 2, 1))  

# Increase the aspect ratio of the plotting device
options(repr.plot.width = 8, repr.plot.height = 10)  

# Create box plots for each numeric variable before the removal of outliers
for (i in 1:12) {
  boxplot(wine[, i], main = colnames(wine)[i], xlab = "")
}

##Outlier detection
# box plot for the qualtiy variable
# before outlier removal-qualtiy
boxplot(wine$quality, main = "Boxplot of Quality (Before Outlier Removal)", xlab = "")


##Outlier removal
# Function to identify outliers using IQR method
find_outliers <- function(x) {
  outliers <- numeric()
  for (col in names(x)) {
    q1 <- quantile(x[[col]], 0.25)
    q3 <- quantile(x[[col]], 0.75)
    iqr <- q3 - q1
    lower_bound <- q1 - 1.5 * iqr
    upper_bound <- q3 + 1.5 * iqr
    outliers <- c(outliers, which(x[[col]] < lower_bound | x[[col]] > upper_bound))
  }
  return(unique(outliers))
}

# Find outliers
outlier_indices <- find_outliers(wine)

# Print total number of outliers
cat("Total number of outliers:", length(outlier_indices), "\n")

# Remove outliers
wine_cleaned <- wine[-outlier_indices,]

# after boxplot removal-quality
boxplot(wine_cleaned$quality, main = "Boxplot of Quality (After Outlier Removal)", xlab = "")


## findingCorrelation
cor(wine_cleaned)

## Group by Quality
aggregate(wine_cleaned, by=list(wine_cleaned$quality), FUN=mean)

## Countplot
plot_quality <- ggplot(wine_cleaned, aes(x=quality)) + geom_bar(fill = "skyblue")
plot_pH <- ggplot(wine_cleaned, aes(x=pH)) + geom_bar(fill = "cyan", color = "black") + theme_minimal()
plot_alcohol <- ggplot(wine_cleaned, aes(x=alcohol)) + geom_bar(fill = "orange")
plot_fixed_acidity <- ggplot(wine_cleaned, aes(x=`fixed.acidity`)) + geom_bar(fill = "lightgreen") + theme_minimal()
plot_volatile_acidity <- ggplot(wine_cleaned, aes(x=`volatile.acidity`)) + geom_bar(fill = "brown") + theme_minimal()
plot_citric_acid <- ggplot(wine_cleaned, aes(x=`citric.acid`)) + geom_bar(fill = "orange") + theme_minimal()
plot_density <- ggplot(wine_cleaned, aes(x=density)) + geom_bar(fill = "darkgreen") + theme_minimal()

# Arrange plots in a grid
plots <- list(plot_quality, plot_pH, plot_alcohol, plot_fixed_acidity, plot_volatile_acidity, plot_citric_acid, plot_density)
wrap_plots(plots, ncol = 2)

## KDE plot
ggplot(wine_cleaned[wine_cleaned$quality > 2,], aes(x=quality)) + geom_density()  + theme_minimal()

## Distplot
ggplot(wine_cleaned, aes(x=alcohol)) + geom_histogram(bins=50) + geom_bar(fill = "skyblue") 

#Histogram
par(mfrow = c(4, 3), mar = c(4, 4, 2, 1)) 

# Create histograms for each numeric variable
for (i in 1:ncol(wine_cleaned)) {
  if (is.numeric(wine_cleaned[, i])) {
    hist(wine_cleaned[, i], breaks = 50, col = "lightblue", main = colnames(wine_cleaned)[i], xlab = "")
  }
}

#Generating a Heatmap for Dataset
corr_matrix <- cor(wine_cleaned)
par(mfrow = c(1, 1)) 
corrplot(corr_matrix, method = "color", addCoef.col = "black", number.cex = 0.7, tl.cex = 0.7)


## Feature Selection
wine_cleaned$goodquality <- ifelse(wine_cleaned$quality >= 7, 1, 0)
X <- wine_cleaned[, !names(wine_cleaned) %in% c("quality", "goodquality")]
Y <- wine_cleaned$goodquality

# Splitting the Data set into train and test data
set.seed(7)
TrainIndex <- createDataPartition(Y, p = 0.7, list = FALSE)
Train <- X[TrainIndex,]
Test <- X[-TrainIndex,]
TrainLabels <- Y[TrainIndex]
TestLabels <- Y[-TrainIndex]


##Applying Logistic Regression Method
# Fit logistic regression model
model <- glm(TrainLabels ~ ., data = as.data.frame(Train), family = binomial)

# Make predictions
Y_pred <- ifelse(predict(model, newdata = as.data.frame(Test), type = "response") > 0.5, 1, 0)

# Calculating accuracy of the Logistic Regression Model
accuracy_logistic <- mean(Y_pred == TestLabels)
print(paste("Accuracy Score:", accuracy_logistic))

## KNN 
#Fit the KNN Model
model <- knn(train = Train, test = Test, cl = TrainLabels, k = 3)
# Predict
y_pred <- as.factor(model)

# Calculating accuracy of the KNN Model
accuracy_knn <- mean(y_pred == TestLabels)
print(paste("Accuracy Score:", accuracy_knn))


## Decision Tree
# Fit Decision Tree model
model <- rpart(TrainLabels ~ ., data = as.data.frame(Train), method = "class", control = rpart.control(cp = 0.01))

# Predict
y_pred <- predict(model, newdata = as.data.frame(Test), type = "class")

# Calculating accuracy of Decision Tree
accuracy_decisiontree <- mean(y_pred == TestLabels)
print(paste("Accuracy Score:", accuracy_decisiontree))

## Decision Tree Plot
# Fit Decision Tree model
model <- rpart(TrainLabels ~ ., data = as.data.frame(Train), method = "class", control = rpart.control(cp = 0.01))
# Plot decision tree
rpart.plot(model)

##counter-intuitive interesting finding
##Volatile Acidity: While high levels of volatile acidity are usually associated with lower-quality wine_cleaneds due to the perception  
##of vinegar-like taste, there might be a threshold beyond which a slightly higher level of volatile acidity enhances the complexity
##and aroma profile of the wine_cleaned, leading to higher quality ratings.

# Discretize volatile acidity into bins
wine_cleaned$VA_bins <- cut(wine_cleaned$volatile.acidity, breaks = 5)

# Calculate the average quality for each bin of volatile acidity
avg_quality <- tapply(wine_cleaned$quality, wine_cleaned$VA_bins, mean)

# Plot the bar chart
barplot(avg_quality, 
        main = "Average Quality by Volatile Acidity",
        xlab = "Volatile Acidity",
        ylab = "Average Quality",
        col = "skyblue",
        border = "black"
)


