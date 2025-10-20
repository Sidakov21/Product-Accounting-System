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

-- ������� �������� ������ � ������� Category
INSERT INTO Category (Name) VALUES 
('�����������'),
('������'),
('�����'),
('����� ������'),
('������');

-- ������� �������� ������ � ������� Product
INSERT INTO Product (Name, Price, Quantity, CategoryId) VALUES 
-- ����������� (CategoryId = 1)
('�������� Samsung', 50000, 10, 1),
('������� ASUS', 80000, 5, 1),
('�������� Sony', 15000, 20, 1),
('������� iPad', 45000, 8, 1),
('����� ����', 20000, 15, 1),

-- ������ (CategoryId = 2)
('�������� �������', 1500, 50, 2),
('������ �������', 3000, 30, 2),
('������ ������', 8000, 15, 2),
('���������', 4000, 25, 2),
('������� �������', 2500, 40, 2),

-- ����� (CategoryId = 3)
('����� � ���', 800, 100, 3),
('������������ � ���������', 600, 80, 3),
('������ � ���������', 700, 60, 3),
('1984', 500, 45, 3),
('����� ������', 1200, 35, 3),

-- ����� ������ (CategoryId = 4)
('��� ����������', 2000, 40, 4),
('������� 5��', 1500, 25, 4),
('����-���', 3000, 20, 4),
('���������', 25000, 5, 4),
('��������', 500, 60, 4),

-- ������ (CategoryId = 5)
('���� �������', 4000, 15, 5),
('���� ������������', 12000, 8, 5),
('�����', 35000, 3, 5),
('������� �����������', 28000, 4, 5),
('����-����', 45000, 2, 5);

-- ����� ������� ��������� ������� ��� ��������� (CategoryId = NULL)
INSERT INTO Product (Name, Price, Quantity) VALUES 
('���������� ����������', 1000, 100),
('��������', 200, 200);

select * from Category