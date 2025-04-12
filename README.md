# Diabetes Health Indicators Analysis

![Diabetes Analysis](https://img.shields.io/badge/analysis-health%20indicators-blue)
![R](https://img.shields.io/badge/language-R-276DC3)
![License](https://img.shields.io/badge/license-MIT-green)

## Overview

This project analyzes diabetes health indicators from the BRFSS2015 dataset to identify factors associated with diabetes status and build predictive models for diabetes classification.

## Dataset

The dataset used is `diabetes_012_health_indicators_BRFSS2015.csv`, which contains:
- 253,680 survey responses
- 21 health indicators
- 3-class diabetes status (No Diabetes, Prediabetes, Diagnosed Diabetes)

## Project Structure

```
Diabetes_Health_Indicators_Analysis/
├── diabetes_analysis.Rmd       # Main R Markdown analysis file
├── data/diabetes_012_health_indicators_BRFSS2015.csv  # Dataset
├── README.md                   # This file
```

## Key Analyses

### 1. Exploratory Data Analysis
- Univariate analysis of all variables
- Distribution visualizations
- Summary statistics

### 2. Statistical Analysis
- Association tests (Cramer's V, Kruskal-Wallis, ANOVA)
- Hypothesis testing (Chi-square, Wilcoxon, Proportional tests)
- Ordinal logistic regression

### 3. Predictive Modeling
- Decision tree for diabetes prediction
- Decision tree with prediabetes focus (using upsampling)
- Model evaluation metrics

## Key Findings

1. **Strongest Associations with Diabetes Status**:
   - High BMI (p < 0.001)
   - High Blood Pressure (Cramer's V = 0.23)
   - General Health rating (Kruskal-Wallis χ² = 2.4e4)
   - Age (p < 0.001)

2. **Decision Tree Performance**:
   - Overall accuracy: 83.4%
   - Prediabetes recall: 62.1% (improved to 68.5% with upsampling)
   - Top predictive features: BMI, HighBP, GenHlth, Age

## How to Run

1. Clone this repository
2. Ensure you have R and RStudio installed
3. Install required packages:
   ```r
   install.packages(c("ggplot2", "rpart", "rpart.plot", "caret", "dplyr", 
                     "vcd", "MASS", "brant", "VGAM", "DescTools"))
   ```
4. Open `diabetes_analysis.Rmd` in RStudio and knit the document

## Dependencies

- R (≥ 4.0.0)
- CRAN packages:
  - ggplot2, rpart, caret, dplyr
  - vcd, MASS, brant, VGAM
  - DescTools

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Data source: BRFSS 2015 survey [https://www.kaggle.com/datasets/alexteboul/diabetes-health-indicators-dataset]
- R community for open-source packages
- Inspired by CDC diabetes research
```
