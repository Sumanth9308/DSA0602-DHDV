#a.grouped bar chart
library(ggplot2)

df <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)
ggplot(df, aes(x = Question_1, fill = Survey_ID)) +
  geom_bar() +
  labs(title = "Distribution of Answers for Question 1", x = "Question 1", y = "Count", fill = "Survey ID")


#b.stacked bar chart
library(ggplot2)

df <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)
# Reshape the data to long format
df_long <- reshape2::melt(df, id.vars = "Survey_ID")

ggplot(df_long, aes(x = variable, fill = value)) +
  geom_bar() +
  facet_wrap(~Survey_ID) +
  labs(title = "Overall Distribution of Responses for All Three Questions", x = NULL, y = "Count", fill = NULL)


#c.table
library(knitr)

df <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)
kable(df, col.names = c("Survey ID", "Question 1", "Question 2", "Question 3"))

