USE LibraryManagement;

INSERT IGNORE INTO authors (author_name) VALUES
('George Orwell'),
('J.K. Rowling'),
('J.R.R. Tolkien');

INSERT IGNORE INTO genres (genre_name) VALUES
('Fiction'),
('Fantasy'),
('Science Fiction');

INSERT IGNORE INTO books (title, publication_year, author_id, genre_id) VALUES
('1984', 1949, 1, 1),
('Harry Potter and the Philosopher\'s Stone', 1997, 2, 2),
('The Lord of the Rings', 1954, 3, 2);

INSERT IGNORE INTO users (username, email) VALUES
('john_doe', 'john.doe@example.com'),
('jane_smith', 'jane.smith@example.com');

INSERT IGNORE INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-01-01', '2024-01-15'),
(2, 2, '2024-02-01', NULL);
