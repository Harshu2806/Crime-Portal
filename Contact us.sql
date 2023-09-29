create table Contact( id int primary key identity(1,1), Name nvarchar(50),Email nvarchar(50),Mobile bigint, Messasge nvarchar(MAX),Status varchar(50),Reply nvarchar(MAX));
insert into Contact values(1,'abc','abc@gmail.com',9028932145,'asddddffffugyhjnxkyiujk','ghjkkjhg','wertyuikjhgfdvbn');
select * from contact;