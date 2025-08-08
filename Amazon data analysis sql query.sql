USE zepto;
SELECT * FROM `amazon sale report` LIMIT 20;
SELECT SUM(amount) AS total_revenue FROM `amazon sale report`;
SELECT SUM(Qty) AS Total_Quantity FROM `amazon sale report`;
SELECT Category, SUM(Qty) AS Total_Quantity FROM `amazon sale report`
GROUP BY Category ORDER BY Total_Quantity DESC LIMIT 5;
SELECT `ship-state`, SUM('Sales') AS Revenue FROM `amazon sale report` 
GROUP BY `ship-state` ORDER BY Revenue DESC;
SELECT 'Courier', COUNT(*) AS Total_Orders FROM `amazon sale report` GROUP
BY Courier ORDER BY Total_Orders DESC;
SELECT B2B, COUNT(*) AS Order_Count FROM `amazon sale report` GROUP BY 
B2B;