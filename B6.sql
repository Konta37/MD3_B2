CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(100),
    email VARCHAR(255),
    password VARCHAR(255),
    phone VARCHAR(11),
    permission BIT,
    status BIT
);

CREATE TABLE address (
    id INT AUTO_INCREMENT,
    user_id INT,
    PRIMARY KEY(id,user_id),
    receive_address VARCHAR(100),
    receive_name VARCHAR(100),
    receive_phone VARCHAR(11),
    is_default BIT,
    FOREIGN KEY (user_id)
        REFERENCES users (id)
);

create table catalog(
id int primary key auto_increment,
name varchar(100),
status bit
);

create table product(
id int auto_increment,
name varchar(100),
price double,
stock int,
catalog_id int,
status bit,
primary key (id, catalog_id),
constraint fk_catalog foreign key (catalog_id) references catalog(id)
);

create table wishlist(
user_id int,
product_id int,
primary key(user_id, product_id),
constraint fk_user foreign key (user_id) references users(id),
constraint fk_product foreign key (product_id) references product(id)
);

create table shopping_cart(
id int auto_increment,
user_id int,
product_id int,
quantity int,
primary key (id, user_id, product_id),
constraint fk_user2 foreign key (user_id) references users(id),
constraint fk_product2 foreign key (product_id) references product(id)
);

create table orders(
id int,
order_at datetime,
totals int,
user_id int,
status bit,
primary key(id, user_id),
constraint fk_user3 foreign key (user_id) references users(id)
);

create table order_detail(
id int,
order_id int,
product_id int,
quantity int,
unit_price double,
primary key (id, order_id, product_id),
constraint fk_order foreign key (order_id) references orders(id),
constraint fk_product3 foreign key (product_id) references product(id)
);
