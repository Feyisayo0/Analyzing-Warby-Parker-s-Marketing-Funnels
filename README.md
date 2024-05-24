# Analyzing-Warby-Parker-s-Marketing-Funnels
Analyzing Warby Parker's Marketing Funnels: A Comprehensive SQL Analysis

### Background
Warby Parker is a transformative lifestyle brand that aims to offer designer eyewear at revolutionary prices while leading the way for socially conscious businesses. Founded in 2010, Warby Parker believes in creative thinking, smart design, and doing good in the world. For every pair of eyeglasses and sunglasses sold, a pair is distributed to someone in need. This project focuses on analysing Warby Parker's marketing funnels to calculate conversion rates and provide actionable insights.

### Executive Summary
In this project, I analysed different marketing funnels of Warby Parker using SQL. The goal was to understand the user journey from taking a style quiz to trying on glasses at home and finally making a purchase.I created SQL queries to extract, clean, and analyse the data, and visualised the results to identify key trends and conversion rates.

### Goals of Analysis
- Understand the user journey: From taking the style quiz to making a purchase.
- Calculate conversion rates: For each step in the marketing funnel.
- Identify drop-off points: Where users are most likely to abandon the funnel.
- Provide actionable insights: To improve user retention and conversion rates.

### The dataset at a glance 
The survey dataset captures user responses to Warby Parker's Style Quiz, which includes five questions aimed at helping users find their ideal pair of glasses. Analysing the dataset revealed that the completion rate drops significantly from 100% for the first question to 54% for the last question, indicating potential points of user drop-off.

### Methodology
- Data Extraction: Retrieved data from the survey, quiz, home_try_on, and purchase tables.
- Data Cleaning: Ensured consistency in the data and handled missing values.
- Data Transformation: Used SQL to join tables and calculate key metrics.
- Data Analysis: Analysed conversion rates and identified trends.

### Key Insights
- Completion Rates: The completion rates for each quiz question decrease as users progress through the survey, with the lowest completion rate at the final question about the last eye exam.
- Conversion Rates: The conversion rate from quiz to home try-on is 60%, and from home try-on to purchase is 67%, resulting in an overall conversion rate of 40%.
- A/B Test Results: Users who received 5 pairs to try on at home were more likely to make a purchase (79%) compared to those who received 3 pairs (53%).

### Recommendation
- Optimise Survey Questions: Simplify or rephrase the later survey questions to improve completion rates.
- Targeted Marketing: Focus marketing efforts on users who complete the quiz but do not proceed to the home try-on stage, as they represent a significant drop-off point.
- Increase Home Try-On Options: Consider offering 5 pairs as a standard option for the home try-on program to boost purchase rates.

