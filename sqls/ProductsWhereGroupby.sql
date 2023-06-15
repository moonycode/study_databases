-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- - Table : Products
-- - 조건 : CategoryID 가 10개 이상

SELECT count(*) as CNT, CategoryID
FROM Products
Group by CategoryID
Having CNT >= 10
;

-- Number of Records: 5
-- CNT	CategoryID
-- 12 	1
-- 12	  2
-- 13	  3
-- 10	  4
-- 12	  8