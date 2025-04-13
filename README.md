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

### Exploratory Data Analysis

| Analysis Type       | Techniques                         | Key Findings                                                |
| ------------------- | ---------------------------------- | ----------------------------------------------------------- |
| Univariate          | Summary statistics, Distributions  | Right-skewed BMI (mean=28.38), 84.5% had cholesterol check  |
| Bivariate           | Cramer's V, ANOVA, Kruskal-Wallis  | Strongest associations: HighBP (V=0.23), DiffWalk, HighChol |
| Feature Engineering | Log transforms, BMI categorization | Improved normality with log transformations                 |

### Statistical Testing

| Hypothesis Test   | Variables Tested     | Conclusion                                   |
| ----------------- | -------------------- | -------------------------------------------- |
| Chi-square        | HighBP vs Diabetes   | Strong association (χ²=18,795, p<0.001)      |
| Kruskal-Wallis    | Age vs Diabetes      | Significant difference (χ²=8,811.8, p<0.001) |
| One-way ANOVA     | BMI vs Diabetes      | Significant difference (F=7,394, p<0.001)    |
| Proportional Test | HighBP non-diabetics | True proportion ≠ 55% (p<0.001)              |
| Wilcoxon Rank Sum | MentHlth vs Diabetes | Different distributions (p<0.001)            |

### Predictive Modeling

| Model                       | Approach              | Performance                     |
| --------------------------- | --------------------- | ------------------------------- |
| Decision Tree               | All features          | 84.46% accuracy                 |
| Decision Tree               | Upsampled prediabetes | Improved prediabetes detection  |
| Ordinal Logistic Regression | Physiological factors | Significant interaction effects |

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

## Contributors

- **[Low Jo Yi, Nicole](https://github.com/nicoleelow)**: Summary Statistics, Proportional Testing, Formatting
- **[Tian Yumeng](https://github.com/TianYumeng03)**: Summary Statistics, Single Variable Hypothesis Testing
- **[Lu ShanShan](https://github.com/shan2lu)**: Data description, finding associations, Wilcoxon Rank Sum Test, Ordinal Logistic Regression
- **[Mehta Rishika](https://github.com/Oganesson0221)**: Data description, Summary Statistics, research questions, Statistical analysis, Machine Learning
- **[Zhao Qixian](https://github.com/ZhaoQixian)**: Hypothesis questions, feature engineering, code consolidation

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Data source: [BRFSS 2015 on Kaggle](https://www.kaggle.com/datasets/alexteboul/diabetes-health-indicators-dataset)
- R community for open-source packages
- Inspired by CDC diabetes research
