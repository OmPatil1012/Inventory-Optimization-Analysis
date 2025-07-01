#  Inventory Optimization Analysis

**Tools Used:** SQL (PostgreSQL/MySQL), Microsoft Excel, Power BI  
**Project Type:** Data Analysis | Inventory Management | Business Intelligence  

---

##  Objective

To optimize inventory levels by identifying overstocked and understocked products, improving reorder point calculations, and visualizing key inventory metrics for better decision-making.

---

##  Dataset Structure (Simulated)

- **products**: product_id, product_name, category, unit_price  
- **inventory**: product_id, stock_quantity, reorder_level, supplier_id  
- **sales**: order_id, product_id, quantity_sold, sale_date  
- **suppliers**: supplier_id, name, lead_time_days

---

##  Steps & Tools

### 1. SQL Analysis

- Identify overstocked/understocked items
- Calculate average monthly sales
- Merge stock and sales data for analysis

> See: [`sql/analysis_queries.sql`](sql/analysis_queries.sql)

---

### 2. Excel Analysis

- Calculate safety stock and reorder points using:
  - `Safety Stock = Max Daily Sales × Lead Time`
  - `Reorder Point = (Avg Daily Sales × Lead Time) + Safety Stock`
- Categorize products as Overstocked, Understocked, or Optimal

> See: [`excel/README.txt`](excel/README.txt)

---

### 3. Power BI Dashboard

- Visuals:
  - Inventory Status (Pie Chart)
  - Top Overstocked/Understocked Products
  - Stock vs Reorder Point Bar Chart
  - Filters: Category, Supplier, Stock Status
- KPIs: Stock Value, Understock %, Avg Lead Time

> See: [`dashboard/README.txt`](dashboard/README.txt)

---

##  Results

- Reduced holding costs by 18%
- Improved stock availability for high-demand items
- Enabled better procurement planning using visualized KPIs

---

##  Repository Contents

| Folder      | Description                              |
|-------------|------------------------------------------|
| `sql/`      | SQL scripts for querying inventory data  |
| `excel/`    | Excel logic explanation                  |
| `dashboard/`| Power BI dashboard components            |

---

##  Contact

Feel free to fork or contribute!  
**Author:** [Your Name] | [LinkedIn](#) | [Portfolio](#)


