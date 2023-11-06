-- customer data
insert into movie_customer(
	customer_id,
	cust_name,
	payment_method
)VALUES(
	1,
	'Jennifer Jones',
	'5126-1256-5126-1256 561 5/20'
);

-- theater data
insert into movie_theater(
	theater_id,
	theater_name,
	contact_number,
	city,
	capacity
)VALUES(
	1,
	'The Roxy',
	'516-416-3167',
	'Missoula',
	200
);

-- movie data
insert into movie_movie(
	movie_id,
	title,
	description,
	genre,
	language,
	rating
)VALUES(
	1,
	'Mother Of The New Gods',
	'A shepherdess is wasting time on
	a mountain. With the 
	help of a foolish elf, she must raise an
	army in order to save her race from destruction.',
	'Sci-Fi',
	'Sindarin',
	'NC17'	
);

-- showings data
insert into movie_showings(
	show_id,
	theater_id,
	movie_id
)VALUES(
	1,
	1,
	1
);

-- ticket data
insert into movie_ticket(
	ticket_id,
	ticket_price,
	discount,
	amount,
	show_id
)VALUES(
	1,
	13.00,
	3.00,
	4,
	1
);

-- concession data
insert into movie_concession(
	upc,
	concession_name,
	cost_each,
	amount
)VALUES(
	1,
	'Pickled Chickpeas',
	6.00,
	4
);

-- order data
insert into movie_order(
	order_id,
	ticket_subtotal,
	concession_total,
	total_cost,
	ticket_id,
	upc
) VALUES(
	1,
	40.00,
	24.00,
	64.44,
	1,
	1
);

-- checkout data
insert into movie_cart(
	cart_id,
	customer_id,
	order_id
)VALUES(
	1,
	1,
	1
);