# dbt Jaffle Shop Project

## Overview
This project demonstrates a complete dbt pipeline built on Snowflake using the Jaffle Shop dataset. It includes staging and marts layers, integrates Stripe payments data, and applies modular data modeling practices.

## Architecture
The project follows a layered dbt structure:

- **Staging**: Cleans and standardizes raw source data
- **Marts**: Applies business logic and aggregations for analytics

## Models

### Staging
- `stg_jaffle_shop__customers`
- `stg_jaffle_shop__orders`
- `stg_stripe__payment`

### Marts
- `dim_customers`
- `fct_orders`

## Key Features
- Modular SQL transformations using dbt models
- Dependency management via `ref()` (DAG-based pipeline)
- Source configuration using `.yml` files
- Aggregations including:
  - order counts
  - customer lifetime value
- Integration of multiple data sources (jaffle_shop + Stripe)

## Data Flow
Raw Snowflake tables → Staging models → Mart models

## Technologies Used
- dbt
- Snowflake
- SQL

## How to Run
```bash
dbt run
dbt test
