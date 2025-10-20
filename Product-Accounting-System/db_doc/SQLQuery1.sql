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

-- Вставка тестовых данных в таблицу Category
INSERT INTO Category (Name) VALUES 
('Электроника'),
('Одежда'),
('Книги'),
('Спорт товары'),
('Мебель');

-- Вставка тестовых данных в таблицу Product
INSERT INTO Product (Name, Price, Quantity, CategoryId) VALUES 
-- Электроника (CategoryId = 1)
('Смартфон Samsung', 50000, 10, 1),
('Ноутбук ASUS', 80000, 5, 1),
('Наушники Sony', 15000, 20, 1),
('Планшет iPad', 45000, 8, 1),
('Умные часы', 20000, 15, 1),

-- Одежда (CategoryId = 2)
('Футболка мужская', 1500, 50, 2),
('Джинсы женские', 3000, 30, 2),
('Куртка зимняя', 8000, 15, 2),
('Кроссовки', 4000, 25, 2),
('Рубашка офисная', 2500, 40, 2),

-- Книги (CategoryId = 3)
('Война и мир', 800, 100, 3),
('Преступление и наказание', 600, 80, 3),
('Мастер и Маргарита', 700, 60, 3),
('1984', 500, 45, 3),
('Гарри Поттер', 1200, 35, 3),

-- Спорт товары (CategoryId = 4)
('Мяч футбольный', 2000, 40, 4),
('Гантели 5кг', 1500, 25, 4),
('Йога-мат', 3000, 20, 4),
('Велосипед', 25000, 5, 4),
('Скакалка', 500, 60, 4),

-- Мебель (CategoryId = 5)
('Стул офисный', 4000, 15, 5),
('Стол компьютерный', 12000, 8, 5),
('Диван', 35000, 3, 5),
('Кровать двуспальная', 28000, 4, 5),
('Шкаф-купе', 45000, 2, 5);

-- Также добавим несколько товаров без категории (CategoryId = NULL)
INSERT INTO Product (Name, Price, Quantity) VALUES 
('Подарочный сертификат', 1000, 100),
('Упаковка', 200, 200);

select * from Category