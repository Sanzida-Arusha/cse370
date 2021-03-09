1. 
Find all the unique multipliers in the table and show them in descending order.
Select distinct multiplier from USERS order by multiplier desc;
2. 
Show all the unique dates of the users joining in ascending order.
Select distinct member_since from USERS order by member_since asc;
3. 
Find all ids and email addresses where the TLD (Top Level Domain) is ‘com’ (ends with ‘com’)
SELECT id,email FROM users WHERE email LIKE '%com'
4. 
Show the name and email of the latest 5 members
SELECT name,email FROM users ORDER BY member_since DESC LIMIT 5;
5. 
Find the total number of users in the table.
SELECT COUNT(*) FROM users;

6.Count number of users in each multiplier who has joined after the month "April" 
SELECT COUNT(*),multiplier FROM users WHERE MONTH(member_since)>04 GROUP BY multiplier;

7.Find the average length of all the names. 
 Select avg(length(name)) from USERS;

8.Find the number of unique TLDs of email addresses.  
SELECT COUNT(DISTINCT email) FROM users WHERE email like '%com';

9. Show the users according to their joining date (the user who joined first will be at the top and so on)
Select name , member_since from USERS order by member_since asc;

10.
Show the name of the user who has the highest influence_count among the users  joined after May 2020

 Select name , max(influence_count) from USERS where member_since > '2020-05-01' ;

11.
Show the name of the user with the maximum multiplier among the users whose influencer counts are less than 70000. 
Select name , max(multiplier) from USERS where influence_count < 70000 ;

12.
Find all the unique multipliers among the members whose influence count is less than 900000. 
Select distinct(multiplier) from USERS where influence_count < 900000 ;

13. Find the average of the influence count but only consider the members who joined before 11 June 2020.

 Select avg(influence_count) from USERS where member_since < '2020-06-11';

14. Find the id, name, email, and multiplier of those members whose influence count is within the range 700000 and 990000 and who has become a member of the platform after 18 May 2020.

Select id , name , email , multiplier from USERS where influence_count between 700000 and 900000 and member_since > '2020-05-18' ;

15. Retrieve the id, name, email, and influence count of the users who have ‘u,o,v,n,s,m’ in their name. 

SELECT * FROM USERS WHERE name LIKE  '%u%' or name like '%o%' or name like '%v%' or name like '%n%' or name like '%s%' or name like '%m%' ;







