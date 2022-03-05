DROP DATABASE IF EXISTS `booktest2`;
CREATE DATABASE IF NOT EXISTS `booktest2`;
USE `booktest2`;

SET NAMES UTF8MB4;
SET character_set_client = UTF8MB4;


CREATE TABLE `Authors` (
    `AuthorID`            int NOT NULL AUTO_INCREMENT,
    `AuthorName`             varchar (50) NOT NULL,
    PRIMARY KEY (`AuthorID`), 
    INDEX `AuthorID` (`AuthorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Publishers` (
    `PublisherID`            int NOT NULL AUTO_INCREMENT,
    `PublisherName`             varchar (50) NOT NULL,
    PRIMARY KEY (`PublisherID`), 
    INDEX `PublisherID` (`PublisherID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Editors` (
    `EditorID`            int NOT NULL AUTO_INCREMENT,
    `EditorName`             varchar (50) NOT NULL,
    PRIMARY KEY (`EditorID`), 
    INDEX `EditorID` (`EditorID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Customers` (
`CustomerID` int NOT NULL AUTO_INCREMENT,
`CustomerName` varchar(50),
PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Orders` (
-- `ItemNo` int NOT NULL, -- using this to capture if there are orders with multiple books
`OrderID` int NOT NULL,
`CustomerID` int NOT NULL, 
PRIMARY KEY (`OrderID`),
FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Books` (
`BookID` 		int NOT NULL,
`BookName` 			varchar (50) NOT NULL,
`AuthorName` 		varchar (30) NOT NULL,	
`AuthorID` 			int NOT NULL,
`SecondaryAuthorID`  int,
`Genre` 			varchar (25) NOT NULL,
    `PublisherID` 		int NOT NULL,
     `EditorID` 		int NOT NULL,
  	PRIMARY KEY (`BookID`),	
	INDEX `BookID` (`BookID` ASC),
	INDEX `BookName` (`BookName` ASC),
    FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION, 
    FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`)
    ON DELETE NO ACTION
        ON UPDATE NO ACTION, 
    FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `OrderDetails` (
`OrderID` int NOT NULL,
`BookID` int NOT NULL, 
PRIMARY KEY (`OrderID`, `BookID`),
FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Royalties` (
    `BookID`          int NOT NULL,
    `Royalty`			decimal(13,2),
    PRIMARY KEY (`BookID`),
    INDEX `BookID` (`BookID` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
