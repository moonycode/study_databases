-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : Categories
-- 조건 : CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
-- where 완료 후 가상 Table로 groupby 진행

SELECT count(*) as CNT, CategoryName FROM Categories
Where CategoryName in ('Produce', 'Beverages')
Group by CategoryName;

-- Number of Records: 2
-- CNT	CategoryName
-- 1	  Beverages
-- 1  	Produce