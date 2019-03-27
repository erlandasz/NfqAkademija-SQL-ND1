/* 1.*/
    CREATE TABLE `authorsnbooks` (`booksID` INT, `authorsID` INT);
    ALTER TABLE `books` DROP `authorId`;
    ALTER TABLE `books` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
    INSERT INTO `books` SET `title`='90 000 eurų', `year`=2016;
    INSERT INTO `authors` SET `name`='E. Masiulis';
    INSERT INTO `authors` SET `name`='R. Kurlianskis';
    INSERT INTO `authors` SET `name`='Unknown';
    UPDATE `authorsnbooks` SET `authorsID`=14 WHERE `authorsID` IS NULL
    INSERT INTO `authorsnbooks` SET `booksID`=20, `authorsID`=12;
    INSERT INTO `authorsnbooks` SET `booksID`=20, `authorsID`=13;
    INSERT INTO `authorsnbooks` SET `booksID`=1, `authorsID`=1;
    INSERT INTO `authorsnbooks` SET `booksID`=2, `authorsID`=2;
    INSERT INTO `authorsnbooks` SET `booksID`=3, `authorsID`=4;
    INSERT INTO `authorsnbooks` SET `booksID`=4, `authorsID`=6;
    INSERT INTO `authorsnbooks` SET `booksID`=5, `authorsID`=7;
    INSERT INTO `authorsnbooks` SET `booksID`=6, `authorsID`=NULL;
    INSERT INTO `authorsnbooks` SET `booksID`=7, `authorsID`=NULL;
    INSERT INTO `authorsnbooks` SET `booksID`=8, `authorsID`=NULL;
    SELECT `books`.`title`, GROUP_CONCAT(`authors`.`name`) AS Authors FROM `books` INNER JOIN `authorsnbooks` ON `books`.`bookId` = `authorsnbooks`.`booksID` INNER JOIN `authors` ON `authorsnbooks`.`authorsID` = `authors`.`authorId` GROUP BY `books`.`title`;