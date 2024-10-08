-- 1. Give the name, release year, and worldwide gross of the lowest grossing movie. 
SELECT specs.film_title AS name, specs.release_year AS release_year, AVG(revenue.worldwide_gross) AS lowest_gross
FROM specs
INNER JOIN revenue
ON specs.movie_id = revenue.movie_id
GROUP BY specs.film_title, specs.release_year
ORDER BY AVG(revenue.worldwide_gross) ASC
LIMIT;

--The lowest grossing movie is Semi-Tough

-- 2. What year has the highest average imdb rating?
SELECT specs.release_year, rating.imdb_rating
FROM specs
INNER JOIN rating
ON rating.movie_id = specs.movie_id
GROUP BY specs.release_year, rating.imdb_rating
ORDER BY AVG(rating.imdb_rating) DESC
LIMIT 1

--2008 has the highest rating

-- 3. What is the highest grossing G-rated movie? Which company distributed it?
SELECT specs.film_title, specs.mpaa_rating, distributors.company_name, revenue.worldwide_gross AS highest_grossing



-- 4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies 
-- table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.


-- 5. Write a query that returns the five distributors with the highest average movie budget.


-- 6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?


-- 7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?
