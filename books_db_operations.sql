DROP DATABASE IF EXISTS book_shop;
CREATE DATABASE book_shop;
USE book_shop; 
 
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

use book_shop;

select substring(title,1) as Book_title from books;

select substring(concat(title,'...'),1) as book_title from books;

select concat(substring(title,1),'...') as book_title from books;

select replace('Hello world is an example of a string function REPLACE','Hello','Bye');

select reverse(author_fname) as new_name from books;

select author_fname,char_length(author_fname) as length from books;

select reverse("Why does my cat look at me with such hatred?");

SELECT
  REPLACE
  (
  title,
  ' ',
  '->'
  );
  
  select upper(concat(author_fname,'  ',author_lname)) as full_name_in_caps from books;
  
  select * from books;
  
  select concat(title,' was released in ',released_year) as blurb from books;
  
  select title,char_length(title) as 'character count' from books;
  
  select concat(substring(title,1,10),'...') as 'short title',concat(author_lname,',',author_fname) as author,concat(stock_quantity,' in stock') as quantity from books where (author_fname='Neil' AND stock_quantity=12) OR stock_quantity=104;
  
  INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
           
           
           use book_shop;
           select * from books ;
           
      select * from books order by released_year; 
      
      select * from books order by released_year desc; 
      
      select title,author_fname,author_lname from books order by 3,2 limit 10;
      
      select title,author_fname,author_lname from books order by 3,2 limit 5,7;
      
      select * from books limit 10;
      
      select title from books where title like '%the%';
      
      select * from books where author_lname like '________';
      
      select * from books where author_lname like '%________%';
      
      select * from books where title like'%\%%';
      
      select title from books where title like'%stories%';
      
      select concat(title,'-',released_year) as summary  from books order by released_year desc limit 3;
      
      select title,released_year,stock_quantity from books order by 3,2 desc limit 3;
      
      select title,author_lname from books order by 2,1;
      
      select upper(concat('my favourite author is ',author_fname,' ',author_lname,'!')) from books order by author_lname;     
       
       select title,pages from books order by pages desc limit 1;
       
       select title,author_lname from books where author_lname like '% %';

	   select distinct author_fname from books;
       
       select count( distinct author_fname,author_lname) from books;
	
       select count(title) from books where title like '%the%';
       
       select distinct author_fname,author_lname,count(*) from books group by author_lname,author_fname;

	   select max(released_year) from books;
       
       select max(released_year) as latest,min(released_year) as earliest from books;

        SELECT * FROM books WHERE pages = (SELECT Min(pages) 
                FROM books);  
                
		SELECT
  CONCAT(author_fname, ' ', author_lname) AS author_name,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;
	select sum(pages) from books;
    
    select sum(released_year) books;
    
    select concat(author_fname,' ',author_lname) as 'author name',sum(pages) as 'Total Pages Per Author' from books group by author_lname,author_fname;
    
    select concat(author_fname,' ',author_lname) as 'author name',avg(pages) as 'TAvg Pages Per Author' from books group by author_lname,author_fname
    order by pages;
    use book_shop;
    select count(title) as 'Total Number Of Books'  from books;
    
    select released_year,count(*) from books group by released_year order by  released_year desc;
     
     select sum(stock_quantity) as Total_Number_Of_Books from books;
     
     select author_fname,author_lname,avg(released_year) from books group by 1,2; 
     
     select concat(author_fname,' ',author_lname) from books where pages=(select max(pages) from books);
     
     select released_year,count(*),avg(pages) from books group by released_year order by released_year;
     
     use book_shop;
drop table people;
     create table people(name_is varchar(100),birthdate DATE,birthtime TIME,birthdt DATETIME);
     
     insert into people (name_is,birthdate,birthtime,birthdt)
     values
     ('John','1993-01-25','07:20:30','1993-01-25 07:20:30'),
     ('Luke','1994-02-25','07:40:30','1994-02-25 07:40:30');
     
     select * from people;
     
     select curdate() as 'Date',curtime() as 'Time',now() as 'Date & Time';
     
     insert into people (name_is,birthdate,birthtime,birthdt) value
     ('Harry',curdate(),curtime(),now());
     
     select concat(monthname(birthdate),' ',day(birthdate),' ', year(birthdate)) from people;
     
     SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i:%s') FROM people;
     
     SELECT * FROM PEOPLE;
     
    
     use book_shop;
     
     create table comments(content varchar(100),
     created_at timestamp default now());
     
     insert into comments(content) value('LOL it is so fucking bad');
     
     select * from  comments;
     
     select created_at + interval 1 month from comments;
     
     select * from comments;
     
     select curdate();
     
     create table tweets (
     content varchar(140),
     username varchar(20),
     created_at timestamp default now()
     );
     
     show tables;
     use book_shop;
     desc tweets;
     
     select title,released_year from books where released_year not between 2004 and 2014;
     select title,released_year, case when released_year>=2000 then
     'Modern lit' else '20th century lit'
     end as genre from books;
     
     select title,stock_quantity,
     case 
      when stock_quantity between 0 and 50 then '*'
		when stock_quantity between 51 and 100 then '**'
        else '***'
        end as stock
        from books;
        
     select 10!=10;
     select 15>14 && 99-5<=94;
     select 1 in (5,3) || 9 between 8 and 10;
        
select title,author_lname from books where author_lname in('Eggers','Chabon');

select title,author_lname,released_year from books where author_lname in('Lahiri') && released_year>2000;

select * from books;

select title,pages from books where pages between 100 and 200;

select title,author_lname from books where author_lname like'C%'or author_lname like 'S%'; 

select title,author_lname,
case 
when title like '%stories%' then 'Short Stories'
when title like 'Just Kids' or title like 'A Heartbreaking%' then 'Memoirs'
else 'Novel' end as 'Type' from books;

select * from books;
