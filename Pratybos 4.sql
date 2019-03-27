/* 1a. su autoriais kurie neturi knygų -*/
    SELECT `authors`.`name`, SUM(CASE WHEN `bookId` IS null THEN 0 ELSE 1 END) AS 'number of books' FROM `authors` LEFT JOIN `books` ON `authors`.`authorId`=`books`.`authorId` GROUP BY `authors`.`name`
/* 1b. be atorių kurie neturi knygų*/
    SELECT `authors`.`name`, COUNT(*) AS 'number of books' FROM `authors`, `books` WHERE `authors`.`authorId`=`books`.`authorId` GROUP BY `authors`.`name`;
/* 2.*/
    DELETE FROM `authors` WHERE `authorId` NOT IN (SELECT `authorId` FROM `books` WHERE `authorId` IS NOT NULL)