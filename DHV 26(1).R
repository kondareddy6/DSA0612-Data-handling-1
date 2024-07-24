# Load necessary libraries
install.packages("ggplot2")
install.packages("plotly")
library(ggplot2)
library(plotly)

# Create the data frame
weather_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)
ggplot(weather_data, aes(x = Humidity, y = Temperature)) +
  geom_point() +
  geom_line() +
  labs(title = "Temperature vs. Humidity",
       x = "Humidity (%)",
       y = "Temperature (°C)") +
  theme_minimal()
ggplot(weather_data, aes(x = WindSpeed, y = Temperature)) +
  geom_point() +
  geom_line() +
  labs(title = "Temperature vs. Wind Speed",
       x = "Wind Speed (km/h)",
       y = "Temperature (°C)") +
  theme_minimal()
ggplot(weather_data, aes(x = WindSpeed, y = Humidity, size = Temperature, color = Temperature)) +
  geom_point() +
  labs(title = "Wind Speed vs. Humidity (Temperature as size and color)",
       x = "Wind Speed (km/h)",
       y = "Humidity (%)",
       size = "Temperature (°C)",
       color = "Temperature (°C)") +
  theme_minimal()


