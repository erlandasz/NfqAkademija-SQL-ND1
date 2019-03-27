/* 1.*/
    SELECT * FROM `books`
/* 2.*/
    SELECT `books`.`title` FROM `books` ORDER BY `title`
/* 3.*/
    SELECT `authorId`, COUNT(`books`.`title`) FROM `books` GROUP BY `books`.`authorId`
    