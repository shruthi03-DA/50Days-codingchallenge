create database social_media
use social_media
create table Users (user_id INT primary key, username varchar(100) not null, email varchar(100) unique, join_date date);
describe Users
create table Posts (post_id INT primary key, user_id INT, content text, post_date DATETIME,
FOREIGN KEY (user_id) REFERENCES Users(user_id));
describe Posts
CREATE TABLE Likes (like_id INT PRIMARY KEY, user_id INT, post_id INT, like_date DATETIME,
FOREIGN KEY (user_id) REFERENCES Users(user_id), FOREIGN KEY (post_id) REFERENCES Posts(post_id));
describe Likes
CREATE TABLE Comments (comment_id INT PRIMARY KEY, post_id INT, user_id INT, comment_text TEXT, comment_date DATETIME,
FOREIGN KEY (post_id) REFERENCES Posts(post_id),FOREIGN KEY (user_id) REFERENCES Users(user_id));
describe Comments
CREATE TABLE Friendships (friendship_id INT PRIMARY KEY, user_id1 INT, user_id2 INT, since_date DATE,
    FOREIGN KEY (user_id1) REFERENCES Users(user_id), FOREIGN KEY (user_id2) REFERENCES Users(user_id));
    describe Friendships
-- Insert Users
INSERT INTO Users (user_id, username, email, join_date) VALUES (1, 'lorianthony', 'wvalenzuela@hotmail.com', '2024-05-12');
INSERT INTO Users (user_id, username, email, join_date) VALUES (2, 'mathewschase', 'tina79@knapp.com', '2025-06-29');
INSERT INTO Users (user_id, username, email, join_date) VALUES (3, 'bedwards', 'jacksonbrett@price.com', '2024-06-08');
INSERT INTO Users (user_id, username, email, join_date) VALUES (4, 'joel94', 'igibson@gregory.org', '2024-10-16');
INSERT INTO Users (user_id, username, email, join_date) VALUES (5, 'mendozacolleen', 'sfritz@hotmail.com', '2024-04-29');
INSERT INTO Users (user_id, username, email, join_date) VALUES (6, 'yray', 'kimberlygonzales@gmail.com', '2024-10-09');
INSERT INTO Users (user_id, username, email, join_date) VALUES (7, 'zstokes', 'cynthiagomez@cuevas-obrien.com', '2024-12-03');
INSERT INTO Users (user_id, username, email, join_date) VALUES (8, 'webbcarl', 'kelseyblack@gmail.com', '2023-12-06');
INSERT INTO Users (user_id, username, email, join_date) VALUES (9, 'timothycooper', 'njacobson@ramos.com', '2024-11-21');
INSERT INTO Users (user_id, username, email, join_date) VALUES (10, 'emorse', 'upierce@garcia.net', '2024-10-11');
INSERT INTO Users (user_id, username, email, join_date) VALUES (11, 'brandy78', 'jesseweaver@yahoo.com', '2023-09-21');
INSERT INTO Users (user_id, username, email, join_date) VALUES (12, 'jason52', 'cbailey@yahoo.com', '2025-05-14');
INSERT INTO Users (user_id, username, email, join_date) VALUES (13, 'briancoleman', 'teresa90@hotmail.com', '2023-12-16');
INSERT INTO Users (user_id, username, email, join_date) VALUES (14, 'jeffrey99', 'spencerjamie@cruz.com', '2024-04-13');
INSERT INTO Users (user_id, username, email, join_date) VALUES (15, 'emily15', 'kelseywright@bridges-manning.com', '2025-06-01');
INSERT INTO Users (user_id, username, email, join_date) VALUES (16, 'jameswhite', 'michaelcoleman@hotmail.com', '2024-07-28');
INSERT INTO Users (user_id, username, email, join_date) VALUES (17, 'andrew79', 'richard22@gmail.com', '2024-09-03');
INSERT INTO Users (user_id, username, email, join_date) VALUES (18, 'ajohnson', 'bishopmadison@hotmail.com', '2025-01-20');
INSERT INTO Users (user_id, username, email, join_date) VALUES (19, 'glenn83', 'lewisisaiah@yahoo.com', '2025-04-17');
INSERT INTO Users (user_id, username, email, join_date) VALUES (20, 'micheal81', 'michelleabbott@hotmail.com', '2023-12-14');

-- Insert Posts
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (1, 7, 'Control but guy whom sometimes nice pressure get.', '2025-06-25 00:41:37');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (2, 1, 'Apply season authority couple writer blue marriage beyond forget first.', '2025-04-09 01:52:43');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (3, 19, 'Human hundred hot race owner member because task company north question natural upon.', '2025-05-21 09:41:05');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (4, 1, 'Should word down avoid onto type true section house life fill pick.', '2025-03-19 19:32:52');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (5, 4, 'Under war check though past herself.', '2025-03-20 11:52:40');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (6, 15, 'Middle off argue star appear action son every perhaps various TV group ability.', '2024-11-30 08:25:37');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (7, 14, 'Study finally exactly the baby without.', '2024-10-09 13:58:18');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (8, 2, 'Factor second very condition decision low about show music entire direction bring.', '2025-04-25 12:47:01');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (9, 2, 'Exactly film contain worry plant tonight wrong paper.', '2025-09-15 01:08:57');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (10, 19, 'Always contain available require box number person focus from already.', '2024-11-10 21:34:51');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (11, 17, 'Different without hear western save operation.', '2025-01-20 14:54:56');
INSERT INTO Posts (post_id, user_id, content, post_date) VALUES (12, 16, 'Part almost event will second single billion Congress feel civil hair spend.', '2025-06-10 18:28:26');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (40, 31, 19, 'Least will today phone machine.', '2025-03-10 14:05:08');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (41, 20, 7, 'Early everybody three tonight.', '2024-09-21 06:09:54');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (42, 36, 10, 'Name see practice doctor.', '2024-11-20 15:02:52');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (43, 3, 16, 'Receive eye forward.', '2024-11-03 01:19:40');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (44, 15, 15, 'Make PM mission tree.', '2024-11-20 05:06:39');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (45, 38, 3, 'Per degree away tough best policy.', '2025-08-26 03:26:30');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (46, 1, 1, 'Significant born against the other.', '2025-02-25 21:31:16');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (47, 14, 8, 'Lead best early though.', '2025-07-24 00:41:23');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (48, 13, 6, 'Foot high born sign.', '2025-01-29 00:34:57');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (49, 7, 4, 'Lay their central occur.', '2025-09-05 02:02:16');
INSERT INTO Comments (comment_id, post_id, user_id, comment_text, comment_date) VALUES (50, 16, 14, 'Moment fill degree check.', '2025-06-13 08:14:52');

