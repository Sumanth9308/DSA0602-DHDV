# a.Bar chart
library(ggplot2)

df <- data.frame(
  Date = c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05"),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_through_Rate = c(0.023, 0.027, 0.02, 0.024, 0.026)
)
df <- df[order(-df$Click_through_Rate),]

ggplot(df[1:3,], aes(x = Date, y = Click_through_Rate)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Top 3 Days with the Highest Click-through Rates") +
  xlab("Date") +
  ylab("Click-through Rate")



# b.Stacked area chart
website_traffic <- data.frame(
  "Date" = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  "Page_Views" = c(1500, 1600, 1400, 1650, 1800),
  "Click_through_Rate" = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

user_interactions <- data.frame(
  "Date" = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  "Likes" = c(500, 600, 400, 550, 700),
  "Shares" = c(200, 250, 180, 220, 300),
  "Comments" = c(100, 120, 90, 110, 150)
)

library(ggplot2)
library(tidyr)

user_interactions_long <- pivot_longer(user_interactions, cols = c("Likes", "Shares", "Comments"), names_to = "Interaction_Type", values_to = "Number_of_Interactions")

merged_data <- merge(website_traffic, user_interactions_long, by = "Date")

ggplot(merged_data, aes(x = Date, y = Number_of_Interactions, fill = Interaction_Type)) +
  geom_area() +
  labs(title = "User Interactions Distribution",
       x = "Date",
       y = "Number of Interactions",
       fill = "Interaction Type")

