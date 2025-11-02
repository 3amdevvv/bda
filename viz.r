(A) HDFS Command

(B) For any dataset visialize the following types of chart : Scatterplot. Bubble Chart, Bar Chart , Dot Plots ,Histogram ,Box Plot ,Pie Chart 

# -----------------------------
# R Program to visualize charts
# -----------------------------

# Load built-in dataset
data("mtcars")
head(mtcars)  # display first few rows

# -----------------------------
# 1. Scatter Plot
# -----------------------------
plot(mtcars$wt, mtcars$mpg,
     main = "Scatter Plot of MPG vs Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon (MPG)",
     col = "blue",
     pch = 19)

# -----------------------------
# 2. Bubble Chart
# (Bubble size = engine displacement)
# -----------------------------
symbols(mtcars$wt, mtcars$mpg, circles = mtcars$disp / 50,
        main = "Bubble Chart (MPG vs Weight, Bubble = Displacement)",
        xlab = "Weight (1000 lbs)",
        ylab = "Miles per Gallon (MPG)",
        inches = 0.5,
        fg = "grey", bg = "skyblue")

# -----------------------------
# 3. Bar Chart
# -----------------------------
barplot(mtcars$cyl,
        main = "Bar Chart of Number of Cylinders",
        xlab = "Cars",
        ylab = "Number of Cylinders",
        col = "lightgreen")

# -----------------------------
# 4. Dot Plot
# -----------------------------
dotchart(mtcars$mpg,
         labels = rownames(mtcars),
         main = "Dot Plot of Miles per Gallon",
         xlab = "MPG",
         col = "darkblue")

# -----------------------------
# 5. Histogram
# -----------------------------
hist(mtcars$mpg,
     main = "Histogram of Miles per Gallon",
     xlab = "MPG",
     col = "orange",
     border = "brown")

# -----------------------------
# 6. Box Plot
# -----------------------------
boxplot(mtcars$mpg ~ mtcars$cyl,
        main = "Box Plot of MPG by Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = c("pink", "lightblue", "lightgreen"))

# -----------------------------
# 7. Pie Chart
# -----------------------------
cyl_count <- table(mtcars$cyl)
pie(cyl_count,
    main = "Pie Chart of Cylinders",
    col = c("red", "green", "blue"),
    labels = paste(names(cyl_count), "cyl"))

