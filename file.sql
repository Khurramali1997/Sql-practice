select author_fname as first,author_lname as last, concat(author_fname,'   ',author_lname) as full_name from books;

select concat_ws('-',author_fname,author_lname) as 'FULL NAME' from books
;

select substring('hello world',7);
 select substring(author_fname,1) from books;
