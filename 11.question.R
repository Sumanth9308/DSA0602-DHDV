#a.Pie Chart for Sales Distribution
library(ggplot2)

sales_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

pie_chart <- ggplot(sales_data, aes(x = "", y = Sales, fill = Category)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  labs(title = "Sales Distribution Across Product Categories",
       fill = "Category") +
  theme_minimal()

print(pie_chart)

#b.Funnel Chart for Sales Conversion Process
funnel_chart <- ggplot(sales_data, aes(x = reorder(Category, -Sales), y = Sales)) +
  geom_bar(stat = "identity", fill = "#69b3a2") +
  labs(title = "Sales Conversion Process",
       x = "Category",
       y = "Sales",
       fill = "Category") +
  theme_minimal()

print(funnel_chart)

#c.Table to display the sales data for each product category
library(ggplot2)
library(plotly)
library(dplyr)

product_category_sales <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

sales_table <- product_category_sales %>%
  rename("Product Category" = Category,
         "Sales (in $)" = Sales)

print(sales_table)


