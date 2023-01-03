-- Creating tables in SQL
CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar(45) NOT NULL,
	last_name varchar(45) NOT NULL,
	address varchar(255),
	billing_info varchar(255)
);

CREATE TABLE cart (
	cart_id serial PRIMARY KEY,
	customer_id integer REFERENCES customer(customer_id)
);

CREATE TABLE "order" (
	order_id serial PRIMARY KEY,
	cart_id integer REFERENCES cart(cart_id),
	total_amount float NOT NULL
);

CREATE TABLE product (
	product_id serial PRIMARY KEY,
	"name" varchar(255) NOT NULL,
	description varchar(1000),
	price float NOT NULL
);

CREATE TABLE cart_item (
	cart_item_id serial PRIMARY KEY,
	cart_id integer REFERENCES cart(cart_id),
	product_id integer REFERENCES product(product_id),
	quantity integer NOT NULL
);

create table seller (
	seller_id serial primary key,
	"name" varchar(255) not null
);	


create table inventory(
	inventory_id serial PRIMARY KEY,
	product_id integer REFERENCES product(proudct_id),
	seller_id integer REFERENCES seller(seller_id),
	quantity integer NOT NULL
);










