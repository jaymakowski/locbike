{% docs int__orders %}

This model provides an initial aggregation of orders:
- **order_id**: Unique identifier for each order. Serves as the primary key to join with order items.  
- **order_date**: The date when the order was created. Useful for time-based analysis and trend tracking.  
- **required_date**: The date by which the order is expected to be shipped. Used to calculate shipping performance.  
- **shipped_date**: The date when the order was actually shipped. Can be `NULL` if the order has not been shipped yet.  
- **order_status**: Current status of the order (e.g., pending, shipped, cancelled). Helps track the lifecycle of orders.  
- **store_id**: Identifier of the store associated with the order. Useful for multi-store performance analysis.  
- **shipped_on_time**: Categorized shipping metric based on comparison of `required_date` and `shipped_date`:
  - `shipped_late` if shipped after the required date.
  - `shipped_on_time` if shipped on or before the required date.
  - `not_shipped` if `shipped_date` is `NULL`.  
- **product_id**: Identifier of the product associated with the order item. Links to product catalog for enrichment.  
- **order_item_id**: Unique identifier for each order item within an order. Distinguishes multiple items in a single order.  
- **quantity**: Number of units ordered for the specific product. Useful for inventory and sales analysis.  
- **discount_applied_order_item_total**: Total monetary value of the order item after discounts. Helps analyze effective revenue and discount impact.  
- **non_discounted_order_item_total**: Total monetary value of the order item without applying any discount. Useful for calculating potential revenue or discount effect.  

{% enddocs %}
