#a.map chart
library(ggplot2)

df <- data.frame(
  Date = c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04"),
  Temperature = c(12, 9, 15, 8),
  Precipitation = c(0.5, 2.0, 0.0, 5.0)
)
ggplot(df, aes(x = 1, y = 1, fill = Temperature)) +
  geom_tile() +
  scale_fill_gradient(low = "blue", high = "red") +
  ggtitle("Distribution of Temperature on a Geographic Map") +
  theme_void()


#b.scatter plot
library(ggplot2)

avg_temp <- mean(df$Temperature)
avg_precip <- mean(df$Precipitation)

ggplot(df, aes(x = Temperature, y = Precipitation)) + 
  geom_point(color = "steelblue") +
  ggtitle("Relationship between Average Temperature and Precipitation") +
  xlab("Average Temperature (°C)") +
  ylab("Precipitation (mm)") +
  geom_vline(xintercept = avg_temp, color = "red", linetype = "dashed") +
  geom_hline(yintercept = avg_precip, color = "red", linetype = "dashed")



#c.table
library(knitr)

df <- data.frame(
  Date = c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04"),
  Temperature = c(12, 9, 15, 8),
  Precipitation = c(0.5, 2.0, 0.0, 5.0)
)
kable(df, caption = "Weather Data for Each Date")


