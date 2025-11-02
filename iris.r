


------------------------
# ------------------------------
# 1. Load the dataset
# ------------------------------
data(iris)          # Load built-in dataset
head(iris)          # Display first few rows

# ------------------------------
# 2. Basic Information
# ------------------------------
print("Structure of the dataset:")
str(iris)

print("Summary statistics:")
summary(iris)

print("Dimensions of the dataset:")
dim(iris)

# ------------------------------
# 3. Descriptive Statistics
# ------------------------------
mean_values <- sapply(iris[, 1:4], mean)
median_values <- sapply(iris[, 1:4], median)
sd_values <- sapply(iris[, 1:4], sd)

cat("\nMean values:\n"); print(mean_values)
cat("\nMedian values:\n"); print(median_values)
cat("\nStandard Deviations:\n"); print(sd_values)

# ------------------------------
# 4. Basic Visualizations (Base R)
# ------------------------------

# Scatter Plot: Sepal.Length vs Petal.Length
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Scatter Plot: Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = as.numeric(iris$Species),
     pch = 19)
legend("topleft", legend = levels(iris$Species),
       col = 1:3, pch = 19)

# Histogram of Sepal.Length
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length",
     col = "lightblue",
     border = "black")

# Boxplot: Sepal.Width by Species
boxplot(Sepal.Width ~ Species, data = iris,
        main = "Boxplot of Sepal Width by Species",
        col = c("pink", "lightgreen", "lightblue"),
        ylab = "Sepal Width")

# Pairwise scatterplots of all numeric variables
pairs(iris[1:4],
      main = "Pairwise Scatterplots of Iris Features",
      pch = 19,
      col = as.numeric(iris$Species))

# Barplot: Mean Sepal Length by Species
species_means <- tapply(iris$Sepal.Length, iris$Species, mean)
barplot(species_means,
        main = "Mean Sepal Length by Species",
        col = c("orange", "lightgreen", "lightblue"),
        ylab = "Mean Sepal Length")

# Pie Chart: Species Distribution
species_count <- table(iris$Species)
pie(species_count,
    main = "Species Distribution",
    col = c("lightblue", "lightgreen", "pink"))
