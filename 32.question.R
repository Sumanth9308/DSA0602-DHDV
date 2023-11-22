#a. Bar Chart for Quantity of Each Product
product_inventory <- data.frame(
  "Product" = c("Laptop A", "Phone B", "Chair C", "Book D"),
  "Quantity" = c(50, 75, 120, 200)
)

library(ggplot2)
bar_chart <- ggplot(product_inventory, aes(x = Product, y = Quantity)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Quantity of Each Product in Inventory",
       x = "Product",
       y = "Quantity")

print(bar_chart)


#b.Stacked Bar Chart for Quantity Within Different Categories
product_inventory <- data.frame(
  "Product" = c("Laptop A", "Phone B", "Chair C", "Book D"),
  "Category" = c("Electronics", "Electronics", "Furniture", "Books"),
  "Quantity" = c(50, 75, 120, 200)
)
library(ggplot2)
stacked_bar_chart <- ggplot(product_inventory, aes(x = Category, y = Quantity, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product Within Categories",
       x = "Product Category",
       y = "Quantity")

print(stacked_bar_chart)


#c.Scatter Plot for Relationship Between Product Price and Quantity
product_inventory <- data.frame(
  "Product" = c("Laptop A", "Phone B", "Chair C", "Book D"),
  "Quantity" = c(50, 75, 120, 200),
  "Price" = c(800.00, 500.00, 50.00, 10.00)
)

library(ggplot2)
scatter_plot <- ggplot(product_inventory, aes(x = Quantity, y = Price, label = Product)) +
  geom_point() +
  geom_text(hjust = 1, vjust = 1) +
  labs(title = "Relationship Between Product Price and Quantity",
       x = "Quantity",
       y = "Price")

print(scatter_plot)

