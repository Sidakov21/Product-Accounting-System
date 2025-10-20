create table Category(
	Id int primary key identity(1,1),
	Name nvarchar(50) not null,
);

create table Product(
	Id Int Primary key identity(1,1),
	Name nvarchar(50) not null,
	Price Int check (Price > 0) not null,
	Quantity Int Default 0 check (Quantity >= 0) not null,
	
	CategoryId int,
	foreign key (CategoryID) references Category(Id)
);