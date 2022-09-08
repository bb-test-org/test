CREATE TABLE test_book(
    id BIGINT PRIMARY KEY,
    email TEXT NOT NULL,
    created_ts BIGINT NOT NULL DEFAULT 1
);

CREATE INDEX idx_test_book on test_book(email);
