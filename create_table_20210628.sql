--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`title`) 
VALUES
('Молочные продукты'),
('Масло, жир'),
('Мясо'),
('Кондитерские изделия'),
('Хлебобулочные изделия');

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`dt`, `product_id`, `amount`, `price`) 
VALUES
('2011-01-01', 1, 1000, 12.50),
('2011-02-02', 3, 200, 4.97),
('2011-03-12', 4, 164, 10.00),
('2011-06-11', 7, 200, 20.00),
('2011-06-11', 5, 299, 12.35),
('2011-06-12', 1, 300, 12.40),
('2011-06-12', 7, 100, 19.50),
('2011-06-12', 2, 100, 15.75),
('2011-06-12', 5, 3064, 11.80),
('2011-06-12', 6, 264, 17.90),
('2011-06-12', 3, 150, 4.97),
('2011-06-13', 3, 150, 4.97),
('2011-06-13', 10, 100, 4.20),
('2011-06-14', 9, 100, 2.95),
('2011-06-14', 10, 130, 4.20),
('2011-06-14', 9, 110, 2.95),
('2011-06-18', 8, 155, 3.10),
('2011-06-19', 8, 450, 3.10),
('2011-06-11', 5, 599, 12.35);

--
-- Table structure for table `outcome`
--

CREATE TABLE IF NOT EXISTS `outcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outcome`
--

INSERT INTO `outcome` (`dt`, `product_id`, `amount`, `price`) 
VALUES
('2011-06-12', 1, 10, 12.70),
('2011-06-12', 3, 23, 3.49),
('2011-06-12', 3, 34, 3.58),
('2011-06-12', 4, 30, 10.35),
('2011-06-12', 7, 20, 20.40),
('2011-06-12', 4, 1, 11.29),
('2011-06-12', 5, 20, 13.00),
('2011-06-13', 6, 25, 18.20),
('2011-06-18', 8, 20, 3.40),
('2011-07-01', 11, 4, 5.50),
('2011-06-12', 4, 23, 10.54),
('2011-12-12', 6, 15, 22.00),
('2011-12-12', 4, 25, 17.13),
('2011-12-12', 2, 13, 30.00),
('2011-12-13', 2, 1, 18.00);

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `ctgry_id` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `lifedays` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`title`, `supplier_id`, `ctgry_id`, `unit`, `lifedays`) 
VALUES
('Конфеты Карамель', 3, 4, 'кг', 90),
('Молоко', 2, 1, 'л', 2),
('Масло сливочное, упаковка', 2, 2, 'шт', 30),
('Масло растительное, бутылка', 3, 2, 'шт', 90),
('Масло сливочное, развесное', 1, 2, 'кг', 10),
('Мясо говяжье', 1, 3, 'кг', 5),
('кефир, упаковка', 1, 1, 'шт', 2),
('Хлеб', 2, 5, 'шт', 1),
('Батон', 3, 5, 'шт', 1),
('Сметана', 1, 1, 'шт', 2);

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`title`, `phone`, `address`) 
VALUES
('ЗАО Комбинат "Огого"', '', ''),
('ООО "Сладкое"', '', ''),
('ИП Каримов А.Б.', '', '');
