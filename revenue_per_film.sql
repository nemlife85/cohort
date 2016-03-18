Select
   film.title film_title,
   sum(film.rental_rate) film_rate,
   count(inventory.film_id) film_count,
   sum(film.rental_rate) * count(inventory.film_id) 합계
From
   rental, film, inventory
Where
   film.film_id=inventory.film_id
   AND
   inventory.inventory_id=rental.rental_id
Group by
   1
;



Select
	f.film_id,
	f.title,
	f.rental_rate * count(*)
From rental, film, inventory
Where
 r.inventory_id= i.inventory_id
and i.film_id=f.film_id
Group by 1
;