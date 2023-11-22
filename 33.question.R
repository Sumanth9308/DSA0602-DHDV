#a.Bar Chart for Distribution of Employee Ages
employee_data <- data.frame(
  "Employee" = c("John", "Alice", "Bob", "Sarah"),
  "Age" = c(32, 28, 35, 29)
)

library(ggplot2)
bar_chart <- ggplot(employee_data, aes(x = Employee, y = Age)) +
  geom_bar(stat = "identity", fill = "lightblue") +
  labs(title = "Distribution of Employee Ages",
       x = "Employee",
       y = "Age")

print(bar_chart)


#b. Pie Chart for Distribution of Employees by Gender
employee_data <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Age = c(32, 28, 35, 29),
  Gender = c("Male", "Female", "Male", "Female"),
  Department = c("HR", "Sales", "IT", "Finance"),
  Salary = c(60000, 70000, 75000, 68000)
)
library(ggplot2)
ggplot(employee_data, aes(x = "", fill = Gender)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Employees by Gender", fill = "Gender") +
  theme_void()



#c.Table for Demographic Information
employee_data <- data.frame(
  "Employee" = c("John", "Alice", "Bob", "Sarah"),
  "Age" = c(32, 28, 35, 29),
  "Gender" = c("Male", "Female", "Male", "Female"),
  "Department" = c("HR", "Sales", "IT", "Finance"),
  "Salary" = c(60000, 70000, 75000, 68000)
)
print(employee_data)