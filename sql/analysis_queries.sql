-- Identify stock status
SELECT 
    p.product_name,
    i.stock_quantity,
    i.reorder_level,
    CASE 
        WHEN i.stock_quantity < i.reorder_level THEN 'Understocked'
        WHEN i.stock_quantity > i.reorder_level * 2 THEN 'Overstocked'
        ELSE 'Optimal'
    END AS stock_status
FROM inventory i
JOIN products p ON p.product_id = i.product_id;

-- Average Monthly Sales
SELECT 
    product_id,
    ROUND(SUM(quantity_sold) / 3.0, 2) AS avg_monthly_sales
FROM sales
WHERE sale_date >= CURRENT_DATE - INTERVAL 3 MONTH
GROUP BY product_id;

-- Merge for full analysis
SELECT 
    p.product_name,
    i.stock_quantity,
    i.reorder_level,
    s.avg_monthly_sales,
    sup.lead_time_days
FROM inventory i
JOIN (
    SELECT 
        product_id,
        ROUND(SUM(quantity_sold) / 3.0, 2) AS avg_monthly_sales
    FROM sales
    WHERE sale_date >= CURRENT_DATE - INTERVAL 3 MONTH
    GROUP BY product_id
) s ON s.product_id = i.product_id
JOIN products p ON p.product_id = i.product_id
JOIN suppliers sup ON sup.supplier_id = i.supplier_id;
