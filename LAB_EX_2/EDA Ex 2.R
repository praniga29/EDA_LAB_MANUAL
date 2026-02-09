# Roll Number : 23BAD086

library(ggplot2)
library(dplyr)

data <- read.csv("C:/Users/Praniga s/Downloads/2.ecommerce_transactions.csv")
data <- na.omit(data)

ggplot(data, aes(x = Transaction_Amount)) +
  geom_histogram(bins = 30, fill = "steelblue", color = "black") +
  labs(
    title = "Distribution of Transaction Amounts",
    x = "Transaction Amount",
    y = "Frequency"
  ) +
  theme_minimal()

ggplot(data, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "orchid") +
  labs(
    title = "Boxplot of Transaction Amounts",
    y = "Transaction Amount"
  ) +
  theme_minimal()

data$Transaction_Date <- as.Date(data$Transaction_Date)
data$Month <- format(data$Transaction_Date, "%b")

monthly_sales <- data %>%
  group_by(Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount))

ggplot(monthly_sales, aes(x = Month, y = 1, fill = Total_Sales)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "darkred") +
  labs(
    title = "Heatmap of Monthly Sales Intensity",
    x = "Month",
    y = "",
    fill = "Sales"
  ) +
  theme_minimal()

