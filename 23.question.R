#a.Create a time series object
df <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)
ts_data <- ts(df$Sales, start = c(2023, 1), frequency = 12)

# Generate a time series line chart
plot(ts_data, main = "Monthly Sales", xlab = "Month", ylab = "Sales")


#b.scatter plot
advertising_data <- data.frame(
  "Month" = c("January", "February", "March", "April", "May"),
  "Advertising_Budget" = c(5000, 6000, 7000, 5500, 8000),
  "Sales" = c(15000, 18000, 22000, 20000, 23000)
)
library(ggplot2)

scatter_plot <- ggplot(advertising_data, aes(x = Advertising_Budget, y = Sales)) +
  geom_point() +
  labs(title = "Relationship Between Advertising Budget and Monthly Sales",
       x = "Advertising Budget",
       y = "Monthly Sales")

print(scatter_plot)


#c.Create a time series object
df <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)
ts_data <- ts(df$Sales, start = c(2023, 1), frequency = 12)
acf(ts_data, main = "Autocorrelation Plot for Monthly Sales")

