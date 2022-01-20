use LibraryDB
go
delete Book

insert Book(LastName, FirstName, BookName, BookAuthor, BookType, DateTookOut, DateReturned, Condition, TotalBalance, PreviousPaid)
select 'Lasker', 'Sarah', 'Stay Happy', 'Libby Weiss', 'Kids',  '08-07-2021', '08-25-2021', 1, 0, 0
union select 'Roth', 'Shira', 'Don''t Mess', 'Chavy Gross', 'Adult',  '09-07-2021', '09-20-2021', 0, 5.00, 0
union select 'Green', 'Chaim', 'Sparkle', 'Dov Hirsch', 'Adult',  '10-07-2020', '01-08-2021', 1, 25.00, 0
union select 'Freid', 'Miri', 'Middos Book', 'Rachel Heller', 'Kids',  '09-07-2021', '09-28-2021', 1, 0, 0
union select 'Neiman', 'Perele', 'Power Hungry', 'Dov Hirsch', 'Adult', '05-15-2020', '06-24-2020', 1, 0, 0
union select 'Lasker', 'Sarah', 'Twin and Toys', 'Shira Sinsly', 'Kids',  '08-07-2021', '08-25-2021', 1, 0, 0
--Please add another 3 more of your own leaving out the money part and make the date returned be a date before today.
union select 'Friedman', 'Shaina', 'Happy Times', 'Dov Haller', 'Adult', '01-02-2022', getdate() - 1, 1, 0, 0
union select 'Klein', 'Chaya', 'Living Life', 'Malka Green', 'Adult', '01-07-2022', getdate() - 1, 1, 0, 0
union select 'Stein', 'Boruch', 'The Other Side', 'Leah Fink', 'Kids', '01-02-2022', getdate() - 1, 1, 0, 0

select * from Book