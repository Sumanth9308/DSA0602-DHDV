#a.Histogram for Distribution of Quantity of Products
customer_orders <- data.frame(
  "Order ID" = c(2001, 2002, 2003, 2004),
  "Customer Name" = c("John", "Alice", "Bob", "Sarah"),
  "Product" = c("Widget X", "Widget Y", "Widget X", "Widget Z"),
  "Quantity" = c(10, 5, 8, 12),
  "Price" = c(5, 8, 5, 7)
)
library(ggplot2)
histogram <- ggplot(customer_orders, aes(x = Quantity)) +
  geom_histogram(binwidth = 1, fill = "lightblue", color = "black") +
  labs(title = "Distribution of Quantity of Products",
       x = "Quantity",
       y = "Frequency")

print(histogram)


#b.Pie Chart for Distribution of Overall Quantity and Price
library(ggplot2)
pie_chart <- ggplot(customer_orders, aes(x = "", y = Quantity, fill = as.factor(Quantity))) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Overall Quantity and Price",
       fill = "Quantity") +
  theme_void()

print(pie_chart)


#c.R Sentiment Analysis and Word Cloud Visualization
customer_feedback <- data.frame(
  "Order ID" = c(2001, 2002, 2003, 2004),
  "Customer Name" = c("John", "Alice", "Bob", "Sarah"),
  "Feedback" = c("Great service and fast delivery!", "Product quality is excellent.", "Satisfied with the purchase.", "Had issues with the order."),
  stringsAsFactors = FALSE
)
library(tm)
library(wordcloud)

corpus <- Corpus(VectorSource(customer_feedback$Feedback))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)

wordcloud(words = corpus, min.freq = 1, scale = c(3, 0.5), colors = brewer.pal(8, "Dark2"))