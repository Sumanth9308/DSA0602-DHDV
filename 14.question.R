library(ggplot2)
library(dplyr)
library(fmsb)
library(DT)

# Create survey response data
survey_data <- data.frame(
  Respondent = c(1, 2, 3),
  Question_1 = c("A", "B", "C"),
  Question_2 = c("B", "A", "A"),
  Question_3 = c("C", "D", "B")
)

# a. Stacked bar chart to display the distribution of answers for Question 1
stacked_bar_chart_q1 <- ggplot(survey_data, aes(x = factor(Respondent), fill = Question_1)) +
  geom_bar() +
  labs(title = "Distribution of Answers for Question 1",
       x = "Respondent",
       y = "Count",
       fill = "Answer")

# b. Radar chart to visualize the overall pattern of responses
radar_chart_data <- survey_data %>%
  select(-Respondent) %>%
  as.data.frame() %>%
  mutate_all(factor)

# Function to create radar chart
radarchart <- function(df, title) {
  df <- rbind(rep(1, ncol(df)), df)
  colnames(df) <- c("Question_1", "Question_2", "Question_3")
  res <- fmsb::radarchart(df, title = title)
  return(res)
}

# Create radar chart
radar_chart <- radarchart(radar_chart_data, title = "Overall Pattern of Responses")

# c. Table to show the survey response data for each respondent
respondent_table <- datatable(survey_data, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))

# Print the outputs
print(stacked_bar_chart_q1)
print(radar_chart)
print(respondent_table)
