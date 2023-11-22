#a.histogram
library(ggplot2)
data <- data.frame(
  Customer = c("Customer A", "Customer B", "Customer A", "Customer C"),
  Product = c("Widget X", "Widget Y", "Widget Z", "Widget X"),
  Quantity = c(5, 3, 2, 4),
  Price = c(10.00, 15.00, 8.50, 9.00)
)
ggplot(data, aes(x = Quantity)) + 
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(title = "Distribution of Quantity", x = "Quantity", y = "Count")


#b.pie chart
library(ggplot2)
data <- data.frame(
  Customer = c("Customer A", "Customer B", "Customer A", "Customer C"),
  Product = c("Widget X", "Widget Y", "Widget Z", "Widget X"),
  Quantity = c(5, 3, 2, 4),
  Price = c(10.00, 15.00, 8.50, 9.00)
)
agg_data <- aggregate(cbind(Quantity, Price) ~ Customer, data = data, FUN = sum)
ggplot(agg_data, aes(x = "", y = Quantity, fill = Price)) + 
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Distribution of Quantity and Price", fill = "Price", x = NULL, y = NULL) +
  theme_void() +
  geom_text(aes(label = paste0(Quantity, "\n", Price)), position = position_stack(vjust = 0.5))


#c.open-ended customer feedback
# Assuming you have customer purchases data in a data frame named customer_purchases
customer_purchases <- data.frame(
  "Customer" = c("Customer A", "Customer B", "Customer A", "Customer C"),
  "Product" = c("Widget X", "Widget Y", "Widget Z", "Widget X"),
  "Quantity" = c(5, 3, 2, 4),
  "Price" = c(10.00, 15.00, 8.50, 9.00),
  "Feedback" = c("Great product!", "Not satisfied", "Good value for money", "Fast delivery")
)

library(wordcloud)
library(tm)

# Preprocessing for sentiment analysis
corpus <- Corpus(VectorSource(customer_purchases$Feedback))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("en"))
corpus <- tm_map(corpus, stripWhitespace)

# Create a document-term matrix
dtm <- DocumentTermMatrix(corpus)

# Convert to a data frame
feedback_matrix <- as.data.frame(as.matrix(dtm))

# Perform sentiment analysis (assuming binary sentiment)
sentiment <- colSums(feedback_matrix)

# Create a word cloud
wordcloud(names(sentiment), sentiment, scale = c(3, 0.5), colors = brewer.pal(8, "Dark2"), main = "Sentiment Word Cloud")

