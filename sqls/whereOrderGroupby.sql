-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- - Table : Orders
-- - 조건 : EmployeeID가 7, 9 직원에 주문 갯수를 각각 표시

SELECT count(*) as CNT, EmployeeID
FROM Orders
Where EmployeeID in (7, 9)
Group by EmployeeID;

-- Result
-- CNT  EmployeeID
-- 14   7
-- 6    9