# Load necessary packages
install.packages(c("ggplot2", "dplyr", "DT"))
library(ggplot2)
library(dplyr)
library(DT)

# a. Line chart to visualize the trend in daily page views
website_traffic <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Page_Views = c(1500, 1600, 1400),
  Click_through_Rate = c(2.3, 2.7, 2.0)
)
line_chart <- ggplot(website_traffic, aes(x = Date, y = Page_Views)) +
  geom_line() +
  labs(title = "Daily Page Views Trend",
       x = "Date",
       y = "Page Views")

# b. Bar chart showing the top N days with the highest click-through rates
N <- 2
top_days <- website_traffic[order(website_traffic$Click_through_Rate, decreasing = TRUE), ][1:N, ]

bar_chart <- ggplot(top_days, aes(x = Date, y = Click_through_Rate)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = paste("Top", N, "Days with Highest Click-through Rates"),
       x = "Date",
       y = "Click-through Rate")

# c. Table to show the website traffic data for each day
traffic_table <- datatable(website_traffic, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))

print(line_chart)
print(bar_chart)
print(traffic_table)
