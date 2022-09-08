CREATE TABLE test_book(
    id BIGINT,
    email TEXT,
    created_ts BIGINT NOT NULL DEFAULT (extract(epoch from now()))
);

CREATE INDEX test_book_e on test_book(email);