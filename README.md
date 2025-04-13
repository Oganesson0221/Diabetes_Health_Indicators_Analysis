# Diabetes Health Indicators Analysis

![Diabetes Analysis](https://img.shields.io/badge/analysis-health%20indicators-blue)
![R](https://img.shields.io/badge/language-R-276DC3)
![License](https://img.shields.io/badge/license-MIT-green)

## Overview

This project analyzes diabetes health indicators from the BRFSS2015 dataset to identify factors associated with diabetes status and build predictive models for diabetes classification.

## 📂 Dataset

We analyze the [Diabetes Health Indicators Dataset](https://www.kaggle.com/datasets/alexteboul/diabetes-health-indicators-dataset) from the **2015 Behavioral Risk Factor Surveillance System (BRFSS)**:

- 📌 **253,680** survey responses
- 📌 **22** variables (21 predictors + target)
- 📌 **3-class** diabetes status:
  - 0: No Diabetes (213,703 cases)
  - 1: Prediabetes (4,631 cases)
  - 2: Diagnosed Diabetes (35,346 cases)

Key variables include:

- Physiological: HighBP, HighChol, BMI, Stroke, HeartDisease
- Lifestyle: Smoker, PhysActivity, Fruits/Veggies, Alcohol
- Socioeconomic: Income, Education, Healthcare access
- Health metrics: GenHlth, MentHlth, PhysHlth

## 📊 Analysis Highlights

### 🔍 Exploratory Analysis

| Category     | Techniques Used         | Key Visualizations    |
| ------------ | ----------------------- | --------------------- |
| Univariate   | Frequency distributions | Bar plots, Histograms |
| Bivariate    | Correlation analysis    | Box plots             |
| Data Quality | Missing value checks    | Summary tables        |

## Project Structure

```
Diabetes_Health_Indicators_Analysis/
├── Project.Rmd       # Main R Markdown analysis file
├── data/diabetes_012_health_indicators_BRFSS2015.csv  # Dataset
├── figures    # Contains the plots, and images
├── README.md
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

1. **Strongest Diabetes Predictors**:

   - High Blood Pressure (Cramer's V = 0.23)
   - Difficulty Walking (DiffWalk)
   - High Cholesterol
   - BMI (η² = 0.055)
   - Age (increasing risk with older age)

2. **Health Impact**:

   - Diabetics report more physically unhealthy days (p<0.001)
   - Mental health differs significantly (p<0.001)
   - 55% non-diabetic rate in high BP patients rejected (p<0.001)

3. **Model Insights**:
   - Top decision tree features: GenHlth, BMI, HighChol, HighBP
   - Physiological factors show significant combined effects
   - Socioeconomic status (Income+Education) improves predictions

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

- Data source: [BRFSS 2015 on Kaggle](https://www.kaggle.com/datasets/alexteboul/diabetes-health-indicators-dataset)
- R community for open-source packages
- Inspired by CDC diabetes research
