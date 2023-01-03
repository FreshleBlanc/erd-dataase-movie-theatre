-- Insert Data

-- insert a customer

insert into customer (first_name, last_name, address, billing_info)
values ('Dylan', 'Smith', '55 main st', '234380'),
	('Mike', 'Smith', '123 2nd st', '13432'),
	('jenny', 'Smith', '432 4th st', '8539')
	
	
insert into product ("name", description, price)
values
('T-shirt', 'This is really comfy', '40.99'),
('Shoes', 'These are really expensive', '400.99')


insert into cart	(customer_id)
values
	(1);
	

insert into cart_item (cart_id, product_id, quantity)
values
(1,1,2),
(1, 2, 1)---add product id 2 (shoes) to cart id 1 (dylan)




