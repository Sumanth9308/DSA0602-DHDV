#a.line chart
library(ggplot2)

df <- data.frame(
  Employee_ID = c(1, 2, 3),
  Department = c("Sales", "HR", "Marketing"),
  Years_of_Service = c(5, 3, 7),
  Performance_Score = c(85, 92, 78)
)
ggplot(df, aes(x = Years_of_Service, y = Performance_Score, group = Employee_ID, color = Department)) +
  geom_line() +
  labs(title = "Employee Performance Trend Over Time", x = "Years of Service", y = "Performance Score")

#b.bar chart
library(ggplot2)
df <- data.frame(
  Employee_ID = c(1, 2, 3),
  Department = c("Sales", "HR", "Marketing"),
  Years_of_Service = c(5, 3, 7),
  Performance_Score = c(85, 92, 78)
)
ggplot(df, aes(x = Department)) +
  geom_bar() +
  labs(title = "Distribution of Employees Across Departments", x = "Department", y = "Count")

#c.table
library(knitr)

df <- data.frame(
  Employee_ID = c(1, 2, 3),
  Department = c("Sales", "HR", "Marketing"),
  Years_of_Service = c(5, 3, 7),
  Performance_Score = c(85, 92, 78)
)
kable(df, col.names = c("Employee ID", "Department", "Years of Service", "Performance Score"))

