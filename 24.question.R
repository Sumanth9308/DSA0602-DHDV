#a.bar chart
library(ggplot2)

df <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

ggplot(df, aes(x = Department)) + 
  geom_bar(fill = "steelblue") +
  ggtitle("Distribution of Employees Across Departments") +
  xlab("Department") +
  ylab("Number of Employees")


#b.line chart
library(ggplot2)

df <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Performance_Score = c(85, 92, 78, 90, 76)
)
ggplot(df, aes(x = Month, y = Performance_Score)) + 
  geom_line(color = "steelblue") +
  ggtitle("Performance Trend of Employees Over Time") +
  xlab("Month") +
  ylab("Performance Score")

#c.table
library(knitr)

df <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

kable(df, caption = "Performance Data for Each Employee")


