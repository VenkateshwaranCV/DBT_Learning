A small hands-on repo I used to learn the **fundamentals of DBT** on **Databricks**.  
It covers environment setup, project scaffolding, sources/models, tests (generic, custom & singular), seeds, Jinja macros, and snapshots.

---

## What I learned / What’s inside

- **Environment & project setup**
  - Create and activate a Python virtual environment
  - Install `dbt-core` and `dbt-databricks`
  - Configure `~/.dbt/profiles.yml` and connect to a **Databricks SQL Warehouse**
- **dbt file structure**
  - `models/` organized into **Bronze → Silver → Gold**
  - `sources.yml` to register raw/source tables
- **Data tests**
  - Built-in generic tests: `unique`, `not_null`, `accepted_values`, etc.
  - **Custom generic test** (e.g., `generic_non_negative`)
  - **Singular tests** (standalone SQL assertions)
- **Seeds**
  - Load CSVs into the warehouse via `dbt seed`
- **Jinja & Macros**
  - Write reusable macros (e.g., `multiply`) and call them from models
- **Snapshots**
  - Track slowly changing records with snapshot configurations


  


