SELECT `news`.`text` AS 'Article', `news`.`date` AS 'Publish Date', `comments`.`text` AS 'Comment', MAX(`comments`.`date`)AS 'Comment Date'
FROM `comments`
JOIN `news` ON `news`.`newsId`=`comments`.`newsId`
GROUP BY `news`.`text`, `news`.`date`, `comments`.`text`
ORDER BY `news`.`date` DESC 
LIMIT 10;