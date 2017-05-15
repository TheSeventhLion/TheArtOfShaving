insert into product_in_order (order_id, product_id)
  values ($1, $2)
  returning *;