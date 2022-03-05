-- Books per author
SELECT a.AuthorName, COUNT(b.BookID) as BookCount
FROM Authors as a
LEFT JOIN Books as b ON b.AuthorID = a.AuthorID
GROUP BY a.AuthorName;

-- Authors per book
SELECT b.BookName, COUNT(a.AuthorID) as AuthorCount
FROM Books as b
LEFT JOIN Authors as a ON a.AuthorID = b.AuthorID
GROUP BY b.BookName;

-- Author royalties on a book 
SELECT b.BookName, b.AuthorName, r.Royalty 
FROM Books as b
INNER JOIN Royalties as r ON b.BookID = r.BookID;

-- Book royalties per author 
SELECT b.AuthorName, SUM(r.Royalty) as RoyaltiesPerAuthor 
FROM Books as b
LEFT JOIN Royalties as r ON b.BookID = r.BookID
GROUP BY b.AuthorName;

-- Books in a Genre
SELECT Genre, COUNT(*)
FROM Books 
GROUP BY Genre;

-- Books by publisher

SELECT p.PublisherName, COUNT(b.BookID) as PublisherCount
FROM Publishers as p
LEFT JOIN Books as b ON b.PublisherID = p.PublisherID
GROUP BY p.PublisherName;

-- Editors per book
SELECT b.BookName, COUNT(b.EditorID) as EditorCount
FROM Books as b
GROUP BY b.BookName;

-- Books per editor
SELECT e.EditorName, COUNT(b.BookID) as BooksperEditorCount
FROM Editors as e
LEFT JOIN Books as b ON b.EditorID = e.EditorID
GROUP BY e.EditorName;

-- Books in an order
SELECT os.OrderID, COUNT(os.BookID) as BooksperOrder
FROM OrderDetails as os
GROUP BY os.OrderID;

-- Orders for a book 
SELECT os.BookID, COUNT(os.OrderID) as Ordersperbook
FROM OrderDetails as os
GROUP BY os.BookID;

-- Customer Orders 
SELECT os.OrderID, b.BookName
FROM OrderDetails as os
INNER JOIN Books as b ON os.BookID = b.BookID;

-- Orders per customer 

SELECT CustomerID, COUNT(OrderID)
FROM Orders 
Group By CustomerID;