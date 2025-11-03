{% docs mrt__brand_performance %}

This model provides a monthly summary of sales performance by brand. It aggregates order and product-level sales data to enable analysis of brand performance trends over time, including total sales value, order volume, and product quantity sold per month.

**Columns:**

- **brand_name**: Name of the product brand. Used to group and analyze sales at the brand level.  
- **order_month**: Month of the order, formatted as `Mon-YYYY` (e.g., `Jan-2025`). Derived by truncating `order_date` to the month level, allowing for monthly trend analysis.  
- **order_count**: Count of distinct orders placed for the brand in the given month. Measures overall order activity and brand popularity.  
- **quantity_total**: Total number of products sold under the brand during the month. Useful for understanding unit sales and demand patterns.  
- **brand_sales_total**: Total sales value of the brand for the month, calculated as the sum of all discounted order item totals. Represents realized revenue after discounts.  

This model enables monthly brand-level performance tracking, supporting analyses such as:
- Sales growth trends per brand over time.  
- Comparison of brand order volume and revenue performance.  
- Evaluation of product demand and brand contribution to overall sales.  

{% enddocs %}
