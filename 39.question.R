# Assuming you have product sales data in a data frame named product_sales
product_sales <- data.frame(
  "Store" = c("Store A", "Store B", "Store A", "Store C"),
  "Product" = c("Widget X", "Widget Y", "Widget Y", "Widget X"),
  "Quantity_Sold" = c(100, 75, 50, 80),
  "Revenue_USD" = c(500.00, 1125.00, 750.00, 400.00)
)

library(ggplot2)

# a. Bar chart to visualize the quantity of each product
bar_chart <- ggplot(product_sales, aes(x = Product, y = Quantity_Sold, fill = Store)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product by Store",
       x = "Product",
       y = "Quantity Sold",
       fill = "Store") +
  theme_minimal()

# b. Stacked bar chart to show the quantity of each product within different stores
stacked_bar_chart <- ggplot(product_sales, aes(x = Store, y = Quantity_Sold, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product Within Different Stores",
       x = "Store",
       y = "Quantity Sold",
       fill = "Product") +
  theme_minimal()

# c. Scatter plot to explore the relationship between Revenue and Quantity
scatter_plot <- ggplot(product_sales, aes(x = Quantity_Sold, y = Revenue_USD, color = Product)) +
  geom_point() +
  labs(title = "Relationship Between Revenue and Quantity Sold",
       x = "Quantity Sold",
       y = "Revenue (USD)",
       color = "Product") +
  theme_minimal()

# Print the visualizations
print(bar_chart)
print(stacked_bar_chart)
print(scatter_plot)
