# a.bar chart to visualize the sales of each region for the first quarter
library(ggplot2)

sales_data <- data.frame(
  Region = c("North", "North", "South", "South"),
  Month = c("Jan", "Feb", "Jan", "Feb"),
  Sales = c(5000, 6200, 4800, 5600)
)

ggplot(sales_data, aes(x = Region, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales by Region for Q1", x = "Region", y = "Sales (USD)", fill = "Month")



# b. Stacked area chart to represent the overall sales trend for all regions over the three months
library(ggplot2)

sales_data <- data.frame(
  Region = c("North", "North", "South", "South"),
  Month = c("Jan", "Feb", "Jan", "Feb"),
  Sales = c(5000, 6200, 4800, 5600)
)

ggplot(sales_data, aes(x = Month, y = Sales, fill = Region)) +
  geom_area() +
  labs(title = "Overall Sales Trend for Q1", x = "Month", y = "Sales (USD)", fill = "Region")



# c. Table to show the monthly sales data for each region
library(knitr)

sales_data <- data.frame(
  Region = c("North", "North", "South", "South"),
  Month = c("Jan", "Feb", "Jan", "Feb"),
  Sales = c(5000, 6200, 4800, 5600)
)

kable(sales_data, caption = "Monthly Sales Data for Q1")

