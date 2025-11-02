

# --------------------------------------
# 1. Create Sample Supermarket Data
# --------------------------------------
supermarket <- data.frame(
  Product = c("Bread", "Milk", "Eggs", "Soap", "Rice", "Sugar", "Oil", "Juice", "Snacks", "Butter"),
  Price = c(40, 50, 60, 30, 100, 45, 120, 80, 30, 75),
  Quantity_Sold = c(120, 150, 200, 80, 60, 110, 55, 90, 130, 70),
  Category = c("Grocery", "Dairy", "Dairy", "Personal Care", "Grocery", "Grocery", "Grocery", "Beverage", "Snacks", "Dairy")
)

# View first few rows
head(supermarket)

# --------------------------------------
# 2. Descriptive Analysis
# --------------------------------------

# View structure and summary
str(supermarket)
summary(supermarket)

# Total sales for each product
supermarket$Total_Sales <- supermarket$Price * supermarket$Quantity_Sold

# Print updated data
print(supermarket)

# Find the top-selling product
top_product <- supermarket[which.max(supermarket$Total_Sales), ]
cat("Top Selling Product:\n")
print(top_product)

# --------------------------------------
# 3. Data Visualization
# --------------------------------------

# (a) Bar Plot: Total Sales by Product
barplot(supermarket$Total_Sales,
        names.arg = supermarket$Product,
        main = "Total Sales by Product",
        xlab = "Products",
        ylab = "Total Sales (₹)",
        col = "lightblue",
        las = 2)

# (b) Pie Chart: Percentage of Total Sales by Product
sales_percentage <- supermarket$Total_Sales / sum(supermarket$Total_Sales) * 100
pie(sales_percentage,
    labels = supermarket$Product,
    main = "Sales Distribution by Product",
    col = rainbow(length(supermarket$Product)))

# (c) Histogram: Product Prices
hist(supermarket$Price,
     main = "Distribution of Product Prices",
     xlab = "Price (₹)",
     ylab = "Frequency",
     col = "lightgreen",
     border = "black")

# (d) Boxplot: Quantity Sold
boxplot(supermarket$Quantity_Sold,
        main = "Boxplot of Quantity Sold",
        ylab = "Quantity Sold",
        col = "pink",
        border = "darkred")

# (e) Scatter Plot: Price vs Quantity Sold
plot(supermarket$Price, supermarket$Quantity_Sold,
     main = "Scatter Plot: Price vs Quantity Sold",
     xlab = "Price (₹)",
     ylab = "Quantity Sold",
     col = "blue",
     pch = 19)
text(supermarket$Price, supermarket$Quantity_Sold, labels = supermarket$Product, pos = 3)


