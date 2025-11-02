(A) HDFS Command

(B) Write a R program to create a Data Frame which contain details of 5 employees and display summary of the data using R.

# Create vectors for employee details
emp_id <- c(101, 102, 103, 104, 105)
emp_name <- c("John", "Priya", "Amit", "Sara", "Karan")
emp_age <- c(28, 32, 25, 30, 29)
emp_gender <- c("Male", "Female", "Male", "Female", "Male")
emp_salary <- c(50000, 60000, 45000, 70000, 55000)

# Create a data frame
employees <- data.frame(
  ID = emp_id,
  Name = emp_name,
  Age = emp_age,
  Gender = emp_gender,
  Salary = emp_salary
)

# Display the data frame
print("Employee Details:")
print(employees)

# Display summary of the data
print("Summary of Employee Data:")
summary(employees)

