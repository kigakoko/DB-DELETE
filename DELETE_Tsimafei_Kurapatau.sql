with film_id as (
  select film_id from film where title = 'The Hangover'
), del_rentals as (
  delete from rental 
  where inventory_id in (
    select inventory_id from inventory where film_id = (select film_id from film_id)
  )
)
delete from inventory where film_id = (select film_id from film_id);


DELETE FROM payment WHERE customer_id = 4;
DELETE FROM rental WHERE customer_id = 4;