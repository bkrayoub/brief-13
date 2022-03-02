--Rocket 1
select * from 'client'
--Rocket 2
SELECT * FROM client ORDER BY 'first_name','last_name'
--Rocket 3
SELECT * FROM `command` WHERE `command_date` = '2022-02-02'
--rocket 4
SELECT COUNT(command_id)
FROM `command` INNER JOIN client ON client.cleint_id=command.command_fk
WHERE first_name = 'malak' AND last_name='hassan'
--Rocket 5
SELECT * FROM product
--Rocket 6
SELECT * FROM `product` WHERE price > 999
--Rocket 7
SELECT * FROM `product` WHERE quantity_in_stock = 0
--Rocket 8
SELECT Cl.client_id, Cl.first_name, Cl.last_name, mO.address,O.command_date,OPD.quantity_ FROM Order_ O
INNER JOIN Client C ON Cl.id_client = O.id_client
INNER JOIN command_details OPD ON OPD.id_order = O.id_order
WHERE Cl.first_name = 'fn1' AND Cl.last_name = 'ln1' AND O.command_date = '2022-02-02';
--rocket 9
SELECT C.client_id, C.first_name, C.last_name,O.address,O.command_date,OPD.quantity, (OPD.quantity*P.price) FROM Order_ O
INNER JOIN Client C ON C.client_id = O.client_id
INNER JOIN command_details OPD ON OPD.command_date = O.command_date
INNER JOIN Product P ON P.product_id = OPD.product_id
WHERE C.first_name = 'fn1' AND C.last_name = 'ln1' AND O.command_date = '2022-02-02';