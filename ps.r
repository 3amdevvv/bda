(A) HDFS Command


(B) The following table shows the number of units of different products sold on different days:








Create five sample numeric vectors from this data visualize data using R.
# -----------------------------------------------
# R Script: Product Sales Visualization
# -----------------------------------------------

# Create numeric vectors for each product
Bread <- c(12, 3, 5, 11, 9)
Milk <- c(21, 27, 18, 20, 15)
Cola_Cans <- c(10, 1, 33, 6, 12)
Chocolate_Bars <- c(6, 7, 4, 13, 12)
Detergent <- c(5, 8, 12, 20, 23)

# Create a vector for the days of the week
Days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Display the vectors
print("Sales Data for Each Product:")
print(data.frame(Days, Bread, Milk, Cola_Cans, Chocolate_Bars, Detergent))

# -----------------------------------------------
# Visualization 1: Bar Plot for Each Product
# -----------------------------------------------
# Bar plot for Bread
barplot(Bread, names.arg = Days, col = "lightblue", main = "Bread Sales", ylab = "Units Sold")

# Bar plot for Milk
barplot(Milk, names.arg = Days, col = "lightgreen", main = "Milk Sales", ylab = "Units Sold")

# Bar plot for Cola Cans
barplot(Cola_Cans, names.arg = Days, col = "orange", main = "Cola Cans Sales", ylab = "Units Sold")

# Bar plot for Chocolate Bars
barplot(Chocolate_Bars, names.arg = Days, col = "violet", main = "Chocolate Bars Sales", ylab = "Units Sold")

# Bar plot for Detergent
barplot(Detergent, names.arg = Days, col = "pink", main = "Detergent Sales", ylab = "Units Sold")

# -----------------------------------------------
# Visualization 2: Combined Line Chart Comparison
# -----------------------------------------------
# Combine all product data into a matrix
sales_data <- rbind(Bread, Milk, Cola_Cans, Chocolate_Bars, Detergent)

# Plot line chart
matplot(t(sales_data), type = "o", pch = 19, col = c("blue", "green", "red", "purple", "orange"),
        main = "Product Sales Comparison Over Days",
        xaxt = "n", xlab = "Days", ylab = "Units Sold")
axis(1, at = 1:5, labels = Days)

# Add a legend
legend("topright",
       legend = c("Bread", "Milk", "Cola Cans", "Chocolate Bars", "Detergent"),
       col = c("blue", "green", "red", "purple", "orange"),
       lty = 1, pch = 19)

