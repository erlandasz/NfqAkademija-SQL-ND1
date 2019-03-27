/* 1.*/
    INSERT INTO `authors` SET `name`='Tadas Blinda';
    INSERT INTO `authors` SET `name`='Juozas Statkevicius';
/* 2.*/
    INSERT INTO `books` SET `title`='Lietuvos Futbolas', `authorId`=9, `year`=2020;
    INSERT INTO `books` SET `title`='Megstu kava', `authorId`=8, `year`=2010;
    INSERT INTO `books` SET `title`='Tremtinio Kelias', `authorId`=9, `year`=2000;
/* 3.*/
    UPDATE `books` SET `authorId`=8 WHERE `title`='Tremtinio Kelias';