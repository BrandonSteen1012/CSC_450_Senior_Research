CREATE TABLE `mediumdataset_customers` (
  `customer_num_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `card_present` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`customer_num_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mediumdataset_merchants` (
  `merchant_num_id` int NOT NULL AUTO_INCREMENT,
  `merchant_category` varchar(255) DEFAULT NULL,
  `merchant_type` varchar(255) DEFAULT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`merchant_num_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `mediumdataset_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `merchant_id` int DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `merchant_id` (`merchant_id`),
  CONSTRAINT `mediumdataset_transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `mediumdataset_customers` (`customer_num_id`),
  CONSTRAINT `mediumdataset_transactions_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `mediumdataset_merchants` (`merchant_num_id`)
) ENGINE=InnoDB AUTO_INCREMENT=362141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;