create database db_07;

use db_07;

create table book (
		book_id char(8),
        book_name varchar(500),
        publisher varchar(500),
        price int,
	constraint book_pk primary key (book_id)
);


create table user(
		username varchar(15),
        password varchar(15),
	constraint admin_pk primary key (username)
);
        
ALTER DATABASE db_07 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO db_07.book (book_id, book_name, publisher, price) 
	   VALUES ('BK001', 'Cô gái đến từ hôm qua', 'NXB Trẻ', 153400);
INSERT INTO db_07.book (book_id, book_name, publisher, price) 
	   VALUES ('BK002', 'Tôi thấy hoa vàng trên cỏ xanh', 'NXB Văn học', 176500);
INSERT INTO db_07.book (book_id, book_name, publisher, price) 
	   VALUES ('BK003', 'Bố già', 'NXB Dân Trí', 123500);
INSERT INTO db_07.book (book_id, book_name, publisher, price) 
	   VALUES ('BK004', 'Trại hoa vàng', 'NXB Trẻ', 226300);
INSERT INTO db_07.book (book_id, book_name, publisher, price) 
	   VALUES ('BK005', 'Chuông nguyện hồn ai', 'NXB Hội nhà văn', 221600);
INSERT INTO db_07.book (book_id, book_name, publisher, price) 
	   VALUES ('BK006', 'Mắt biếc', 'NXB Trẻ', 153600);
       
INSERT INTO db_07.user (username, password)
	   VALUES ('test123', 'test123');

       



