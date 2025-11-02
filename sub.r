(a) HDFS Command

(b) Consider the following data frame given below:   

Subject	Class	Marks
1	1	56
2	2	75
3	1	48
4	2	69
5	1	84
6	2	53

(i) Create a subset of subject less than 4 by using subset () funcon and demonstrate the output.

(ii) Create a subject where the subject column is less than 3 and the class equals to 2 by using [] brackets and demonstrate the output using R

(iii) Visualize data

# -----------------------------------------------
# R Script: Subset and Visualization Example
# -----------------------------------------------

# Create the data frame
data <- data.frame(
  Subject = c(1, 2, 3, 4, 5, 6),
  Class = c(1, 2, 1, 2, 1, 2),
  Marks = c(56, 75, 48, 69, 84, 53)
)

# Display the original data
print("Original Data Frame:")
print(data)

# -------------------------------------------------
# (i) Subset: Subject less than 4 using subset()
# -------------------------------------------------
subset1 <- subset(data, Subject < 4)
print("Subset (Subject < 4) using subset():")
print(subset1)

# -------------------------------------------------
# (ii) Subset: Subject less than 3 AND Class equals 2 using []
# -------------------------------------------------
subset2 <- data[data$Subject < 3 & data$Class == 2, ]
print("Subset (Subject < 3 & Class == 2) using []:")
print(subset2)

# -------------------------------------------------
# (iii) Visualization
# -------------------------------------------------

# Bar plot of Marks vs Subject
barplot(data$Marks,
        names.arg = data$Subject,
        col = "lightblue",
        main = "Marks of Students by Subject",
        xlab = "Subject",
        ylab = "Marks",
        border = "darkblue")

# Box plot to compare marks by Class
boxplot(Marks ~ Class, data = data,
        main = "Marks Distribution by Class",
        xlab = "Class",
        ylab = "Marks",
        col = c("lightgreen", "lightpink"))

