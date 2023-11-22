
# a. Line chart for monthly sales
library(ggplot2)

df <- data.frame(
  Employee = c("John", "Alice", "Bob", "Sarah"),
  Sales = c(5000, 6200, 4500, 7400)
)
ggplot(df, aes(x = Employee, y = Sales)) + 
  geom_line(color = "steelblue") +
  ggtitle("Monthly Sales") +
  xlab("Employee") +
  ylab("Sales (in dollars)")



# b. Bar chart for top-selling employees
employee_sales <- data.frame(
  "Employee" = c("John", "Alice", "Bob", "Sarah"),
  "Sales" = c(5000, 6200, 4500, 7400)
)
bar_chart <- ggplot(employee_sales, aes(x = Employee, y = Sales)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Top-Selling Employees",
       x = "Employee",
       y = "Sales")

print(bar_chart)


# c. Scatter plot to explore the relationship between advertising budget and monthly sales
employee_data <- data.frame(
  "Employee" = c("John", "Alice", "Bob", "Sarah"),
  "Sales" = c(5000, 6200, 4500, 7400),
  "Advertising_Budget" = c(2000, 3000, 1500, 4000)
)
scatter_plot <- ggplot(employee_data, aes(x = Advertising_Budget, y = Sales)) +
  geom_point() +
  labs(title = "Relationship Between Advertising Budget and Monthly Sales",
       x = "Advertising Budget",
       y = "Sales")

# Display the scatter plot
print(scatter_plot)


