# Assuming you have employee training hours data in a data frame named employee_training
employee_training <- data.frame(
  "Employee" = c("John", "Alice", "Bob", "Sarah"),
  "Department" = c("HR", "Sales", "IT", "Finance"),
  "Training_Hours" = c(10, 8, 12, 6)
)

library(ggplot2)
library(wordcloud)
library(tm)

# a. Histogram to represent the distribution of Training Hours
histogram <- ggplot(employee_training, aes(x = Training_Hours)) +
  geom_histogram(binwidth = 2, fill = "#0073C2FF", color = "#1F3552FF", alpha = 0.7) +
  labs(title = "Distribution of Training Hours",
       x = "Training Hours",
       y = "Frequency")

# b. Pie chart to display the overall employee Training hours
overall_hours_pie <- ggplot(employee_training, aes(x = "", y = Training_Hours, fill = Employee)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar(theta = "y") +
  labs(title = "Overall Employee Training Hours",
       fill = "Employee") +
  theme_void()

# c. Stacked bar chart to visualize the distribution of training hours by Employee
stacked_bar_chart <- ggplot(employee_training, aes(x = Employee, y = Training_Hours, fill = Department)) +
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Training Hours by Employee",
       x = "Employee",
       y = "Training Hours",
       fill = "Department") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Print the visualizations
print(histogram)
print(overall_hours_pie)
print(stacked_bar_chart)
