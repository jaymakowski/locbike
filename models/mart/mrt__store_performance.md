{% docs mrt__store_performance %}

This model provides a monthly summary of store performance, combining sales, shipping, and discount metrics. It aggregates data from store-level orders to evaluate operational efficiency, fulfillment timeliness, and overall revenue performance per store over time.

**Columns:**

- **store_name**: Name of the store. Used to group and analyze monthly performance at the store level.  
- **order_month**: Month of the order, formatted as `Mon-YYYY` (e.g., `Jan-2025`). Derived by truncating `order_date` to the month level, allowing for monthly performance tracking and trend analysis.  
- **shipped_late_rate**: Percentage of orders shipped late relative to total shipped orders for the month, rounded to two decimal places. Indicates store shipping performance efficiency.  
- **store_order_volume_total**: Total number of order items processed by the store in the month. Represents the volume of distinct order items handled.  
- **store_product_volume_total**: Total quantity of products sold by the store during the month. Measures store sales throughput.  
- **store_sales_total**: Total monetary value of all discounted sales for the store in the month. Represents realized revenue after discounts.  
- **discount_rate**: Average discount impact for the store during the month, division by zero is prevented using `NULLIF`. Higher values indicate a stronger effect of discounts on total sales.  

This model supports analyses such as:  
- Monthly revenue and sales volume performance per store.  
- Comparison of shipping timeliness across stores.  
- Evaluation of discount strategies and their effect on store revenue.  
- Identification of operational or sales inefficiencies over time.  

{% enddocs %}
