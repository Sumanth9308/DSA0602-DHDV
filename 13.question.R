library(ggplot2)
library(dplyr)
library(leaflet)
library(DT)

# a. Map chart to visualize the distribution of cities
geographic_data <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  Avg_Temperature = c(75, 68, 80),
  Elevation = c(1000, 800, 1200)
)

map_chart <- leaflet(geographic_data) %>%
  addTiles() %>%
  addMarkers(
    lng = ~Elevation,
    lat = ~Avg_Temperature,
    popup = ~City
  ) %>%
  addProviderTiles("Esri.WorldImagery")

# b. Scatter plot to explore the relationship between average temperature and population size
scatter_plot <- ggplot(geographic_data, aes(x = Avg_Temperature, y = Population)) +
  geom_point() +
  labs(title = "Relationship between Average Temperature and Population Size",
       x = "Average Temperature",
       y = "Population")

# c. Table to display geographic data for each city
geographic_table <- datatable(geographic_data, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))

print(map_chart)
print(scatter_plot)
print(geographic_table)
