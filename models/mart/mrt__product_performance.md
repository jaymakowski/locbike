{% docs mrt__product_performance %}

This model provides a monthly summary of sales performance at the product level. It aggregates order and item-level data to enable tracking of product demand, revenue, and discount impact over time.  

**Columns:**

- **product_name**: Name of the product. Used to group and analyze sales performance at the individual product level.  
- **order_month**: Month of the order, formatted as `Mon-YYYY` (e.g., `Jan-2025`). Derived by truncating `order_date` to the month level, allowing for temporal sales trend analysis.  
- **order_count**: Count of distinct orders that include the product during the given month. Indicates how frequently the product was sold.  
- **quantity_total**: Total number of product units sold in the given month. Useful for tracking product demand and inventory turnover.  
- **product_sales_total**: Total sales value for the product in the given month, calculated as the sum of discounted order item totals. Represents actual revenue after discounts.  
- **product_discount_rate**: Proportion of discount applied to the product in the given month,
  This metric shows the average relative discount for the product, where higher values indicate a greater discount impact. Division by zero is avoided using `NULLIF`.  

This model supports analyses such as:  
- Monthly sales trends for each product.  
- Identification of best-selling products over time.  
- Tracking the effect of discounts on product-level revenue.  
- Evaluating pricing and discounting strategies.  

{% enddocs %}
