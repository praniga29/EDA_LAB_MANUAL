# Roll No: 23BAD086

library(ggplot2)
library(dplyr)

traffic_data <- read.csv("C:/Users/Praniga s/Downloads/4.traffic_accidents.csv")

traffic_data <- na.omit(traffic_data)

traffic_data$Severity_Level <- as.numeric(
  factor(traffic_data$Severity,
         levels = c("Minor", "Serious", "Fatal"))
)

accident_summary <- traffic_data %>%
  group_by(Location, Accident_Type, Severity_Level) %>%
  summarise(Frequency = n(), .groups = "drop")

ggplot(accident_summary, aes(
  x = Location,
  y = Frequency,
  color = Severity_Level,
  size = Frequency,
  shape = Accident_Type
)) +
  geom_point(alpha = 0.8) +
  scale_color_gradient(low = "yellow", high = "red") +
  labs(
    title = "Traffic Accident Risk Analysis",
    x = "High-Risk Locations",
    y = "Accident Frequency",
    color = "Severity"
  ) +
  theme_minimal()
