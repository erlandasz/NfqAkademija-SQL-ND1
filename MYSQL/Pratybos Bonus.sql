SELECT `news`.`text` AS 'News', `news`.`date` AS 'Publish date', 
`comments`.`text` AS 'Most Recent Comment', `comments`.`date` AS 'Comment Date' 
FROM `news`
JOIN (
    SELECT `text`, MAX(`newsId`) as `newsId`, `date`
    FROM `comments` 
    GROUP BY `newsId`
)`comments` ON `news`.`newsId`=`comments`.`newsId`
WHERE `comments`.`text` IS NOT NULL 
ORDER BY `news`.`date` DESC LIMIT 10