#IF NOT EXISTS

CREATE TABLE IF NOT EXISTS `authors` (
  `authorId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `authorsnbooks` (
  `booksID` int(11) DEFAULT NULL,
  `authorsID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE IF NOT EXISTS `books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`bookId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#IF EXISTS

    #books.year
DELIMITER $$

DROP PROCEDURE IF EXISTS books_year $$
CREATE PROCEDURE books_year()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='year' AND TABLE_NAME='books') ) THEN
    ALTER TABLE `books` ADD `year` varchar(2048) NOT NULL DEFAULT '';
END IF;

END $$

CALL books_year() $$

    #books.title

DROP PROCEDURE IF EXISTS books_title $$
CREATE PROCEDURE books_title()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='year' AND TABLE_NAME='books') ) THEN
    ALTER TABLE `books` ADD `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL;
END IF;

END $$

CALL books_title() $$

    #books.bookId

DROP PROCEDURE IF EXISTS books_bookId $$
CREATE PROCEDURE books_bookId()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='bookId' AND TABLE_NAME='books') ) THEN
    ALTER TABLE `books` ADD `bookId` int(11) NOT NULL AUTO_INCREMENT;
END IF;

END $$

CALL books_bookId() $$

    #authors.authorId

DROP PROCEDURE IF EXISTS authors_authorId $$
CREATE PROCEDURE authors_authorId()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='authorId' AND TABLE_NAME='authors') ) THEN
    ALTER TABLE `authors` ADD `authorId` int(11) NOT NULL AUTO_INCREMENT;
END IF;

END $$

CALL authors_authorId() $$

    #authors.name

DROP PROCEDURE IF EXISTS authors_name $$
CREATE PROCEDURE authors_name()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='name' AND TABLE_NAME='authors') ) THEN
    ALTER TABLE `authors` ADD `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL;
END IF;

END $$

CALL authors_name() $$

    #authorsnbooks.booksID

DROP PROCEDURE IF EXISTS authorsnbooks_booksID$$
CREATE PROCEDURE authorsnbooks_booksID()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='booksID' AND TABLE_NAME='authorsnbooks') ) THEN
    ALTER TABLE `authorsnbooks` ADD `booksID` int(11) DEFAULT NULL;
END IF;

END $$

CALL authorsnbooks_booksID() $$
 
    #authorsnbooks.authorsID

DROP PROCEDURE IF EXISTS authorsnbooks_authorsID$$
CREATE PROCEDURE authorsnbooks_authorsID()
BEGIN

IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
        AND COLUMN_NAME='authorsID' AND TABLE_NAME='authorsnbooks') ) THEN
    ALTER TABLE `authorsnbooks` ADD `authorsID` int(11) DEFAULT NULL;
END IF;

END $$

CALL authorsnbooks_authorsID() $$

DELIMITER ;