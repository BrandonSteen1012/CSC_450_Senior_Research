CREATE TABLE `largedataset_customers` (
  `customer_num_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `city_size` varchar(20) DEFAULT NULL,
  `distance_from_home` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`customer_num_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `largedataset_devices` (
  `device_id` int NOT NULL AUTO_INCREMENT,
  `device_type` varchar(50) DEFAULT NULL,
  `device_fingerprint` varchar(255) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `largedataset_merchants` (
  `merchant_num_id` int NOT NULL AUTO_INCREMENT,
  `merchant_category` varchar(50) DEFAULT NULL,
  `merchant_type` varchar(50) DEFAULT NULL,
  `merchant_name` varchar(100) DEFAULT NULL,
  `high_risk` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`merchant_num_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `largedataset_transactions` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `timestamp` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `merchant_id` int NOT NULL,
  `channel` varchar(50) DEFAULT NULL,
  `device_id` int DEFAULT NULL,
  `is_fraud` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `device_id` (`device_id`),
  CONSTRAINT `largedataset_transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `largedataset_customers` (`customer_num_id`),
  CONSTRAINT `largedataset_transactions_ibfk_2` FOREIGN KEY (`merchant_id`) REFERENCES `largedataset_merchants` (`merchant_num_id`),
  CONSTRAINT `largedataset_transactions_ibfk_3` FOREIGN KEY (`device_id`) REFERENCES `largedataset_devices` (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1426236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;