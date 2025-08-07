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
select 
* from ProductID where Discontinued = 1
-- 5. �����Թ��� ����ҤҢͧ�ҧź
SELECT ProductID, Price FROM Product
WHERE ProductName LIKE '%eraser%';
-- 6. �����Ţ����� �ѹ��� ��� �Ҥ���� �ͧ����稷���͡��͹�ѹ��� 15 �.�.
SELECT ReceiptID, ReceiptDate, TotalPrice FROM Receipt
WHERE ReceiptDate < '2025-02-15';
-- 7. �����Թ��� �����Թ��� ����ըӹǹ������͵���� 400 ����
SELECT ProductID, ProductName FROM Product
WHERE StockQty >= 400;

-- 8. �����Թ��� �����Թ��� �Ҥ� ��� �ӹǹ������� �ͧ����,����,�Թ��,�ҧź

SELECT ProductID, ProductName, Price, StockQty FROM Product
WHERE ProductName IN ('����', '����', '�Թ��', '�ҧź');


-- 9. ��������´�ͧ�Թ��һ���������ͧ��¹
SELECT * FROM Product
WHERE ProductTypeID = (
  SELECT ProductTypeID FROM ProductType
  WHERE ProductTypeName = '����ͧ��¹'
);

-- 10. ���ʻ������Թ��� ���ͻ����� �����������´�ͧ �Թ��һ���������ͧ���ҧ
SELECT ProductTypeID, ProductTypeName, Description FROM ProductType
WHERE ProductTypeName = '����ͧ���ҧ';

-- 11.�ӹ�˹�� ���� ���ʡ�� �ͧ��ѡ�ҹ����� Sale Representative
SELECT Title, FirstName, LastName FROM Employee
WHERE Position = 'Sale Representative';

-- 12. ���ʾ�ѡ�ҹ ���;�ѡ�ҹ ���ͼ���� ���ʼ�ҹ �ͧ��ѡ�ҹ�ء��
SELECT EmployeeID, FirstName, LastName, Username, Password FROM Employee;

-- 13. ���ͼ���� ������ʼ�ҹ�ͧ��ѡ�ҹ�����͡�ͧ���ѹ���
SELECT Username, Password FROM Employee
WHERE FirstName = '��ͧ���ѹ���';

-- 14. ���ʾ�ѡ�ҹ����͡����������Ţ 3
SELECT EmployeeID FROM Receipt
WHERE ReceiptID = 3;

-- 15. �����Թ��� �����Թ��� �Ҥ� �ͧ�Թ��ҷ�������ʻ����� 2, 4
SELECT ProductID, ProductName, Price FROM Product
WHERE ProductTypeID IN (2, 4);










