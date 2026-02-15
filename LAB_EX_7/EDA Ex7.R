# Roll No: 23BAD086
# Over-Plotting Reduction in Big Data Visualization

rm(list = ls())

data <- read.csv("C:/Users/Praniga s/Downloads/7.social_media_interactions.csv",
                 stringsAsFactors = FALSE)

colnames(data)

data$Likes <- as.numeric(data$Likes)
data$Shares <- as.numeric(data$Shares)

data <- na.omit(data)

head(data)

# 1. Normal Scatter Plot (Shows Over-Plotting)
plot(data$Likes, data$Shares,
     main = "Over-Plotting in Social Media Data",
     xlab = "Likes",
     ylab = "Shares",
     col = "blue",
     pch = 16)

# 2. Alpha Blending
plot(data$Likes, data$Shares,
     col = rgb(0, 0, 1, alpha = 0.2),
     pch = 16,
     main = "Alpha Blending to Reduce Over-Plotting",
     xlab = "Likes",
     ylab = "Shares")

# 3. Jittering Technique
plot(jitter(data$Likes),
     jitter(data$Shares),
     col = "darkgreen",
     pch = 16,
     main = "Jittering Technique",
     xlab = "Likes",
     ylab = "Shares")

# 4. Aggregation and Binning Heatmap
likes_bins <- cut(data$Likes, breaks = 10)
shares_bins <- cut(data$Shares, breaks = 10)

agg_data <- table(likes_bins, shares_bins)

heatmap(agg_data,
        col = heat.colors(256),
        main = "Aggregation and Binning Heatmap")
