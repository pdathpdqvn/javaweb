/*tạo database shopdb*/
create database shopDB;

use shopDB;

/*tạo table category*/
create table category
(
	categoryId int primary key,
    categoryName varchar(50) not Null,
    status int
);
/*tạo table product*/
create table product
(
	productId int primary key,
    productName varchar(100) not null,
    imagePath varchar(200),
    price int,
    originalPrice int,
    description varchar(500),
    status int,
    categoryId int,
    foreign key (categoryId) references category (categoryId)
);
/*tạo table users*/
create table users
(
	userId int primary key,
    email varchar(30) not null,
    password varchar(50),
    fullname varchar(50),
    phone varchar(20),
    address varchar(300),
    role int
);

/*tạo table orders*/
CREATE TABLE orders (
   orderId int NOT NULL auto_increment primary key,
  productId int NOT NULL,
  userId int NOT NULL,
 quantity int NOT NULL,
  date varchar(450) NOT NULL,
  foreign key (productId) references product (productId),
  foreign key (userId) references users (userId)

);

/*khởi tạo user có quyền admin*/
insert into users values(1,
    "pdathpdqvn@gmail.com",
    "1",
    "Lê Phát Đạt",
    "0946960112" ,
    "Hải Phòng" ,
    0 )