-- Insert Friendships
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (1, 6, 18, '2023-09-29');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (2, 4, 9, '2025-01-31');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (3, 14, 13, '2024-12-03');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (4, 5, 10, '2025-04-16');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (5, 9, 11, '2025-07-03');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (6, 13, 5, '2024-10-28');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (7, 6, 2, '2025-06-24');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (8, 7, 10, '2025-08-13');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (9, 4, 17, '2023-12-21');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (10, 5, 18, '2025-08-18');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (11, 8, 11, '2025-05-21');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (12, 9, 19, '2024-03-05');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (13, 2, 7, '2024-02-27');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (14, 1, 14, '2024-03-04');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (15, 6, 7, '2024-05-31');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (16, 20, 15, '2024-07-04');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (17, 3, 5, '2025-09-10');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (18, 4, 19, '2024-11-17');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (19, 14, 17, '2023-11-05');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (20, 19, 10, '2024-06-11');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (21, 15, 3, '2023-11-01');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (22, 13, 18, '2024-03-08');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (23, 2, 18, '2025-02-18');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (24, 16, 11, '2025-09-05');
INSERT INTO Friendships (friendship_id, user_id1, user_id2, since_date) VALUES (25, 18, 14, '2023-10-07');

select * from Users
select * from Posts
select * from Likes
select * from Comments
select * from Friendships
1) select p.post_id, p.content, u.username from Posts p JOIN Users u ON p.user_id = u.user_id;
2) select c.comment_id, c.comment_text, p.post_id, u.username from Comments c
JOIN Users u ON c.user_id = u.user_id JOIN Posts p ON c.post_id = p.post_id;
3) select u.user_id, u.username, COUNT(p.post_id) AS total_posts from Users u
JOIN Posts p ON u.user_id = p.user_id GROUP BY u.user_id, u.username ORDER BY total_posts desc limit 3;
4) select post_id from Likes GROUP BY post_id HAVING COUNT(*) > (select avg(like_count)
from (select COUNT(*) AS like_count from Likes GROUP BY post_id) AS avg_table);
5) select distinct u.user_id, u.username from Users u
JOIN Likes l ON u.user_id = l.user_id
LEFT JOIN Posts p ON u.user_id = p.user_id
WHERE p.post_id IS NULL;
6) select u.user_id, u.username from Users u
JOIN Friendships f 
ON (u.user_id = f.user_id1 OR u.user_id = f.user_id2)
WHERE 3 IN (f.user_id1, f.user_id2)
AND u.user_id != 3;
7) select distinct p.post_id, p.content from Posts p
JOIN Likes l ON p.post_id = l.post_id
WHERE l.user_id IN (
    SELECT CASE 
            WHEN user_id1 = 3 THEN user_id2
            ELSE user_id1
           END FROM Friendships WHERE 3 IN (user_id1, user_id2));
    SELECT CASE 
            WHEN user_id1 = 3 THEN user_id2
            ELSE user_id1
           END
    FROM Friendships
    WHERE 3 IN (user_id1, user_id2)
);
8) select u.user_id, u.username, COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id) AS influence_score
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
LEFT JOIN Comments c ON p.post_id = c.post_id
GROUP BY u.user_id, u.username
ORDER BY influence_score DESC
LIMIT 1;
SELECT COUNT(DISTINCT p.post_id) AS total_posts, COUNT(DISTINCT l1.like_id) AS total_likes_given, 
COUNT(DISTINCT l2.like_id) AS total_likes_received, COUNT(DISTINCT c.comment_id) AS total_comments
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l1 ON u.user_id = l1.user_id
LEFT JOIN Posts p2 ON u.user_id = p2.user_id
LEFT JOIN Likes l2 ON p2.post_id = l2.post_id
LEFT JOIN Comments c ON u.user_id = c.user_id
WHERE u.user_id = 3;

DELIMITER $$
CREATE PROCEDURE GetUserActivity(IN userId INT)
BEGIN
SELECT 
        (SELECT COUNT(*) FROM Posts WHERE user_id = userId) AS total_posts,
        (SELECT COUNT(*) FROM Likes WHERE user_id = userId) AS total_likes_given,
        (SELECT COUNT(*)  FROM Likes l
         JOIN Posts p ON l.post_id = p.post_id
         WHERE p.user_id = userId) AS total_likes_received,
        (SELECT COUNT(*) FROM Comments WHERE user_id = userId) AS total_comments;
END $$
DELIMITER ;
CALL GetUserActivity(3);