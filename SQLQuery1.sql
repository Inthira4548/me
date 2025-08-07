-- 1. �Թ��ҷ�����Ҥ� 15 �ҷ
select * from Products
where UnitPrice = 15;

-- 2. �Թ��ҷ���ըӹǹ��������ʵ�͡��ӡ��� 250
select * from Products
where UnitsInStock  < 250;


-- 3. �����Թ�� �����Թ��ҷ����ԡ��˹�������
select 
* from Products where Discontinued = 1
-- 4. �����Թ��� �����Թ��� �Ҥ� �ͧ�Թ��ҷ�����Ҥ��ҡ���� 100
SELECT ProductID, ProductName, UnitPrice FROM Products
WHERE UnitPrice > 100;



-- 5. �����Թ��� ����ҤҢͧ�ҧź
SELECT ProductID,UnitPrice FROM Products
WHERE ProductName LIKE '%�ҧź%';

-- 6. �����Ţ����� �ѹ��� ��� �Ҥ���� �ͧ����稷���͡��͹�ѹ��� 15 �.�.
SELECT ReceiptID, ReceiptDate, TotalCash FROM Receipts
WHERE ReceiptDate < '2025-02-15';

-- 7. �����Թ��� �����Թ��� ����ըӹǹ������͵���� 400 ����

SELECT ProductID, ProductName FROM Products
WHERE UnitsInStock >= 400;

-- 8. �����Թ��� �����Թ��� �Ҥ� ��� �ӹǹ������� �ͧ����,����,�Թ��,�ҧź

SELECT ProductID, ProductName, UnitPrice, UnitsInStock FROM Products
WHERE ProductName IN ('����', '����', '�Թ��', '�ҧź');


-- 9. ��������´�ͧ�Թ��һ���������ͧ��¹
SELECT [Description] from  Categories where CategoryName = '����ͧ��¹'


-- 10. ���ʻ������Թ��� ���ͻ����� �����������´�ͧ �Թ��һ���������ͧ���ҧ
SELECT CategoryID , CategoryName,[Description] from  Categories 

-- 11.�ӹ�˹�� ���� ���ʡ�� �ͧ��ѡ�ҹ����� Sale Representative
SELECT Title, FirstName, LastName FROM Employees
WHERE Position = 'Sale Representative';

-- 12. ���ʾ�ѡ�ҹ ���;�ѡ�ҹ ���ͼ���� ���ʼ�ҹ �ͧ��ѡ�ҹ�ء��
SELECT EmployeeID, FirstName, LastName, Username, Password FROM Employees

-- 13. ���ͼ���� ������ʼ�ҹ�ͧ��ѡ�ҹ�����͡�ͧ���ѹ���
SELECT Username, Password FROM Employees
WHERE FirstName = '��ͧ���ѹ���';

-- 14. ���ʾ�ѡ�ҹ����͡����������Ţ 3
SELECT EmployeeID FROM Receipts
WHERE ReceiptID = 3;

-- 15. �����Թ��� �����Թ��� �Ҥ� �ͧ�Թ��ҷ�������ʻ����� 2, 4
SELECT ProductID, ProductName, UnitPrice FROM Products
WHERE CategoryID  IN (2, 4);










