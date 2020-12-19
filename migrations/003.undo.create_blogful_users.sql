ALTER TABLE blogful_articles
  ADD COLUMN
    author INTEGER REFERENCES blogful_users(id)
    ON DELETE SET NULL;

ALTER TABLE blogful_articles
  DROP COLUMN author;

DROP TABLE IF EXISTS blogful_users;