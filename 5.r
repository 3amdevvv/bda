

# -------------------------------------------
# Step 1: Create data frame for 10 employees
# -------------------------------------------

# Create vectors
Sr_No <- 1:10
Name <- c("Vivek", "Karan", "James", "Soham", "Renu", "Farah", "Hetal", "Mary", "Ganesh", "Krish")
Salaries <- c(21000, 55000, 67000, 50000, 54000, 40000, 30000, 70000, 20000, 15000)

# Create data frame
employees <- data.frame(Sr_No, Name, Salaries)

# Display the data
print("Employee Salary Data:")
print(employees)
# -------------------------------------------
# Step 2: Add new employees using rbind()
# -------------------------------------------

# Create new data frame for 5 more employees
new_employees <- data.frame(
  Sr_No = 11:15,
  Name = c("John", "Nina", "Aarav", "Lily", "Arjun"),
  Salaries = c(45000, 52000, 33000, 61000, 28000)
)

# Combine both data frames using rbind()
all_employees <- rbind(employees, new_employees)

# Display combined data
print("Combined Employee Salary Data:")
print(all_employees)
# -------------------------------------------
# Step 3: Visualization of Employee Salaries
# -------------------------------------------

# Bar plot for all employees
barplot(all_employees$Salaries,
        names.arg = all_employees$Name,
        col = "skyblue",
        main = "Employee Salary Distribution",
        xlab = "Employee Name",
        ylab = "Salary (in ₹)",
        las = 2,   # Rotate names vertically
        border = "darkblue")

