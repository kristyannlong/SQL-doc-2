-- movie_customer table creation
create table movie_customer(
	customer_id SERIAL primary key,
	cust_name VARCHAR(150),
	payment_method VARCHAR(150)
);

-- movie_theater table creation
create table movie_theater(
	theater_id SERIAL primary key,
	theater_name VARCHAR(150),
	contact_number VARCHAR(15),
	city VARCHAR(150),
	capacity INTEGER
);

-- movie table creation
create table movie_movie(
	movie_id SERIAL primary key,
	title VARCHAR(200),
	description VARCHAR(200),
	genre VARCHAR(20),
	language VARCHAR(20),
	rating VARCHAR(4)
);

-- showings table creation
create table movie_showings(
	show_id SERIAL primary key,
	start_time VARCHAR(20),
	end_time VARCHAR(20),
	theater_id INTEGER not null,
	movie_id INTEGER not null,
	foreign key(theater_id) references movie_theater(theater_id),
	foreign key(movie_id) references movie_movie(movie_id)
);

-- ticket table creation
create table movie_ticket(
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(4,2),
	discount VARCHAR(10),
	amount INTEGER,
	show_id INTEGER not null,
	foreign key(show_id) references movie_showings(show_id)
);

-- concessions table creation
create table movie_concession(
	upc SERIAL primary key,
	concession_name VARCHAR(100),
	cost_each NUMERIC(4,2),
	amount INTEGER
);

-- Order table creation
create table movie_order(
	order_id SERIAL primary key,
	purchase_date DATE default current_date,
	ticket_subtotal NUMERIC(5,2),
	concession_total NUMERIC(4,2),
	total_cost NUMERIC(10,2),
	ticket_id INTEGER not null,
	upc INTEGER not null,
	foreign key(upc) references movie_concession(upc),
	foreign key(ticket_id) references movie_ticket(ticket_id)
);

-- checkout table creation
create table movie_cart(
	cart_id SERIAL primary key,
	customer_id INTEGER not null,
	order_id INTEGER not null,
	foreign key(customer_id) references movie_customer(customer_id),
	foreign key(order_id) references movie_order(order_id)
);








