-- 1. สินค้าที่มีราคา 15 บาท
select * from Products
where UnitPrice = 15;

-- 2. สินค้าที่มีจำนวนคงเหลือในสต๊อกต่ำกว่า 250
select * from Products
where UnitsInStock  < 250;


-- 3. รหัสสินคา ชื่อสินค้าที่เลิกจำหน่ายแล้ว
select 
* from Products where Discontinued = 1
-- 4. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีราคามากกว่า 100
select 
* from ProductID where Discontinued = 1
-- 5. รหัสสินค้า และราคาของยางลบ
SELECT ProductID, Price FROM Product
WHERE ProductName LIKE '%eraser%';
-- 6. หมายเลขใบเสร็จ วันที่ และ ราคารวม ของใบเสร็จที่ออกก่อนวันที่ 15 ก.พ.
SELECT ReceiptID, ReceiptDate, TotalPrice FROM Receipt
WHERE ReceiptDate < '2025-02-15';
-- 7. รหัสสินค้า ชื่อสินค้า ที่มีจำนวนคงเหลือตั้งแต่ 400 ขึ้นไป
SELECT ProductID, ProductName FROM Product
WHERE StockQty >= 400;

-- 8. รหัสสินค้า ชื่อสินค้า ราคา และ จำนวนคงเหลือ ของแชมพู,แป้งเด็ก,ดินสอ,ยางลบ

SELECT ProductID, ProductName, Price, StockQty FROM Product
WHERE ProductName IN ('แชมพู', 'แป้งเด็ก', 'ดินสอ', 'ยางลบ');


-- 9. รายละเอียดของสินค้าประเภทเครื่องเขียน
SELECT * FROM Product
WHERE ProductTypeID = (
  SELECT ProductTypeID FROM ProductType
  WHERE ProductTypeName = 'เครื่องเขียน'
);

-- 10. รหัสประเภทสินค้า ชื่อประเภท และรายละเอียดของ สินค้าประเภทเครื่องสำอาง
SELECT ProductTypeID, ProductTypeName, Description FROM ProductType
WHERE ProductTypeName = 'เครื่องสำอาง';

-- 11.คำนำหน้า ชื่อ นามสกุล ของพนักงานที่เป็น Sale Representative
SELECT Title, FirstName, LastName FROM Employee
WHERE Position = 'Sale Representative';

-- 12. รหัสพนักงาน ชื่อพนักงาน ชื่อผู้ใช้ รหัสผ่าน ของพนักงานทุกคน
SELECT EmployeeID, FirstName, LastName, Username, Password FROM Employee;

-- 13. ชื่อผู้ใช้ และรหัสผ่านของพนักงานที่ชื่อก้องนิรันดร์
SELECT Username, Password FROM Employee
WHERE FirstName = 'ก้องนิรันดร์';

-- 14. รหัสพนักงานที่ออกใบเสร็จหมายเลข 3
SELECT EmployeeID FROM Receipt
WHERE ReceiptID = 3;

-- 15. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีรหัสประเภท 2, 4
SELECT ProductID, ProductName, Price FROM Product
WHERE ProductTypeID IN (2, 4);










