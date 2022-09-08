CREATE TABLE test_book(
    id BIGINT,
    email TEXT,
    created_ts BIGINT NOT NULL DEFAULT 1
);

CREATE INDEX test_book_e on test_book(email);