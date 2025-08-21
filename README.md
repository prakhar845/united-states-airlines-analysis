# United States Airline Flight Delay Analysis

## Project Overview
This repository contains a data science capstone project focused on analyzing and predicting flight delays within the United States. The project follows a structured, two-week approach, encompassing data aggregation, exploratory data analysis, hypothesis testing, machine learning modeling, SQL analysis, and data visualization with Tableau.

## Problem Statement
According to air travel consumer reports, a significant portion of consumer complaints are related to frequent flight delays. While some delays are unavoidable (due to weather, air traffic control, etc.), many are preventable. This project aims to analyze the factors contributing to these avoidable delays to improve operational efficiency and customer satisfaction.

## Key Objectives
The primary goal is to identify the key factors that contribute to flight delays and to build a robust machine learning model to predict if a flight will be delayed.

## Project Structure
united-states-airlines-analysis/
├── United States Airlines.ipynb         # Main Jupyter Notebook for analysis
├── Airlines.csv                         # Raw data: Hospitalization details
├── airports.csv                         # Raw data: Medical examination records
├── Data Dictionary.xlsx                 # Raw data: Customer names and IDs
├── delay at airports with many runways.sql    # SQL script (example)
├── Delays by airline.sql                      # SQL script (example)
├── delays by airport elevation.sql      # SQL script (example)
├── delays by day of week.sql            # SQL script (example)
├── .gitignore                           # Git ignore file
└── README.md                            # Project README

## Getting Started

### Prerequisites
To run this project, you will need:
- Python 3.8+
- `pip` (Python package installer)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/prakhar845/united-states-airlines-analysis.git
   cd united-states-airlines-analysis

2. Create and activate a virtual environment (recommended):
   python -m venv venv
   # On Windows:
   .\venv\Scripts\activate
   # On macOS/Linux:
   source venv/bin/activate

3. Install the required Python packages:
   pip install pandas numpy matplotlib BeautifulSoup Requests seaborn scipy scikit-learn jupyter
   (Note: jupyter is needed to open and run the .ipynb notebook.)

### Running the Analysis
1. Ensure your virtual environment is active.

2. **Launch Jupyter Notebook:**
   jupyter notebook

3. In the Jupyter interface, open United States Airlines.ipynb.

4. Run all cells in the notebook to execute the data pre-processing, feature engineering, visualizations, hypothesis tests, and machine learning model development.

## Datasets

This project utilizes a combination of structured data files and external data scraped from the web.

### Core Datasets
**Airlines.xlsx:** The main flight dataset containing information on individual flights, including airline, origin, destination, timing, and a binary Delay indicator.

**airports.xlsx:** Detailed information about each airport, including its type, name, location (latitude/longitude), and elevation.

**runways.xlsx:** Contains specifics for each runway at the airports, such as length, width, and surface type.

### External Data Sources
**Airline Founding Information:** Scraped from the List of airlines of the United States Wikipedia page to determine the operational experience of each airline.

**Airport Passenger Traffic:** Scraped from the List of the busiest airports in the United States Wikipedia page to classify airports as large or medium hubs.

## Project Tasks
The project is divided into two main parts, covering the end-to-end data science lifecycle.

### Data Aggregation & Cleaning:
Merge the Airlines, airports, and runways datasets.
Perform web scraping to collect airline and airport hub information.
Consolidate all data into a single, clean dataset.
Perform missing value treatment and provide justifications.

### Exploratory Data Analysis (EDA) & Visualization:
Compare the delay performance of different airlines.
Identify which day of the week is safest for travel with minimal delays.
Analyze flight delay patterns based on departure times and flight duration.
Visualize the difference in delays between large and medium airport hubs.

### Hypothesis Testing:
Test if airport altitude affects flight delays.
Test if the number of runways at an airport impacts delays.
Test if the duration of a flight is related to its likelihood of being delayed.

### Machine Learning Modeling:
**Preprocessing:** Handle categorical variables using OneHotEncoder and OrdinalEncoder. Standardize numerical features using a Pipeline to prevent data leakage.

#### Model Building:

1. Implement and evaluate a Logistic Regression model.
2. Implement and evaluate a Decision Tree Classifier, including techniques to prevent overfitting.
3. Implement and evaluate a Gradient Boosting Classifier.

### Evaluation: 
Compare the performance of all models using accuracy reports and determine the best model for predicting flight delays.

### SQL Analysis:
Load the final dataset into a SQL database.

**Write queries to determine:**

1. The number of delayed flights per day of the week.
2. The number of delayed flights for each airline.
3. The count of delayed flights at airports with 10 or more runways.
4. A comparison of delays at airports with above-average vs. below-average elevation.

### Tableau Dashboard:
Create a compelling and interactive dashboard in Tableau.Focus on data storytelling to present key findings and insights to business stakeholders in a clear and actionable format.

## Contributing
Contributions are welcome! If you have suggestions for improvements, new analysis ideas, or bug fixes, please:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/your-feature-name).
3. Make your changes and commit them (git commit -m 'Add new feature').
4. Push to the branch (git push origin feature/your-feature-name).
5. Open a Pull Request.