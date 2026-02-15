# Over-Plotting Reduction in Big Data Visualization – Social Media Analysis (R)

## Objective
The objective of this experiment is to apply **over-plotting reduction techniques** for analyzing large-scale social media data using **R**.  
The analysis focuses on understanding the relationship between **Likes and Shares** to improve visualization clarity in dense datasets.

---

## Dataset Description
The dataset used is `7.social_media_interactions.csv`, which contains engagement data from social media platforms.

### Key Attributes:
- **Likes** – Number of likes received  
- **Shares** – Number of shares received  

---

## Tools Used
- **R Programming Language**
- Base R Visualization Functions

---

## Data Preprocessing
- Dataset loaded using `read.csv()`
- Converted **Likes** and **Shares** into numeric format
- Removed missing values using `na.omit()`

---

## Over-Plotting Reduction Techniques Implemented

### 1. Basic Scatter Plot
- Plots **Likes vs Shares**
- Demonstrates the issue of over-plotting when many points overlap

### 2. Alpha Blending
- Implemented using `rgb()` with transparency (`alpha = 0.2`)
- Helps highlight dense regions without hiding overlapping points

### 3. Jittering Technique
- Implemented using `jitter()`
- Slightly shifts overlapping points to improve visibility

### 4. Aggregation and Binning Heatmap
- Data grouped into bins using `cut()`
- Frequency table created using `table()`
- `heatmap()` used to visualize data density
- Provides a summarized density-based view of large datasets

---

## Key Insights
- Large datasets lead to heavy overlap in traditional scatter plots
- Alpha blending reveals high-density clusters
- Jittering improves point distinguishability
- Heatmaps provide a clearer aggregated representation
- A positive relationship is observed between Likes and Shares

---

## How to Run the Code
1. Install R and RStudio  
2. Place `7.social_media_interactions.csv` in the appropriate directory  
3. Update the file path in the R script if necessary  
4. Run the script to generate all visualizations  

---

## Conclusion
This experiment demonstrates practical visualization strategies to reduce over-plotting in big data.  
These techniques improve interpretability and help extract meaningful insights from dense datasets.

---

## Author
**Roll No:** 23BAD086  
**Language:** R  
**Course:** Big Data Visualization Lab  
