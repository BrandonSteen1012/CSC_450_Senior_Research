CREATE TABLE `smalldataset` (
  `transaction_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci