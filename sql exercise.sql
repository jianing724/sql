-- Warm-up:
-- how mamy rows in the tycho table?
SELECT count(*) from tycho;
--print first 5 rows of tycho
SELECT * FROM tycho LIMIT 5;
--different loc_type? different disease?
SELECT DISTINCT loc_type FROM tycho;
SELECT DISTINCT disease FROM tycho;
--more complex:

--how many cases in state by disease?
SELECT disease, SUM(cases) AS total_cases
  FROM tycho WHERE loc_type = "STATE"
  GROUP BY disease;
SELECT disease, state, SUM(cases) AS total_cases
  FROM tycho WHERE loc_type = "STATE"
  GROUP BY disease, state;
--Normalization:

--seperate epi_week into a 'year' and "week" columns
SELECT CAST(substr(epi_week,1,4) AS INTEGER) AS year,
       CAST(substr(epi_week,5,2) AS INTEGER) AS week
FROM tycho LIMIT 5;

--How many smallpox cases by state in 1930?





