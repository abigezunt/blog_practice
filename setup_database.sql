DROP TABLE blog;
CREATE TABLE blog
(
  id SERIAL4 PRIMARY KEY,
  title text,
  body text,
  created_at timestamp DEFAULT current_timestamp
);

