-- Select all columns from the first 10 rows of the survey table
-- This helps us understand the structure and columns of the survey table
SELECT *
FROM survey
LIMIT 10;

-- Count the number of responses for each question in the survey table
-- This helps us analyze how many users answer each question in the quiz
SELECT question, COUNT(DISTINCT user_id) 
 FROM survey
GROUP BY question;

-- Examine the first five rows of the quiz table
-- This helps us understand the structure and columns of the quiz table
SELECT * 
FROM quiz
LIMIT 5;

-- Examine the first five rows of the home_try_on table
-- This helps us understand the structure and columns of the home_try_on table
SELECT *
FROM home_try_on
LIMIT 5;

-- Examine the first five rows of the purchase table
-- This helps us understand the structure and columns of the purchase table
SELECT *
FROM purchase
LIMIT 5;

-- Create the combined table using LEFT JOINs
-- This combines the quiz, home_try_on, and purchase tables to create a comprehensive view of the user journey
SELECT 
    q.user_id,
    CASE 
        WHEN h.user_id IS NOT NULL THEN TRUE
        ELSE FALSE
    END AS is_home_try_on,
    h.number_of_pairs,
    CASE 
        WHEN p.user_id IS NOT NULL THEN TRUE
        ELSE FALSE
    END AS is_purchase
FROM quiz q
LEFT JOIN home_try_on h
    ON q.user_id = h.user_id
LEFT JOIN purchase p
    ON q.user_id = p.user_id
LIMIT 10;

-- Calculate the overall conversion rates from quiz to home_try_on and from home_try_on to purchase
-- This helps us understand the conversion rates at different stages of the funnel
SELECT 
    COUNT(DISTINCT q.user_id) AS total_users,
    COUNT(DISTINCT h.user_id) AS home_try_on_users,
    COUNT(DISTINCT p.user_id) AS purchase_users,
    COUNT(DISTINCT h.user_id) * 1.0 / COUNT(DISTINCT q.user_id) AS quiz_to_home_try_on_conversion_rate,
    COUNT(DISTINCT p.user_id) * 1.0 / COUNT(DISTINCT h.user_id) AS home_try_on_to_purchase_conversion_rate,
    COUNT(DISTINCT p.user_id) * 1.0 / COUNT(DISTINCT q.user_id) AS overall_conversion_rate
FROM quiz q
LEFT JOIN home_try_on h
    ON q.user_id = h.user_id
LEFT JOIN purchase p
    ON q.user_id = p.user_id;

-- Calculate the difference in purchase rates between customers who had 3 and 5 pairs
-- This helps us analyze the impact of the number of pairs on purchase rates
SELECT 
    h.number_of_pairs,
    COUNT(p.user_id) * 1.0 / COUNT(h.user_id) AS purchase_rate
FROM home_try_on h
LEFT JOIN purchase p
    ON h.user_id = p.user_id
GROUP BY h.number_of_pairs;
