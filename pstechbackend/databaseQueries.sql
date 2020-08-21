CREATE TABLE category(
	id INT,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),sys_config
	is_active BOOLEAN,
	CONSTRAINT pk_category_id PRIMARY KEY(id)
);

CREATE TABLE `pstech`.`category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(400) NOT NULL,
  `image_url` VARCHAR(50) NOT NULL,
  `is_active` SMALLINT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `pstech`.`user_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `enabled` SMALLINT NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `contact_number` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`));
  
  -- the cart line table to store the cart details
CREATE TABLE `pstech`.`cart_line`(
	id INT AUTO_INCREMENT,
	cart_id int,
	total DECIMAL(10,2),
	product_id int,
	product_count int,
	buying_price DECIMAL(10,2),
	is_available boolean,
	CONSTRAINT fk_cartline_product_id FOREIGN KEY (product_id ) REFERENCES product (id),
	CONSTRAINT pk_cartline_id PRIMARY KEY (id)
) ENGINE=INNODB;
  
INSERT INTO `pstech`.`user_detail` (`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `contact_number`) VALUES ('Alok', 'Nayak', 'Admin', '1', 'admin', 'alok.r.nayak@gmail.com', '9338190640');
INSERT INTO `pstech`.`user_detail` (`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `contact_number`) VALUES ('Pravakar', 'Jena', 'Supplier', '1', '1234', 'pravakar.jena@gmail.com', '9439231191');
INSERT INTO `pstech`.`user_detail` (`first_name`, `last_name`, `role`, `enabled`, `password`, `email`, `contact_number`) VALUES ('Bhabani', 'Behera', 'Supplier', '0', '1234', 'bhabani.behera@gmail.com', '9439090332');
  
  
INSERT INTO `pstech`.`product` (`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purchases`, `views`) VALUES ('PRD89C123DEFX', 'HP ENVY x360 13-ag0035au', 'HP', 'Windows 10 MobileMark 14 Battery life will vary depending on various factors including product model, configuration, loaded applications, features, use, wireless functionality, and power management settings.', '81794', '5', '1', '1', '2', '0', '0');
INSERT INTO `pstech`.`product` (`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purchases`, `views`) VALUES ('PRDDEF123DEFX', 'HP Envy x360 13-AG0034AU', 'HP', 'The remarkable versatility of the 13″ ENVY x360 PC gives you the freedom to go anywhere life takes you. With the newest AMD Ryzen processor and up to 12.5 hours of battery life', '66360', '5', '1', '1', '2', '0', '0');
INSERT INTO `pstech`.`product` (`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purchases`, `views`) VALUES ('PRDPQR123WGTX', 'HP Pavilion 13-AN0046TU', 'HP Pavilion', 'Get powerful multitasking performance with up to an Intel® Core™ i7 processor and a lightning fast PCIe SSD—up to 512GB. And with 11 hours of battery life, you can keep your grind going all day.', '78193', '5', '1', '1', '3', '0', '0');
INSERT INTO `pstech`.`product` (`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purchases`, `views`) VALUES ('PRDMNO123PQRX', 'K7 Total Security', 'K7', 'Ensures protection of your computer want to keep your device safe and secure.', '550', '10', '1', '3', '2', '0', '0');
INSERT INTO `pstech`.`product` (`code`, `name`, `brand`, `description`, `unit_price`, `quantity`, `is_active`, `category_id`, `supplier_id`, `purchases`, `views`) VALUES ('PRDABCXYZDEFX', 'Sandisk Cruzer Blade 16GB', 'Scandisk', 'SanDisk USB Flash Drive 16 GB Pen Drive  (Black, Red).', '330', '8', '1', '4', '3', '0', '0');
