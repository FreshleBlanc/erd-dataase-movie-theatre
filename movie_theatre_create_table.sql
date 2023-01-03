
 
create table	movie(
movie_id serial primary key,
title varchar(255) not null,
duration integer not null
)



create table concession(
concession_id serial primary key,
item varchar(255) not null,
price integer not null
)



create table ticket(
ticket_id serial primary key,
seat_number integer not null,
movie_id integer references movie(movie_id)
)


create table customer(
customer_id serial PRIMARY KEY,
ticket_id integer references ticket(ticket_id),
concession_id integer references concession(concession_id)

)
