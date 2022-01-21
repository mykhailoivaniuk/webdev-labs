-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3

Select id, first_name,last_name 
FROM users
Order BY last_name;


-- Exercise 4
Select id, image_url, user_id 
from posts 
Where user_id=26;



-- Exercise 5

Select id, image_url, user_id 
from posts 
Where user_id=26 OR user_id=12 
Order by user_id;


-- Exercise 6

select count(*) 
from posts;


-- Exercise 7

select user_id,count(*)  
from comments 
Group By user_id 
Order By count desc;


-- Exercise 8

select posts.id, posts.image_url,posts.user_id,users.username,users.first_name,users.last_name 
from posts 
inner join users on users.id=posts.user_id 
where posts.user_id=26 or posts.user_id=12;


-- Exercise 9

select posts.id,posts.pub_date,following.following_id 
from following 
inner join posts on posts.user_id=following.following_id 
where following.user_id=26;


-- Exercise 10

select posts.id,posts.pub_date,following.following_id,
users.username 
from following 
inner join posts on posts.user_id=following.following_id 
inner join users on users.id=following.following_id 
where following.user_id=26 
order by posts.pub_date desc;


-- Exercise 11

insert into bookmarks (user_id,post_id) Values(26,219);

insert into bookmarks (user_id,post_id) Values(26,220);

insert into bookmarks (user_id,post_id) Values(26,221);

-- Exercise 12

Delete from bookmarks where post_id=219;
Delete from bookmarks where post_id=220;
Delete from bookmarks where post_id=221;

-- Exercise 13

update users 
set email='cyoung2022@gmail.com' 
where id=26;


-- Exercise 14
