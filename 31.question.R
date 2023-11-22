#a.histogram
customer_feedback <- data.frame(
  "Customer" = c("Customer 1", "Customer 2", "Customer 3", "Customer 4"),
  "Rating" = c(4, 3, 5, 2),
  "Feedback" = c("Great service!", "Decent but could improve.", "Excellent experience!", "Not satisfied at all.")
)

hist(customer_feedback$Rating, main = "Distribution of Customer Ratings", xlab = "Rating", ylab = "Frequency")


#b.pie chart
customer_feedback <- data.frame(
  "Customer" = c("Customer 1", "Customer 2", "Customer 3", "Customer 4"),
  "Rating" = c(4, 3, 5, 2),
  "Feedback" = c("Great service!", "Decent but could improve.", "Excellent experience!", "Not satisfied at all.")
)

pie(table(customer_feedback$Rating), main = "Overall Distribution of Customer Ratings", 
    labels = c("2", "3", "4", "5"), col = rainbow(4))


#c.stacked bar chart
library(ggplot2)
data <- data.frame(
  Customer = c("Customer 1", "Customer 2", "Customer 3", "Customer 4"),
  Rating = c(4, 3, 5, 2),
  Feedback = c("Great service!", "Decent but could improve.", "Excellent experience!", "Not satisfied at all.")
)
agg_data <- aggregate(Feedback ~ Rating, data = data, FUN = length)
ggplot(agg_data, aes(x = Rating, y = Feedback, fill = Feedback)) + 
  geom_bar(stat = "identity") +
  labs(title = "Distribution of Feedback by Customer Rating", x = "Rating", y = "Count") +
  theme(legend.position = "none")
