
#a.bar chart
library(ggplot2)

df <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  Quantity_Available = c(250, 175, 300),
  Price = c(20, 15, 18)
)
ggplot(df, aes(x = Product_Name, y = Quantity_Available)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Quantity of Each Product in Inventory", x = "Product Name", y = "Quantity Available")


library(ggplot2)

#b.stacked bar chart
df <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  Quantity_Available = c(250, 175, 300),
  Price = c(20, 15, 18)
)
ggplot(df, aes(x = "", y = Quantity_Available, fill = Product_Name)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar(theta = "y") +
  labs(title = "Quantity of Each Product in Inventory by Product Category", x = NULL, y = NULL) +
  scale_fill_manual(values = c("blue", "green", "red"))


library(knitr)

#c.table
df <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  Quantity_Available = c(250, 175, 300),
  Price = c(20, 15, 18)
)
kable(df, col.names = c("Product ID", "Product Name", "Quantity Available", "Price ($)"))
