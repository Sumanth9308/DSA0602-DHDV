
# a.bar chart 
library(ggplot2)

# Create a data frame with the given product sales
product_sales <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)
product_sales_long <- tidyr::pivot_longer(product_sales, cols = c(January_Sales, February_Sales, March_Sales), names_to = "Month", values_to = "Sales")

ggplot(product_sales_long, aes(x = Product_Name, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales of Each Product for the First Quarter", x = "Product Name", y = "Sales", fill = "Month")

# b. Stacked area chart to represent the overall sales trend for all products over the three months
library(ggplot2)
library(tidyr)

product_sales <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)
product_sales_long <- pivot_longer(product_sales, cols = c(January_Sales, February_Sales, March_Sales), names_to = "Month", values_to = "Sales")

ggplot(product_sales_long, aes(x = Month, y = Sales, fill = Product_Name)) +
  geom_area() +
  labs(title = "Overall Sales Trend for All Products Over the Three Months", x = "Month", y = "Sales", fill = "Product Name")

# c. Table to show the monthly sales data for each product
product_sales <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

print(product_sales)

