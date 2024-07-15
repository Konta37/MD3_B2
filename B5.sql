CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(100),
    email VARCHAR(255),
    password VARCHAR(255),
    phone VARCHAR(11),
    permission BIT,
    status BIT
);

CREATE TABLE catalog (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    status BIT
);

CREATE TABLE address (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    receive_address VARCHAR(100),
    receive_name VARCHAR(100),
    receive_phone VARCHAR(11),
    is_default BIT,
    FOREIGN KEY (user_id)
        REFERENCES users (id)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_at DATETIME,
    totals DOUBLE,
    user_id INT,
    status BIT,
    CONSTRAINT fk_user FOREIGN KEY (user_id)
        REFERENCES users (id)
);

CREATE TABLE book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DOUBLE,
    stock INT,
    status BIT
);

CREATE TABLE order_detail (
    id INT AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity INT,
    unit_price DOUBLE,
    PRIMARY KEY(id,book_id),
    CONSTRAINT fk_order FOREIGN KEY (order_id)
        REFERENCES orders (id),
    CONSTRAINT fk_book FOREIGN KEY (book_id)
        REFERENCES book (id)
);

CREATE TABLE book_catalog (
    catalog_id INT,
    book_id INT,
    primary key(catalog_id,book_id),
    CONSTRAINT fk_catalog FOREIGN KEY (catalog_id)
        REFERENCES catalog (id),
    CONSTRAINT fk_book_from_catalog FOREIGN KEY (book_id)
        REFERENCES book (id)
);

show tables;
