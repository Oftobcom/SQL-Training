--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) 
VALUES
(1, 'Молочные продукты'),
(2, 'Масло, жир'),
(3, 'Мясо'),
(4, 'Кондитерские изделия'),
(5, 'Хлебобулочные изделия');

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

INSERT INTO `income` (`id`, `dt`, `product_id`, `amount`, `price`) 
VALUES
(65, '2011-01-01', 1, 1000, 12.50),
(66, '2011-02-02', 3, 200, 4.97),
(67, '2011-03-12', 4, 164, 10.00),
(68, '2011-06-11', 7, 200, 20.00),
(69, '2011-06-11', 5, 299, 12.35),
(70, '2011-06-12', 1, 300, 12.40),
(71, '2011-06-12', 7, 100, 19.50),
(72, '2011-06-12', 2, 100, 15.75),
(73, '2011-06-12', 5, 3064, 11.80),
(74, '2011-06-12', 6, 264, 17.90),
(75, '2011-06-12', 3, 150, 4.97),
(76, '2011-06-13', 3, 150, 4.97),
(77, '2011-06-13', 10, 100, 4.20),
(78, '2011-06-14', 9, 100, 2.95),
(79, '2011-06-14', 10, 130, 4.20),
(80, '2011-06-14', 9, 110, 2.95),
(81, '2011-06-18', 8, 155, 3.10),
(82, '2011-06-19', 8, 450, 3.10),
(83, '2011-06-11', 5, 599, 12.35);

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

INSERT INTO `outcome` (`id`, `dt`, `product_id`, `amount`, `price`) 
VALUES
(26, '2011-06-12', 1, 10, 12.70),
(27, '2011-06-12', 3, 23, 3.49),
(28, '2011-06-12', 3, 34, 3.58),
(29, '2011-06-12', 4, 30, 10.35),
(30, '2011-06-12', 7, 20, 20.40),
(31, '2011-06-12', 4, 1, 11.29),
(32, '2011-06-12', 5, 20, 13.00),
(33, '2011-06-13', 6, 25, 18.20),
(34, '2011-06-18', 8, 20, 3.40),
(35, '2011-07-01', 11, 4, 5.50),
(36, '2011-06-12', 4, 23, 10.54),
(37, '2011-12-12', 6, 15, 22.00),
(38, '2011-12-12', 4, 25, 17.13),
(39, '2011-12-12', 2, 13, 30.00),
(40, '2011-12-13', 2, 1, 18.00);

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `ctgry_id` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `lifedays` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `supplier_id`, `ctgry_id`, `unit`, `lifedays`) 
VALUES
(1, 'Шоколад плиточный', 1, 4, 'шт', 90),
(2, 'Конфеты Карамель', 3, 4, 'кг', 90),
(3, 'Молоко', 2, 1, 'л', 2),
(4, 'Масло сливочное, упаковка', 2, 2, 'шт', 30),
(5, 'Масло растительное, бутылка', 3, 2, 'шт', 90),
(6, 'Масло сливочное, развесное', 1, 2, 'кг', 10),
(7, 'Мясо говяжье', 1, 3, 'кг', 5),
(8, 'кефир, упаковка', 1, 1, 'шт', 2),
(9, 'Хлеб', 2, 5, 'шт', 1),
(10, 'Батон', 3, 5, 'шт', 1),
(11, 'Сметана', 1, 1, 'шт', 2);

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `title`, `phone`, `address`) 
VALUES
(1, 'ЗАО Комбинат "Огого"', '', ''),
(2, 'ООО "Сладкое"', '', ''),
(3, 'ИП Каримов А.Б.', '', '');