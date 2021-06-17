-- select Playlist.Name as Title,
-- Track.Name as Track,
-- Album.Title as Album,
-- Artist.Name as Artist from PlaylistTrack
-- inner join Playlist on PlaylistTrack.PlaylistId = Playlist.PlaylistId
-- inner join Track on PlaylistTrack.TrackId = Track.TrackId
-- inner join Album on Track.AlbumId = Album.AlbumId
-- inner join Artist on Album.ArtistId = Artist.ArtistId
-- where Playlist.Name = 'Grunge';

-- Me
-- select Playlist.Name as Playlist, count(*) from Playlist
-- group by Playlist.Name
-- having count(*) = 1;
-- -- Solution
-- SELECT Playlist.Name as Playlist, COUNT(*) From Playlist
-- INNER JOIN PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId
-- GROUP BY Playlist
-- HAVING count(*) = 1;

-- select InvoiceDate, BillingAddress, Total from Invoice
-- order by InvoiceDate desc
-- limit 5;

-- Select the EmployeeId, LastName, FirstName and HireDate of the 3 Employees with the most recent HireDate
-- select EmployeeId, LastName, FirstName, HireDate from Employee
-- order by HireDate desc, EmployeeId desc
-- limit 3;


-- Create a query that shows our 10 biggest invoices by Total value, in descending order.
-- If two invoices have the same Total, the more recent should appear first.
-- The query should also show the Name of the Customer

-- select concat(FirstName, " ", LastName) as Customer, InvoiceDate, Total from Invoice
-- inner join Customer on Invoice.CustomerId = Customer.CustomerId
-- order by Total desc, InvoiceDate desc
-- limit 10;

-- How Many Customers is Employee 4 the Sales Support Agent For?
-- select count(SupportRepId) from Customer
-- where SupportRepId = 4; 


-- How Many Customers is Jane Peacock the Sales Support Agent For?
-- select Employee.FirstName, Employee.LastName, Employee.EmployeeId as EmployeeId, count(Customer.SupportRepId) as Customer from Employee
-- join Customer on Customer.SupportRepId = Employee.EmployeeId
-- group by Employee.EmployeeId
-- having Employee.FirstName = 'Jane' and Employee.LastName = 'Peacock';



-- Which Media Type is most popular? How could you answer this with a single query?
-- You probably cannot based on what you know so far. We will get there.

-- select count(Track.TrackId) as Tracks, MediaType.Name as Media from Track
-- inner join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
-- group by MediaType.Name
-- order by Tracks desc;



-- What is the date of birth of our oldest employee?
-- SELECT MIN(BirthDate) FROM Employee;

-- On what date was our most recent employee hired?
-- select max(HireDate) from Employee;
-- select concat(Employee.FirstName, " ", Employee.LastName) as Employee, max(HireDate) as HireDate from Employee
-- group by Employee
-- order by HireDate desc
-- limit 1;



-- Average:
-- select avg(Total) from Invoice;
-- Round:
-- select round(avg(Total), 2) from Invoice;
-- Sum:
-- select Total from Invoice
-- where InvoiceId = 2;
-- select sum(UnitPrice * Quantity) from InvoiceLine
-- where InvoiceId = 2;



-- How many customers do we have in the City of Berlin Expected : 2
-- select count(City) from Customer where City = 'Berlin';



-- How much has been made in sales for the track "The Woman King". Expected : 3.98
-- select Track.Name as Track, sum(InvoiceLine.UnitPrice * InvoiceLine.Quantity) as Total from InvoiceLine
-- inner join Track on InvoiceLine.TrackId = Track.TrackId
-- where Track.Name = 'The Woman King';




-- Create a list of the top 5 acts by number of tracks.
-- The table should include the name of the artist and the number of tracks they have.
-- ME
-- select Artist.Name as Artist, count(Track.TrackId) as Tracks from Track
-- inner join Album on Track.AlbumId = Album.AlbumId
-- inner join Artist on Album.ArtistId = Artist.ArtistId
-- group by Artist
-- order by Tracks desc
-- limit 5;
-- -- SOLUTION
-- SELECT Artist.Name AS Artist, COUNT(Track.TrackId) AS Track FROM Artist
-- JOIN Album ON Artist.ArtistId = Album.ArtistId
-- JOIN Track ON Album.AlbumId = Track.AlbumId
-- GROUP BY Artist.Name
-- ORDER BY COUNT(Artist.Name)
-- DESC LIMIT 5;

-- insert into Track  (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
-- values ('I Will Follow', 349, 2, 1, 'U2', 220000, 1234, 0.99);
-- insert into Track
--     (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
-- values
--     ("Twilight", 349, 2, 1, 'U2', 220000, 1234, 0.99),("An Cat Dubh", 349, 2, 1, 'U2', 262000, 1234, 0.99),
--     ("Into the Heart", 349, 2, 1, 'U2', 262000, 1234, 0.99),
--     ("Out of Control", 349, 2, 1, 'U2', 262000, 1234, 0.99),
--     ("Stories for Boys", 349, 2, 1, 'U2', 262000, 1234, 0.99),
--     ("The Ocean", 349, 2, 1, 'U2', 262000, 1234, 0.99);

