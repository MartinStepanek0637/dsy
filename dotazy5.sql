

/*5.1*/

select film.film_id, film.title, count(distinct film_actor.actor_id), count(distinct film_category.category_id)
from film
    join film_actor ON film.film_id = film_actor.film_id
    join film_category ON film_category.film_id = film.film_id
group by film.film_id, film.title



SELECT film_id, title,(select count(actor_id) from film_actor where film.film_id = film_actor.film_id),
(select count(category_id) from film_category where film.film_id = film_category.film_id)
from film

/*5.5*/

