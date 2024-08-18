CREATE TABLE `category` (
  `Category_id` integer PRIMARY KEY,
  `Category_name` varchar(255)
);

CREATE TABLE `product` (
  `product_id` integer PRIMARY KEY,
  `category_id` integer,
  `name` varchar(255),
  `description` varchar(255),
  `price` integer,
  `stock_quantity` integer
);

CREATE TABLE `customer` (
  `customer_id` integer PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `order` (
  `order_id` integer PRIMARY KEY,
  `customer_id` integer,
  `order_date` timestamp,
  `total_amount` integer
);

CREATE TABLE `order_details` (
  `order_detail_id` integer PRIMARY KEY,
  `order_id` integer,
  `product_id` integer,
  `quantity` integer,
  `unit_price` integer
);

ALTER TABLE `product` ADD FOREIGN KEY (`category_id`) REFERENCES `category` (`Category_id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

ALTER TABLE `order` ADD FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
