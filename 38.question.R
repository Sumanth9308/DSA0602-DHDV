# Assuming you have student enrollment data in a data frame named student_enrollment
student_enrollment <- data.frame(
  "Student" = c("Student A", "Student B", "Student C", "Student D"),
  "Grade_Level" = c("9th", "10th", "11th", "9th"),
  "Enrollment_Date" = as.Date(c("2023-08-15", "2023-09-02", "2023-07-20", "2023-08-30"))
)

library(ggplot2)

# a. Bar chart to visualize the average grade level of the students
bar_chart <- ggplot(student_enrollment, aes(x = Grade_Level)) +
  geom_bar(stat = "count", fill = "blue") +
  labs(title = "Average Grade Level of Students",
       x = "Grade Level",
       y = "Count") +
  theme_minimal()

# b. Stacked bar chart to show the most recent enrollment date
student_enrollment$Grade_Level <- factor(student_enrollment$Grade_Level, levels = unique(student_enrollment$Grade_Level))

stacked_bar_chart <- ggplot(student_enrollment, aes(x = Grade_Level, fill = as.factor(Enrollment_Date))) +
  geom_bar() +
  labs(title = "Most Recent Enrollment Date by Grade Level",
       x = "Grade Level",
       y = "Count",
       fill = "Enrollment Date") +
  theme_minimal()

# c. Scatter plot to explore the relationship between grade level and enrollment date
scatter_plot <- ggplot(student_enrollment, aes(x = Grade_Level, y = Enrollment_Date, color = Grade_Level)) +
  geom_point() +
  labs(title = "Relationship Between Grade Level and Enrollment Date",
       x = "Grade Level",
       y = "Enrollment Date",
       color = "Grade Level") +
  theme_minimal()

# Print the visualizations
print(bar_chart)
print(stacked_bar_chart)
print(scatter_plot)
