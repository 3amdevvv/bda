loan_data <- data.frame(
  Loan_ID = paste("L", 101:110, sep=""),
  Gender = c("Male", "Female", "Male", "Male", "Female", "Female", "Male", "Male", "Female", "Male"),
  Married = c("Yes", "No", "Yes", "Yes", "No", "No", "Yes", "No", "Yes", "Yes"),
  ApplicantIncome = c(5000, 3000, 4000, 6000, 2500, 3500, 7000, 4500, 2800, 5200),
  CoapplicantIncome = c(0, 1500, 2000, 0, 1000, 1200, 0, 1800, 0, 0),
  LoanAmount = c(200, 100, 150, 250, 90, 110, 300, 160, 80, 220),
  Loan_Status = c("Y", "N", "Y", "Y", "N", "N", "Y", "Y", "N", "Y")
)

# View the first few rows
head(loan_data)

# --------------------------------------
# 2. Descriptive Analysis
# --------------------------------------

# Structure and Summary
str(loan_data)
summary(loan_data)

# Mean, Median, and Standard Deviation of LoanAmount
mean_loan <- mean(loan_data$LoanAmount)
median_loan <- median(loan_data$LoanAmount)
sd_loan <- sd(loan_data$LoanAmount)

cat("Mean Loan Amount:", mean_loan, "\n")
cat("Median Loan Amount:", median_loan, "\n")
cat("Standard Deviation of Loan Amount:", sd_loan, "\n")

# Loan approval rate
approval_rate <- sum(loan_data$Loan_Status == "Y") / nrow(loan_data) * 100
cat("Loan Approval Rate (%):", approval_rate, "\n")

# --------------------------------------
# 3. Visualization
# --------------------------------------

# (a) Barplot: Loan Status Count
loan_status_count <- table(loan_data$Loan_Status)
barplot(loan_status_count,
        main = "Loan Approval vs Rejection",
        col = c("red", "green"),
        xlab = "Loan Status",
        ylab = "Count")

# (b) Histogram: Loan Amount Distribution
hist(loan_data$LoanAmount,
     main = "Distribution of Loan Amounts",
     xlab = "Loan Amount (in thousands)",
     col = "lightblue",
     border = "black")

# (c) Boxplot: Applicant Income vs Loan Amount
boxplot(loan_data$ApplicantIncome,
        main = "Boxplot of Applicant Income",
        col = "lightgreen",
        ylab = "Income")

# (d) Scatter Plot: Applicant Income vs Loan Amount
plot(loan_data$ApplicantIncome, loan_data$LoanAmount,
     main = "Applicant Income vs Loan Amount",
     xlab = "Applicant Income",
     ylab = "Loan Amount",
     pch = 19,
     col = ifelse(loan_data$Loan_Status == "Y", "green", "red"))
legend("topleft", legend = c("Approved", "Rejected"),
       col = c("green", "red"), pch = 19)

# (e) Pie Chart: Gender Distribution
gender_dist <- table(loan_data$Gender)
pie(gender_dist,
    main = "Gender Distribution of Applicants",
    col = c("lightblue", "pink"))
