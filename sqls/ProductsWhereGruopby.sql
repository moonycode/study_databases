-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- - Table Customers 
-- - 조건 Country 가 Germany 와 USA가 아닌 것들


-- 1. 기호 사용하기
SELECT * FROM Customers
WHERE Not Country = 'Germany' or 'USA';

-- Number of Records: 80
-- Wrong 

SELECT * FROM Customers
WHERE Country != 'Germany' AND Country <> 'USA';
-- Number of Records: 67


-- 2. is not
SELECT * FROM Customers
WHERE Country is not 'Germany' and Country is not 'USA';
-- Number of Records: 67


-- 3. Not
SELECT * FROM Customers
WHERE Not Country = 'Germany' and Not Country = 'USA';
-- Number of Records: 67


-- 4. (not) IN
SELECT * FROM Customers
WHERE Country Not IN('Germany', 'USA')
-- Number of Records: 67