# Goodreads Books DBT Project

This contains a dbt project built on the **Goodreads Books** dataset.
The goal is to create a clean, modular analytics flow using **staging**, **marts**, and **seeded raw data** inside a **DuckDB** warehouse.

## Data Flow

**1. Seeds**: The raw Goodreads books dataset is cleaned using Python and saved as `cleaned_books.csv` in `seeds` folder. 

**2. Staging**: This transforms the raw seed into analysis-ready table.
Files:
```bash
models/staging/books_data.sql
models/staging/_stg_sources.yml
models/staging/_stg_tests.yml
```

**3. Marts Layer**: This contains final analytical outputs grouped logically:
  - **Filtered Models**
      - Non-English Books
      - Spanish books
  - **Aggregate Models**
      - Books per publisher
      - Average text review count
      - Rating-based categorisation

## How to Run

Build the entire project using:
```bash
dbt build
```