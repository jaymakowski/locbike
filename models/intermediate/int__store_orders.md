{% docs int__store_orders %}

This model provides a summarized view of orders at the store level. It combines order and item-level data with store metadata, and enriches it with shipping performance metrics and aggregated order and product volumes. It is useful for analyzing store-level performance, fulfillment efficiency, and revenue trends.

**Columns:**

- **store_id**: Unique identifier for each store. Serves as a reference for joining with other store-level datasets.  
- **store_name**: Name of the store. Useful for reporting, visualization, and store-level analysis.  
- **order_id**: Unique identifier for each order. Included in the aggregation to enable count-based metrics.  
- **order_date**: The date when the order was placed. Enables time-based analysis of store sales trends.  
- **required_date**: The date by which the order was expected to be shipped. Used to calculate shipping performance.  
- **order_status**: Current status of the order (e.g., pending, shipped, cancelled). Helps understand fulfillment outcomes per store.  
- **shipped_on_time**: Categorized shipping metric based on comparison of `required_date` and `shipped_date`:
  - `shipped_late` if shipped after the required date.
  - `shipped_on_time` if shipped on or before the required date.
  - `not_shipped` if `shipped_date` is `NULL`.  
- **order_volume**: Count of distinct order items for the store. Indicates the number of items processed per store.  
- **product_volume**: Total quantity of products ordered for the store. Measures product-level throughput.  
- **discount_applied_order_total**: Sum of order item totals after applying discounts, rounded to two decimal places. Represents effective revenue at the store level.  
- **non_discounted_order_total**: Sum of order item totals without considering discounts, rounded to two decimal places. Useful for evaluating potential revenue or discount impact.  

This model provides a consolidated view of store performance, combining order fulfillment, shipping timeliness, and revenue metrics to support operational and strategic analysis.  

{% enddocs %}