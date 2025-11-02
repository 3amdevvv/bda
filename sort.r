(a) HDFS Command

(B) Write the script in R to sort the values contained in the following vector in ascending order and descending order: (23, 45, 10, 34, 89, 20, 67, 99). Demonstrate the output using graph.

# -----------------------------
# Sorting Values and Visualization in R
# -----------------------------

# Create a numeric vector
values <- c(23, 45, 10, 34, 89, 20, 67, 99)

# Display original vector
print("Original Vector:")
print(values)

# Sort in ascending order
ascending_values <- sort(values)
print("Ascending Order:")
print(ascending_values)

# Sort in descending order
descending_values <- sort(values, decreasing = TRUE)
print("Descending Order:")
print(descending_values)

# -----------------------------
# Visualization
# -----------------------------

# Plot for ascending order
barplot(ascending_values,
        main = "Values in Ascending Order",
        xlab = "Index",
        ylab = "Value",
        col = "lightblue",
        border = "darkblue")

# Plot for descending order
barplot(descending_values,
        main = "Values in Descending Order",
        xlab = "Index",
        ylab = "Value",
        col = "lightgreen",
        border = "darkgreen")

