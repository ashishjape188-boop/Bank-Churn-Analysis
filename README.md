# 📊 Customer Churn Deep Dive & Retention Strategy

## 📌 Project Overview

This project analyzes customer churn behavior using SQL, Python, and Power BI to identify key factors driving customer attrition and propose actionable retention strategies.

The objective is to understand **why customers leave**, identify **high-risk segments**, and build a **predictive churn model** supported by interactive dashboards.

---

## 🎯 Business Problem

Customer churn significantly impacts revenue and customer lifetime value. This project aims to:

* Identify customers likely to churn
* Analyze behavioral patterns
* Discover key churn drivers
* Recommend retention strategies

---

## 🛠 Tools & Technologies Used

* **SQL (MySQL)** → Data extraction & querying
* **Python** → Data cleaning, EDA, modeling
* **Power BI** → Dashboard & visualization
* **Pandas, NumPy, Seaborn, Matplotlib**
* **Scikit-learn** → Machine Learning

---

## 📂 Project Structure

```
Bank-Churn-Analysis/

│
├── data/
│   └── Churn_Modelling.csv
│
├── notebooks/
│   └── churn_analysis.ipynb
│
├── dashboards/
│   └── Customer Churn Analysis.pbix
│
├── models/
│   └── churn_model.pkl
│
├── README.md
│
└── requirements.txt
```

---

## 📊 Key Dashboard Features

The Power BI dashboard includes:

* Total Customers KPI
* Churn Rate KPI
* Churn by Geography
* Churn by Gender
* Customer Age Analysis
* Balance & Salary Trends
* Product Usage Patterns
* Customer Risk Insights

---

## 🤖 Machine Learning Model

Model Used:

* Logistic Regression

Model Output:

* Predicts customer churn probability
* Identifies key churn-driving variables

Saved Model:

```
models/churn_model.pkl
```

---

## 📈 Key Insights

* Customers aged **40–50** show higher churn rates
* **Inactive customers** are more likely to churn
* Customers with fewer products churn more frequently
* Certain geographic regions show higher churn behavior

---

## 📊 Future Improvements

* Add Random Forest model
* Create churn probability scoring
* Deploy model using Streamlit
* Add advanced feature engineering

---

## 👤 Author

**Ashish Jape**

Data Analytics | Data Science Enthusiast

---
