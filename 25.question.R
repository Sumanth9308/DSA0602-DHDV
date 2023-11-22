#a.bar chart
library(ggplot2)

df <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)
ggplot(df, aes(x = Product_Name, y = Quantity_Available)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Quantity of Each Product in the Inventory") +
  xlab("Product Name") +
  ylab("Quantity Available")


#b.stacked bar chart
library(ggplot2)

df <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220),
  Product_Category = c("Category 1", "Category 2", "Category 1", "Category 2", "Category 1")
)
ggplot(df, aes(x = Product_Category, y = Quantity_Available, fill = Product_Name)) + 
  geom_bar(stat = "identity") +
  ggtitle("Quantity of Each Product Within Different Product Categories") +
  xlab("Product Category") +
  ylab("Quantity Available")


#c.scatter plot
product_inventory <- data.frame(
  "Product ID" = c(1, 2, 3, 4, 5),
  "Product Name" = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  "QuantityAvailable" = c(250, 175, 300, 200, 220)
)
set.seed(123)
product_inventory$Product_Price <- runif(n = nrow(product_inventory), min = 10, max = 100)

library(ggplot2)

scatter_plot <- ggplot(product_inventory, aes(x = Product_Price, y = QuantityAvailable)) +
  geom_point() +
  labs(title = "Relationship Between Product Price and Quantity Available",
       x = "Product Price",
       y = "Quantity Available")

print(scatter_plot)


