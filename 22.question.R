#a.histogram
library(ggplot2)

df <- data.frame(
  Age = c(28, 35, 42, 30, 45),
  stringsAsFactors = FALSE
)

ggplot(df, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "white") +
  labs(title = "Distribution of Customer Ages", x = "Age", y = "Count")


#b.pie chart
df <- data.frame(
  Satisfaction_Score = c(4, 5, 3),
  stringsAsFactors = FALSE
)
pie(df$Satisfaction_Score, labels = df$Satisfaction_Score, col = rainbow(nrow(df)), main = "Distribution of Overall Customer Satisfaction Scores")

#c.open-ended customer feedback 
feedback_data <- data.frame(
  "Customer ID" = c(1, 2, 3, 4, 5),
  "Feedback" = c("Great service!", "Very satisfied with the product.", "Could be better.", "Excellent experience.", "Outstanding service!")
)

library(tm)
corpus <- Corpus(VectorSource(feedback_data$Feedback))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)

dtm <- DocumentTermMatrix(corpus)

library(wordcloud)
wordcloud(words = names(sort(colSums(as.matrix(dtm)))), freq = colSums(as.matrix(dtm)), scale = c(3, 0.5), colors = brewer.pal(8, "Dark2"))
