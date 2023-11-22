#a.bar chart
library(ggplot2)

df <- data.frame(
  Product = c("Widget A", "Widget B", "Widget C", "Widget D"),
  Quantity = c(100, 75, 120, 50),
  Price = c(10.00, 15.00, 8.50, 20.00)
)
ggplot(df, aes(x = Product, y = Quantity)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Quantity of Each Product in the Inventory") +
  xlab("Product") +
  ylab("Quantity")


# b.stacked bar chart
library(ggplot2)

df <- data.frame(
  Product = c("Widget A", "Widget B", "Widget C", "Widget D"),
  Quantity = c(100, 75, 120, 50),
  Category = c("Category 1", "Category 2", "Category 1", "Category 2")
)
ggplot(df, aes(x = Category, y = Quantity, fill = Product)) + 
  geom_bar(stat = "identity") +
  ggtitle("Quantity of Each Product Within Different Product Categories") +
  xlab("Product Category") +
  ylab("Quantity")


# c.table
product_inventory <- data.frame(
  "Product" = c("Widget A", "Widget B", "Widget C", "Widget D"),
  "Quantity" = c(100, 75, 120, 50),
  "Price (USD)" = c(10.00, 15.00, 8.50, 20.00)
)
inventory_table <- DT::datatable(product_inventory, options = list(lengthMenu = c(5, 10, 15), pageLength = 5), 
                                 colnames = c("Product", "Quantity", "Price (USD)"),
                                 caption = "Product Inventory Data")
print(inventory_table)




