
-- --------------------------------------
--  POPULATE Authors
-- --------------------------------------

INSERT INTO `Authors` VALUES (1001, 'James Clear');
INSERT INTO `Authors` VALUES (1002,'JK Rowling');
INSERT INTO `Authors` VALUES (1003,'Lilian Hines');
INSERT INTO `Authors` VALUES (1004,'Coelho Paulo');
-- --------------------------------------
--  POPULATE Publishers
-- --------------------------------------

INSERT INTO `Publishers` VALUES (2001, 'Penguin Random House');
INSERT INTO `Publishers` VALUES (2002,'Bloomsbury Publishing');
INSERT INTO `Publishers` VALUES (2003,'HarcourtPublishers');

-- --------------------------------------
--  POPULATE Editors
-- --------------------------------------

INSERT INTO `Editors` VALUES (3001, 'Blake Atwood');
INSERT INTO `Editors` VALUES (3002,'Richard Francis-Bruce');
INSERT INTO `Editors` VALUES (3003,'Unknown');

-- --------------------------------------
--  POPULATE Customers
-- --------------------------------------

INSERT INTO `Customers` VALUES (6001, 'Jane Doe');
INSERT INTO `Customers` VALUES (6002,'Bob Think');
INSERT INTO `Customers` VALUES (6003,'Random Name');
INSERT INTO `Customers` VALUES (6004,'Another Person');

-- --------------------------------------
--  POPULATE Orders
-- --------------------------------------

INSERT INTO `Orders` VALUES (4001, 6001);
INSERT INTO `Orders` VALUES (4002, 6002);
INSERT INTO `Orders` VALUES (4003, 6003);


-- --------------------------------------
--  POPULATE BOOKS
-- --------------------------------------

INSERT INTO `Books` VALUES (001,'Atomic Habits', 'James Clear', 1001, 0, 'Non-Fiction', 2001,3001);
INSERT INTO `Books` VALUES (002,'Harry Potter No1', 'JK Rowling', 1002, 0, 'Fiction', 2002, 3002);
INSERT INTO `Books` VALUES (003,'Our Latin Heritage', 'Lilian Hines', 1003, 0, 'Educational', 2003, 3003);
INSERT INTO `Books` VALUES (004,'The Alchemist', 'Coelho Paulo', 1004, 0, 'Fiction', 2003,3001);
INSERT INTO `Books` VALUES (005,'Harry Potter No2', 'JK Rowling', 1002, 0, 'Fiction', 2002, 3002);

-- --------------------------------------
--  POPULATE OrderDetails
-- --------------------------------------

INSERT INTO `OrderDetails` VALUES (4001, 001);
INSERT INTO `OrderDetails` VALUES (4002, 003);
INSERT INTO `OrderDetails` VALUES (4003, 005);

-- --------------------------------------
--  POPULATE Royalties
-- --------------------------------------

INSERT INTO `Royalties` VALUES (001, 20);
INSERT INTO `Royalties` VALUES (002, 10);
INSERT INTO `Royalties` VALUES (003, 25);
INSERT INTO `Royalties` VALUES (004, 15);

