#a.line chart
library(ggplot2)

df <- data.frame(
  Date = c("2023-01-01", "2023-01-02", "2023-01-03"),
  Stock_A = c(100, 105, 110),
  Stock_B = c(150, 152, 148),
  Stock_C = c(120, 118, 122)
)
df$Date <- as.Date(df$Date)

ggplot(df, aes(x = Date)) +
  geom_line(aes(y = Stock_A, color = "Stock A")) +
  geom_line(aes(y = Stock_B, color = "Stock B")) +
  geom_line(aes(y = Stock_C, color = "Stock C")) +
  labs(title = "Stock Prices of Three Companies Over Time", x = "Date", y = "Stock Price", color = "Company")



#b.bar chart
  stock_data <- data.frame(
    "Date" = c("2023-01-01", "2023-01-02", "2023-01-03"),
    "Stock_A" = c(100, 105, 110)
  )
  
  # Calculate the daily percentage change for Stock A
  stock_data$Stock_A_Percentage_Change <- c(0, diff(stock_data$Stock_A) / lag(stock_data$Stock_A) * 100)
  
  # Generate a bar chart using ggplot2
  library(ggplot2)
  ggplot(stock_data, aes(x = Date, y = Stock_A_Percentage_Change)) +
    geom_bar(stat = "identity", fill = "blue", alpha = 0.7) +
    labs(title = "Daily % Change in Stock A Prices", x = "Date", y = "% Change")
  


#c.table
library(knitr)

df <- data.frame(
  Date = c("2023-01-01", "2023-01-02", "2023-01-03"),
  Stock_A = c(100, 105, 110),
  Stock_B = c(150, 152, 148),
  Stock_C = c(120, 118, 122)
)
df$Date <- as.Date(df$Date)

kable(df, col.names = c("Date", "Stock A", "Stock B", "Stock C"))

