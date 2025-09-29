#  Titanic Dataset – Exploratory Data Analysis (EDA)

This project explores the classic Titanic dataset using Python. The aim is to understand survival patterns among passengers and visualize key insights.

## 🛠 Tools & Libraries
- Python
- Pandas
- Seaborn & Matplotlib

##  Key Steps Performed
- Loaded Titanic dataset from Seaborn
- Cleaned missing data (`age`, `embarked`)
- Visualized:
  - Survival distribution
  - Gender vs. survival
  - Class vs. survival
  - Age/Fare distributions
  - Correlation heatmap
  - Pairplot of key features

##  Insights
-  Females had significantly higher survival rates.
-  1st class passengers had better chances of survival.
-  Younger passengers were more likely to survive.
-  Survivors often paid higher fares.
-  Positive correlation between fare and survival.

##  Dataset
Used built-in `sns.load_dataset('titanic')` to load a titanic dataset example from the seaborn.
