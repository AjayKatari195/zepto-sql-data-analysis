# Zepto SQL Data Analysis

## Project Overview

This project analyzes Zepto's product dataset using PostgreSQL to uncover insights related to product pricing, discounts, inventory, product availability, and category-level performance.

The analysis includes data exploration, data quality checks, data cleaning, and business-focused SQL analysis.

## Objectives

- Explore and understand the Zepto product dataset
- Identify missing and inconsistent data
- Clean and prepare the data for analysis
- Analyze product pricing and discount patterns
- Identify high-value and high-priced products
- Analyze product availability and stock status
- Estimate potential revenue by category
- Evaluate price efficiency based on product weight
- Analyze inventory weight across product categories

## Business Questions

1. Which products offer the highest discounts?
2. Which high-MRP products are currently out of stock?
3. What is the estimated revenue by product category?
4. Which products have a high MRP but relatively low discounts?
5. Which categories offer the highest average discounts?
6. Which products provide the best price per gram?
7. How can products be categorized based on their weight?
8. Which categories have the highest total inventory weight?

## Data Cleaning

The following data preparation steps were performed:

- Checked the dataset for NULL values
- Identified products with zero pricing
- Removed invalid records with zero MRP
- Converted product prices from paise to rupees
- Investigated repeated product names and SKU-level records

## SQL Concepts Used

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT
- GROUP BY
- HAVING
- Aggregate Functions
- CASE Expressions
- ROUND()
- DELETE
- UPDATE
- Boolean filtering

## Analysis Areas

### Product & Pricing Analysis

Analyzed MRP, selling price, discount percentages, and price efficiency to identify attractive product offerings.

### Inventory Analysis

Examined stock availability and calculated total inventory weight across product categories.

### Category Analysis

Compared categories based on average discounts and estimated revenue.

### Product Value Analysis

Calculated price per gram for products above 100g to identify products offering better value based on weight.

## Analysis Areas

### Product & Pricing Analysis

Analyzed MRP, selling price, discount percentages, and price efficiency to identify attractive product offerings.

### Inventory Analysis

Examined stock availability and calculated total inventory weight across product categories.

### Category Analysis

Compared categories based on average discounts and estimated revenue.

### Product Value Analysis

Calculated price per gram for products above 100g to identify products offering better value based on weight.

## Key Insights

- **Discount Analysis:** Identifies products and categories offering the highest discounts, helping evaluate promotional strategies and customer value.

- **Stock Availability:** Highlights high-priced products that are currently out of stock, helping identify potential inventory and availability issues.

- **Revenue Analysis:** Estimates potential revenue across product categories using selling price and available quantity, enabling category-level performance      comparison.

- **Pricing Analysis:** Identifies high-MRP products with relatively low discounts, providing visibility into premium-priced products and discounting patterns.

- **Product Value Analysis:** Calculates price per gram for products above 100g to compare products based on their effective price-to-weight value.

- **Inventory Analysis:** Measures total inventory weight by category to understand how inventory is distributed across different product categories.

- **Product Weight Segmentation:** Groups products into Low, Medium, and Bulk categories using SQL CASE expressions, making product-level analysis easier.

## Tools Used

- PostgreSQL
- SQL
- pgAdmin

## Project Structure

```text
zepto-sql-data-analysis/
│
├── README.md
└── zepto_real_dataset.sql
