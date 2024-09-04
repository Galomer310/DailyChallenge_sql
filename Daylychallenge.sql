CREATE TABLE FirstTab (
     id integer, 
     name VARCHAR(10)
)

INSERT INTO FirstTab VALUES
(5,'Pawan'),
(6,'Sharlee'),
(7,'Krish'),
(NULL,'Avtaar')

SELECT * FROM FirstTab


CREATE TABLE SecondTab (
    id integer 
)

INSERT INTO SecondTab VALUES
(5),
(NULL)


SELECT * FROM SecondTab


### Q: 1
 SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL )

### A: will output all the first tab id that is also at second tab but dont have a null value.
###   that will output the number 0 because there are no such values

### Q: 2
    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 )

### A: will show the index from second tab where the id number is not eqale to 5 
### so only the value 2 will be returned.

### Q: 3
    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab )
### A: count all the items from FirstTab that are not in id SecondTab 
### will output 0 because thr only id in second tab is 5 .

### Q: 4
    SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL )
### A: it filters for rows where id in not null so only 5 will be returned but the not in condition excludes rows where ft.id = 5 so  the remaining row in firstTab are 6, 7 so the output will be 2.