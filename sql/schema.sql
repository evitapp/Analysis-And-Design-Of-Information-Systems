DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  c_customer_sk INTEGER,
  c_customer_id CHAR(16),
  c_birth_year INTEGER,
  c_birth_country VARCHAR(20)
);