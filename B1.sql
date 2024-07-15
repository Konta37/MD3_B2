CREATE DATABASE session02_java06;
USE session02_java06;

create table color
(
    id     int primary key auto_increment,
    name   varchar(100),
    status bit
);

create table product
(
    id      int primary key auto_increment,
    name    varchar(100),
    created date
);

create table size
(
    id     int primary key auto_increment,
    name   varchar(100),
    status bit
);

create table product_detail
(
    id         int primary key auto_increment,
    product_id int not null,
    color_id   int not null,
    size_id    int not null,
    price      double,
    stock      int,
    status     bit,

    FOREIGN KEY (product_id) REFERENCES product(id),
    foreign key (color_id) references color(id),
    foreign key (size_id) references size(id)
);

show tables;
