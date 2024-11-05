SELECT round((sum(item_count*order_occurrences)::numeric/sum(order_occurrences)),1) as mean FROM items_per_order;
