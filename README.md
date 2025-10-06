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

1) Install dbt (Databricks adapter)
  pip install --upgrade pip
  pip install dbt-core dbt-databricks

2) File Structure
.
├── models/
│ └── source/ # sources.yml lives here
├── seeds/ # CSVs loaded with dbt seed
├── snapshots/ # snapshot definitions
├── macros/ # reusable Jinja macros
├── tests/ # generic + singular tests
└── README.md

3) Configure your dbt profile
   dbt_learning:
  target: dev
  outputs:
    dev:
      type: databricks
      host: https://<your-workspace>.cloud.databricks.com
      http_path: /sql/1.0/warehouses/<warehouse-id>
      catalog: <your_dev_catalog>   # Unity Catalog
      schema: default               # schema inside the catalog
      threads: 4
      token: "{{ env_var('DATABRICKS_TOKEN') }}"
    prod:
      type: databricks
      host: https://<your-workspace>.cloud.databricks.com
      http_path: /sql/1.0/warehouses/<warehouse-id>
      catalog: <your_prod_catalog>
      schema: default
      threads: 4
      token: "{{ env_var('DATABRICKS_TOKEN') }}"

  

