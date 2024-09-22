# Homework 1
**Aiden Allen**

1.  Write a SQL query that lists only the length of all movies with a ‘G' rating

```mysql
SELECT * FROM movies
WHERE rating = 'G';
```

2. Write a Relational Algebra expression for Question 1

$$
\sigma_{\text{rating} = 'G'}(\text{Movies})
$$

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

$$
\pi_{\text{DistrictCode}, \text{phone}}\left(\sigma_{\text{name} = "Landmark Neptune Theatre"}\left(\text{Theaters} \bowtie \text{Theaters2Districts}\right)\right)
$$

This relational algebra statement starts by using a join between the Theaters and Theaters2Districts tables to find all relevant theaters. Then, it applies a selection to focus on the theater named "Landmark Neptune Theatre." Finally, it uses projection to gather the DistrictCode and phone number from the results. The aggregate is shown within parentheses to indicate that the selection happens before the projection. We dont need to include the any operator to make our result distinct since this is an implicit operation. 

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

$$
\pi_{\text{name}, \text{Name}, \text{Title}} \left( 
\left( 
\pi_{\text{TheaterCode}, *} \left( 
\sigma_{\text{name} = "CAPITOL HILL"}(\text{Districts}) 
\bowtie \text{Theaters2Districts} 
\right) 
\right) 
\bowtie \text{Theaters} 
\bowtie \text{Movies2Theaters} 
\bowtie \text{Movies} 
\right)
$$


7. Compose a query plan for the Relational Algebra expression from Question 6

![[q1.drawio.png]]

8.  Write a query that finds total number of theaters playing each movie.  Output(Movie name, Theater count).

```mysql
SELECT movies.Title, COUNT(movies.Title) AS MovieCount
FROM districts
INNER JOIN theaters2districts ON districts.DistrictCode = theaters2districts.DistrictCode
INNER JOIN theaters ON theaters.TheaterCode = theaters2districts.TheaterCode
INNER JOIN movies2theaters ON movies2theaters.TheaterCode = theaters.TheaterCode
INNER JOIN movies ON movies.MovieCode = movies2theaters.MovieCode
GROUP BY movies.Title;
```

9. Write a query that lists the theater name and average length of
movies shown in the theater

```mysql
SELECT movies2theaters.TheaterCode, AVG(movies.Length) AS MovieLength
FROM districts
INNER JOIN theaters2districts ON districts.DistrictCode = theaters2districts.DistrictCode
INNER JOIN theaters ON theaters.TheaterCode = theaters2districts.TheaterCode
INNER JOIN movies2theaters ON movies2theaters.TheaterCode = theaters.TheaterCode
INNER JOIN movies ON movies.MovieCode = movies2theaters.MovieCode
GROUP BY movies.Title;
```

10. Write a query to find the theaters in each district playing movies greater than the average length of all movies. list district, theater, movie and length.

```mysql
SELECT 
	districts.DistrictCode,
    movies2theaters.TheaterCode, 
	movies.Title,
    movies.Length
FROM districts
INNER JOIN theaters2districts ON districts.DistrictCode = theaters2districts.DistrictCode
INNER JOIN theaters ON theaters.TheaterCode = theaters2districts.TheaterCode
INNER JOIN movies2theaters ON movies2theaters.TheaterCode = theaters.TheaterCode
INNER JOIN movies ON movies.MovieCode = movies2theaters.MovieCode
WHERE movies.Length > (
    SELECT AVG(Length) 
    FROM movies
);
```

11.  Write a query that lists movie name, rating and length where rating contains the letter ‘R’ and has a length greater than 100

```mysql
SELECT DISTINCT
	movies.Title,
    movies.Length,
	movies.Rating
FROM districts
INNER JOIN theaters2districts ON districts.DistrictCode = theaters2districts.DistrictCode
INNER JOIN theaters ON theaters.TheaterCode = theaters2districts.TheaterCode
INNER JOIN movies2theaters ON movies2theaters.TheaterCode = theaters.TheaterCode
INNER JOIN movies ON movies.MovieCode = movies2theaters.MovieCode
WHERE movies.Length > 100 and movies.Rating = 'R';
```

12. Write a Query to list movie name, movie rating, length, theater and district for the longest ‘R’ rated movie or any ‘PG’ rated movie.

```mysql
SELECT DISTINCT
    movies.Title,
    movies.Length,
    movies.Rating
FROM districts
INNER JOIN theaters2districts ON districts.DistrictCode = theaters2districts.DistrictCode
INNER JOIN theaters ON theaters.TheaterCode = theaters2districts.TheaterCode
INNER JOIN movies2theaters ON movies2theaters.TheaterCode = theaters.TheaterCode
INNER JOIN movies ON movies.MovieCode = movies2theaters.MovieCode
WHERE movies.Rating = 'PG'
   OR (movies.Rating = 'R' AND movies.Length = (
        SELECT MAX(Length)
        FROM movies
        WHERE Rating = 'R'
    ));
```

13. Write a query to list movie, theater and movie time of all movies played after 19:00:00

```mysql
SELECT DISTINCT
    movies.Title,
    movies.Length,
    movies.Rating
FROM districts
INNER JOIN theaters2districts ON districts.DistrictCode = theaters2districts.DistrictCode
INNER JOIN theaters ON theaters.TheaterCode = theaters2districts.TheaterCode
INNER JOIN movies2theaters ON movies2theaters.TheaterCode = theaters.TheaterCode
INNER JOIN movies ON movies.MovieCode = movies2theaters.MovieCode 
WHERE movies2theaters.movietime > "19:00:00";
```
