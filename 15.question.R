#a.histogram
library(ggplot2)

# Create a data frame with the given customer ages
customer_ages <- data.frame(
  Age = c(28, 35, 42, 25, 31, 29, 38, 45, 27, 33)
)
ggplot(customer_ages, aes(x = Age)) +
  geom_histogram(binwidth = 5, color = "black", fill = "lightblue") +
  labs(title = "Distribution of Customer Ages", x = "Age", y = "Count")


#b.customer satisfaction scores
library(ggplot2)

customer_satisfaction <- data.frame(
  Score = c(85, 92, 78, 90, 76)
)
ggplot(customer_satisfaction, aes(x = "", fill = Score)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Customer Satisfaction Scores", fill = "Score")


#c.customer feedback
library(tm)
library(SnowballC)
library(wordcloud)

customer_feedback <- data.frame(
  Feedback = c("I love this product!", "This product is terrible.", "It's okay, I guess.", "I'm not sure how I feel about this product.", "This product is amazing!")
)

corpus <- Corpus(VectorSource(customer_feedback$Feedback))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stemDocument)

tdm <- TermDocumentMatrix(corpus)

m <- as.matrix(tdm)

word_freq <- sort(rowSums(m), decreasing = TRUE)

wordcloud(names(word_freq), word_freq, min.freq = 1, colors = brewer.pal(8, "Dark2"))

