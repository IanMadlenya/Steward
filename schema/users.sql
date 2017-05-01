BEGIN TRANSACTION;
CREATE TABLE "UserPortfolios" (
	`PortfolioId`	TEXT NOT NULL UNIQUE,
	`Name`	TEXT,
	`UserId`	TEXT NOT NULL,
	PRIMARY KEY(`PortfolioId`)
);
CREATE TABLE "History" (
	`portfolio`	TEXT NOT NULL,
	`stock`	TEXT NOT NULL,
	`time`	INTEGER NOT NULL,
	`transaction`	INTEGER NOT NULL,
	`quantity`	INTEGER NOT NULL CHECK(Quantity >= 0),
	`price`	REAL NOT NULL,
	FOREIGN KEY(`portfolio`) REFERENCES `UserPortfolios`(`PortfolioId`) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE "Balances" (
	`portfolio`	TEXT NOT NULL UNIQUE,
	`balance`	REAL NOT NULL DEFAULT 1000000,
	PRIMARY KEY(`portfolio`),
	FOREIGN KEY(`portfolio`) REFERENCES `UserPortfolios`(`PortfolioId`) ON DELETE CASCADE ON UPDATE CASCADE
);
COMMIT;