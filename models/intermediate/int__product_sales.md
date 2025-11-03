{% docs int__product_sales %}

This model provides an overview of product sales per product per day:
- **product_id**: Unique identifier for each product. Links to the product catalog and ensures traceability of sales by product.  
- **product_name**: Name of the product. Useful for reporting, display, and product-level analysis.  
- **order_id**: Unique identifier for each order. Links back to the orders table to track sales transactions.  
- **order_date**: The date when the order was placed. Enables time-based analysis of sales trends.  
- **quantity**: Number of units of the product ordered in this transaction. Helps measure product demand and sales volume.  
- **discount_applied_order_item_total**: Total monetary value of the order item after discounts. Useful for revenue analysis and assessing discount impact.  
- **non_discounted_order_item_total**: Total monetary value of the order item without any discounts applied. Helps calculate potential revenue and discount effect.  
- **brand_name**: Name of the brand associated with the product. Useful for brand-level performance tracking and reporting.  
- **category_name**: Name of the category the product belongs to. Useful for analyzing sales trends by category and for product segmentation.  

{% enddocs %}