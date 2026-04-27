# Distributed SQL Query Execution Across Heterogeneous Data Systems

## 📌 Overview

This project explores the execution of distributed SQL queries across heterogeneous data storage systems using **Trino** as a unified query engine.

The system integrates:

* Relational databases (**PostgreSQL**)
* NoSQL document stores (**MongoDB**)
* Search & analytics engines (**Elasticsearch**)

The evaluation is performed using the **TPC-DS benchmark**, focusing on performance, scalability, and query optimization across different storage paradigms.

---

## 🧱 Architecture

The system is built using a containerized environment with **Docker**, where each data source runs in an isolated container.

**Components:**

* Trino (query engine)
* PostgreSQL (relational DB)
* MongoDB (document DB)
* Elasticsearch (search/analytics engine)
* TPC-DS dataset generator

---

## ⚙️ Tech Stack

* Trino
* PostgreSQL
* MongoDB
* Elasticsearch
* Docker & Docker Compose
* SQL / Distributed Queries
* TPC-DS Benchmark

---

## 🚀 Features

* Distributed query execution across multiple heterogeneous data sources
* Performance benchmarking using TPC-DS dataset
* Query optimization analysis using `EXPLAIN ANALYZE`
* Aggregation and join operations across different systems
* Containerized infrastructure for reproducibility

---

## 🐳 Setup & Execution

### 1. Clone repository

```bash
git clone https://github.com/evitapp/Analysis-And-Design-Of-Information-Systems.git
cd Analysis-And-Design-Of-Information-Systems
```

### 2. Start services

```bash
docker-compose up -d
```

### 3. Generate dataset (TPC-DS)

* Build TPC-DS tools container
* Generate data using `dsdgen`

### 4. Load data

* PostgreSQL: using COPY commands
* MongoDB: using transformed CSV data
* Elasticsearch: using Bulk API (NDJSON format)

### 5. Run queries

Queries are executed:

* Directly on each system
* Through Trino for distributed execution

---

## 📊 Performance Evaluation

| Query Type                    | PostgreSQL | MongoDB | Elasticsearch | Trino (PostgreSQL) | Trino (MongoDB) |
| ----------------------------- | ---------- | ------- | ------------- | ------------------ | --------------- |
| Aggregation by year & country | ~45 ms     | ~176 ms | ~38 ms        | ~527 ms            | ~624 ms         |
| Avg purchase (grouped)        | ~83 ms     | ~89 ms  | ~58 ms        | ~586 ms            | ~342 ms         |
| Customers per region          | ~28 ms     | ~119 ms | ~49 ms        | ~447 ms            | ~328 ms         |

---

## 🔍 Key Findings

* PostgreSQL performs best for structured queries with joins and aggregations
* MongoDB performs well for aggregation-heavy queries without joins
* Elasticsearch provides the fastest performance for analytics queries
* Trino enables unified querying but introduces overhead due to distributed execution

---

## 📁 Project Structure

```
.
├── docker-compose.yml
├── trino/
├── data/
├── queries/
├── scripts/
└── README.md
```

---

## 📚 References

* TPC-DS Benchmark
* Docker Documentation
* PostgreSQL Docs
* MongoDB Docs
* Elasticsearch Docs
* Trino Docs

---

## 👩‍💻 Author

Evangelia Pappa
