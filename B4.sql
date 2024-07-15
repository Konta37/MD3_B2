create table users(
id int primary key auto_increment,
fullname varchar(100),
email varchar(255),
password varchar(255),
phone varchar(11),
permission bit,
status bit
);

create table historytb(
id int primary key auto_increment,
user_id int,
point int,
exam_date datetime,

foreign key (user_id) references users(id)
);

create table exams(
id int primary key auto_increment,
name varchar(100),
duration int,
status bit
);

create table questions(
id int auto_increment,
content varchar(255),
exam_id int,
status bit,
primary key(id,exam_id),

foreign key (exam_id) references exams(id)
);

create table answer(
id int primary key auto_increment,
content varchar(255),
question_id int,
answer_true bit,

foreign key (question_id) references questions(id)
);

create table history_detail(
id int primary key auto_increment,
history_id int,
question_id int,
result bit,

foreign key (question_id) references questions(id),
foreign key (history_id) references historytb(id)
);

drop table history_detail;

show tables;