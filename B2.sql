create table customer(
c_id int primary key auto_increment,
c_name varchar(255) not null unique,
c_age int not null
);

create table order_table(
o_id int primary key auto_increment,
c_id int not null,
o_date datetime not null,
o_total_price double check (o_total_price > 0) default 1,

foreign key (c_id) references customer(c_id),
foreign key (o_id) references order_detail(o_id)
);

create table order_detail(
o_id int primary key auto_increment,
p_id int not null,
od_quantity int check (od_quantity >= 0)
);

create table product(
p_id int primary key auto_increment,
p_name varchar(255),
p_price double check (p_price > 0) default 1
);

show tables;

drop table order_detail;

