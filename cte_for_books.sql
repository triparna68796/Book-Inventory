SELECT * 
FROM books;



WITH read_pages AS (
		  SELECT title,pages
         FROM books
         WHERE status = 'read' OR status = 'reading'
)

SELECT title,pages
FROM read_pages
ORDER BY pages DESC
;


WITH read_pages AS (
		  SELECT title,pages
         FROM books
         WHERE status = 'read' OR status = 'reading'
)

SELECT title,pages
FROM read_pages
ORDER BY pages DESC
LIMIT 1
;

WITH book_count AS (
    SELECT
        COUNT(CASE WHEN status = 'read' THEN 1 END) AS books_read,
        COUNT(CASE WHEN status = 'unread' THEN 1 END) AS books_not_read
    FROM books
)
SELECT * FROM book_count;






WITH read_books AS (
    SELECT title, ROW_NUMBER() OVER () AS rn
    FROM books
    WHERE status = 'read'
),
not_read_books AS (
    SELECT title, ROW_NUMBER() OVER () AS rn
    FROM books
    WHERE status = 'unread'
)
SELECT 
    rb.title AS books_read,
    nrb.title AS books_not_read
FROM read_books rb
LEFT JOIN not_read_books nrb ON rb.rn = nrb.rn

UNION

SELECT 
    rb.title AS books_read,
    nrb.title AS books_not_read
FROM read_books rb
RIGHT JOIN not_read_books nrb ON rb.rn = nrb.rn
WHERE rb.rn IS NULL;


--  SELECT title, ROW_NUMBER() OVER () AS rn
--     FROM books
--     WHERE status = 'read'; use ctrl and / for making comments

-- Books longer than the average page count
SELECT title, pages
FROM books
WHERE pages > (SELECT AVG(pages) FROM books);

-- Books from the most common genre
SELECT title, genre FROM books
WHERE genre = (
  SELECT genre FROM books
  GROUP BY genre
  ORDER BY COUNT(*) DESC
  LIMIT 1
);
