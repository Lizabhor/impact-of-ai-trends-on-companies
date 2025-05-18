SELECT * FROM ai.ai_trends;
use ai;

-- 1. List all unique countries and industries in the dataset.
SELECT DISTINCT Country from ai.ai_trends;
SELECT DISTINCT Industry from ai.ai_trends;

-- 2. Show all data for the year 2024.
SELECT * from ai.ai_trends
where Year=2024;

-- 3. Display AI adoption rate and revenue increase for all industries in the USA.
select AI_Adoption_Rate,Revenue_Increase_Due_to_AI
 from ai.ai_trends
 where Country='USA';
 
 -- 4. What is the average AI adoption rate per industry?
 SELECT Industry, AVG(AI_Adoption_Rate) AS Avg_Adoption_Rate
FROM ai.ai_trends
GROUP BY Industry;

 -- 5. Find the country with the highest AI adoption rate in a given year.
 select max(AI_Adoption_Rate)
 from ai.ai_trends;
 
-- 6. Calculate the average job loss due to AI across all industries in 2024.
Select AVG(Job_Loss_Due_To_AI) AS JOB_LOSS
FROM ai.ai_trends;

-- 7. List the top 5 countries with the highest AI-generated content volume.
SELECT Country,(AI_Generated_Content_Value)
FROM ai.ai_trends
limit 5;
 
 -- 8. Calculate the total revenue increase due to AI for each industry.
 SELECT 
  industry,
  SUM(revenue_after_ai - revenue_before_ai) AS total_revenue_increase
FROM 
  ai.ai_trends
GROUP BY 
  industry;

-- 9. Count how many countries have AI regulation in place.
select count(regulation_status) 
from ai.ai_trends;

-- 10. Find the average AI adoption rate per industry.
select avg(AI_Adoption_Rate) as ai_adoption_rate,Industry
from ai.ai_trends
group by
Industry;

-- 11. Identify the year with the highest total job loss due to AI.

 select Year,max(Job_Loss_dUE_tO_AI)
 from ai.ai_trends
  Group by
 Year;

-- 12. Compare the average human-AI collaboration rate across industries.

select Industry,AVG(Human_AI_Collaboration_Rate)
from ai.ai_trends
group by
Industry;

-- 13. Find the average market share of AI companies in each country.
select Country,avg(Market_Share_of_AI_Companies)
from ai.ai_trends
group by
Country;

-- 14. List the top 3 AI tools used most frequently across countries.
Select Country , max(Top_AI_Tools_Used) as AI_Tools
from ai.ai_trends
group by
Country
limit 3;

-- 15. Analyze the global trend of AI adoption rate over the years.
SELECT Year, AVG(AI_Adoption_Rate) AS ai_adoption_rate  
FROM 
ai.ai_trends  
GROUP BY 
Year  
LIMIT 0, 1000;

-- 16. Compare consumer trust in AI between countries with and without regulation.
SELECT Regulation_Status,AVG(Consumer_Trust_in_AI) AS avg_consumer_trust
FROM ai.ai_trends
GROUP BY 
    Regulation_Status;
    
-- 17.Show all records from the country "India".
SELECT * 
FROM ai.ai_trends
WHERE Country = 'India';

-- 18.Show all records from the "Healthcare" industry.
select *
from ai.ai_trends
where Industry='Healthcare';

-- 19.How many total records are there in the dataset?
select count(*)
from ai.ai_trends;

-- 20. List all the years available in the dataset.
SELECT DISTINCT Year 
FROM ai.ai_trends;

