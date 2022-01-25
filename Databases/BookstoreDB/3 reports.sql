
--there are a few lists I would like to be able to access easily:

--1: Show all but group by full name. (one collumn should be the name and the next collumn should be this list of all the books that were taken out)
select FullName = concat(b.FirstName, ' ', b.LastName), b.BookName
from Book b
order by FullName

--2: Show a list of those that have a balance more that $20 and they don't have any books from the library.
select *
from Book b
where b.TotalBalance - b.PreviousPaid > 20.00
and b.DateReturned is not null
--3: Show a list of books that are available to take out and their condition should be very good.
select * 
from Book b
where b.DateReturned is not NULL
and b.Condition = 1
--4: Show 2 lists, one for adult books and the other kids. Please order by book name.
select *
from book b
where b.BookType = 'Kids'
order by b.BookName

select *
from book b
where b.BookType = 'Adult'
order by b.BookName
