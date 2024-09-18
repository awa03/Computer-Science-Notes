# Homework 1
**Aiden Allen**

1.  Write a SQL query that lists only the length of all movies with a ‘G' rating

```mysql
SELECT * FROM movies
WHERE rating = 'G';
```

2. Write a Relational Algebra expression for Question 1

3. Write a SQL query that lists only the phone number and district name of Landmark Neptune Theater.

```mysql
SELECT DISTINCT t.DistrictCode, t.phone FROM (
	SELECT theaters.TheaterCode, theaters.name,
	theaters.phone, theaters2districts.DistrictCode
	FROM theaters
	INNER JOIN theaters2districts 
	ON theaters.TheaterCode = theaters2districts.TheaterCode
	AND theaters.name = "Landmark Neptune Theatre"
) AS t;
```

4. Write a Relational Algebra expression for Question 3.

5. Write a SQL query that lists the distinct movie title, theater name, district name of movies that are played in the ‘Capitol Hill’ district.

```mysql
SELECT DISTINCT tt.name, theaters.Name, movies.Title FROM (
	SELECT DISTINCT theaters2districts.TheaterCode, t.* 
	FROM (
		SELECT districts.name, districts.DistrictCode 
		FROM districts
		WHERE districts.name = "CAPITOL HILL"
	) AS t
	INNER JOIN theaters2districts
	ON t.DistrictCode = theaters2districts.DistrictCode
) AS tt
INNER JOIN theaters 
ON tt.TheaterCode = theaters.TheaterCode
INNER JOIN movies2theaters 
ON tt.TheaterCode = movies2theaters.TheaterCode
INNER JOIN movies 
ON movies.MovieCode = movies2theaters.MovieCode;
```

6. Write a Relational Algebra expression for Question 5

7. Compose a query plan for the Relational Algebra expression from Question 6

8.  Write a query that finds total number of theaters playing each movie.  Output(Movie name, Theater count).