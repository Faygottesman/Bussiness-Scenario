/*Please put together a database with data that will help this library run smoothly.
I would like that in this data there should be the following collumns:
LastName,
FirstName,
BookName,
BookAuthor,
BookType,
DateTookOut,
DateReturned,
GoodCondition,
TotalBalance,
PreviousPaid*/

use BookstoreDB
go
drop table if exists Book
go
create table dbo.Book(
    BookId int not null identity primary key,
    LastName varchar(20) not null constraint ck_Last_Name_cannot_be_blank check(LastName <> ''),
    FirstName varchar(20) not null constraint ck_First_Name_cannot_be_blank check(FirstName <> ''),
    BookName varchar(50) not null constraint ck_Book_Name_cannot_be_blank check(BookName <> ''),
    BookAuthor varchar(75) not null constraint ck_Book_Author_cannot_be_blank check(BookAuthor <> ''),
    BookType varchar(5) not null constraint ck_Book_Type_cannot_be_blank check(BookType <> ''),
    DateTookOut date not null 
        constraint ck_Date_Took_Out_cannot_be_blank check(DateTookOut <> ''),
        constraint ck_Date_Took_Out_cannot_be_in_the_future check(DateTookOut <= getdate()),
    DateReturned date 
        constraint ck_Date_Returned_cannot_be_blank check(DateReturned <> ''),
        constraint ck_Date_Returned_cannot_be_in_the_future check(DateReturned <= getdate()),
    Condition bit not null,
    TotalBalance decimal(6,2) not null,
    PreviousPaid decimal(6,2) not null
)
go