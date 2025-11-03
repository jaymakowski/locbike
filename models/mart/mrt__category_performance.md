{% docs mrt__category_performance %}

This model provides a monthly summary of sales performance by product category. It aggregates order and product-level data to analyze category trends over time, including order volume, total units sold, and total sales value.

**Columns:**

- **category_name**: Name of the product category. Used to group and analyze sales at the category level.  
- **order_month**: Month of the order, formatted as `Mon-YYYY` (e.g., `Jan-2025`). Derived by truncating `order_date` to the month level, enabling month-over-month performance comparisons.  
- **order_count**: Count of distinct orders containing products from the category in the given month. Indicates how frequently products in the category are ordered.  
- **quantity_total**: Total number of product units sold within the category for the month. Useful for measuring demand and sales volume by category.  
- **category_sales_total**: Total sales value for the category in the month, calculated as the sum of all discounted order item totals. Represents realized revenue after discounts.  

This model supports insights such as:  
- Monthly revenue trends by product category.  
- Category performance comparisons and seasonality analysis.  
- Identification of top-performing or declining product categories.  

{% enddocs %}
