
# -------------------------------
# Step 1: Create Sample Dataset
# -------------------------------

churn_data <- data.frame(
  CustomerId = 1:10,
  Surname = c("Smith", "Brown", "Taylor", "Johnson", "Williams", 
              "Miller", "Davis", "Wilson", "Anderson", "Thomas"),
  Geography = c("France", "Spain", "Germany", "France", "Germany", 
                "Spain", "France", "Germany", "Spain", "France"),
  Gender = c("Male", "Female", "Female", "Male", "Female", 
             "Male", "Female", "Male", "Female", "Male"),
  Age = c(35, 40, 30, 42, 50, 28, 33, 45, 38, 41),
  CreditScore = c(650, 700, 720, 600, 580, 750, 680, 590, 710, 640),
  Balance = c(10000, 15000, 20000, 12000, 500, 22000, 0, 13000, 18000, 7000),
  NumOfProducts = c(2, 1, 1, 2, 1, 2, 1, 2, 1, 1),
  HasCrCard = c(1, 1, 0, 1, 0, 1, 1, 0, 1, 1),
  IsActiveMember = c(1, 0, 1, 0, 1, 1, 0, 0, 1, 0),
  EstimatedSalary = c(60000, 80000, 50000, 70000, 30000, 90000, 40000, 75000, 65000, 85000),
  Exited = c(0, 1, 0, 1, 1, 0, 0, 1, 0, 1)
)

# Display dataset
print(churn_data)
# Install libraries if not already installed
# install.packages(c("ggplot2", "dplyr", "corrplot"))

library(ggplot2)
library(dplyr)
library(corrplot)

# View structure
str(churn_data)

# Summary statistics
summary(churn_data)

# Count churned vs retained customers
table(churn_data$Exited)

ggplot(churn_data, aes(x = factor(Exited), fill = factor(Exited))) +
  geom_bar() +
  labs(title = "Customer Churn Distribution",
       x = "Churn (0 = No, 1 = Yes)",
       y = "Count") +
  scale_fill_manual(values = c("#1E90FF", "#FF6347")) +
  theme_minimal()

ggplot(churn_data, aes(x = Gender, fill = factor(Exited))) +
  geom_bar(position = "dodge") +
  labs(title = "Gender vs Churn",
       x = "Gender",
       y = "Count",
       fill = "Churn") +
  scale_fill_manual(values = c("#1E90FF", "#FF6347")) +
  theme_minimal()

ggplot(churn_data, aes(x = Geography, fill = factor(Exited))) +
  geom_bar(position = "dodge") +
  labs(title = "Geography vs Churn",
       x = "Country",
       y = "Count",
       fill = "Churn") +
  theme_minimal()

ggplot(churn_data, aes(x = Age, fill = factor(Exited))) +
  geom_histogram(bins = 6, alpha = 0.7, position = "identity") +
  labs(title = "Age Distribution by Churn",
       x = "Age",
       y = "Count",
       fill = "Churn") +
  scale_fill_manual(values = c("#1E90FF", "#FF6347")) +
  theme_minimal()
ggplot(churn_data, aes(x = Balance, y = EstimatedSalary, color = factor(Exited))) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Balance vs Estimated Salary (Churn Indicator)",
       x = "Balance",
       y = "Estimated Salary",
       color = "Churn") +
  theme_minimal()
# Select numeric columns for correlation
num_data <- select(churn_data, CreditScore, Age, Balance, NumOfProducts, EstimatedSalary, Exited)

corr_matrix <- cor(num_data)
corrplot(corr_matrix, method = "color", addCoef.col = "black", tl.col = "black", number.cex = 0.8)


