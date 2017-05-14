insert into product_in_order (product_id, qty)
  values ($1, $2)
  returning *;