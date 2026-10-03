--CREATE DATABASE gamestore_db;
DROP TABLE public.games;
CREATE TABLE games (id serial primary key, title varchar(55), developer varchar(55), genre varchar(55)
, price int, units_in_stock int ,release_date date,
user_score numeric(3,1) check (user_score between 0.0 and 10.0));
TRUNCATE public.games;
SELECT * FROM public.games;
ALTER TABLE public.games ADD COLUMN platform varchar(55);
ALTER TABLE public.games ALTER COLUMN units_in_stock type smallint;
SELECT * FROM public.games;
INSERT INTO public.games (id, title, developer, genre, price, units_in_stock,release_date,
user_score,platform)
VALUES (1,'CSGO','Valve','Shooter',100,10002,'2000-03-02',10,'Steam'),
(2,'CS2','Valve','Strategy',55,10009,'2006-03-02',8,'Steam'),
(3,'Valorant','epic','Shooter',15,10009,'2016-03-02',NULL,'Epic'),
(4,'fifa','fifa','Sports',244,109,'2020-03-02',7,'Steam'),
(5,'ETS2','Nets','Drive',2,13009,'2006-03-02',3,'Steam'),
(6,'GTA-VI','rockstar','RPG',35,5009,'2028-05-02',2,'Rockstar');
UPDATE public.games SET price=price*1.15 where genre='RPG';
SELECT * FROM public.games;
DELETE FROM public.games WHERE title='fifa';
SELECT title as "Game Title", price as "PRICE(AZN)" FROM public.games;
SELECT distinct platform from public.games;
SELECT title as "Game Title", price as "PRICE(AZN)", price*0.8 as "FINAL PRICE" FROM public.games;
SELECT title as "Game Title", price*units_in_stock as "Total value of stocks(price*stock)" FROM public.games;
SELECT title as "Game Title", price*units_in_stock as "Total value of stocks(price*stock)" FROM public.games;
SELECT title as "Game Title", price*units_in_stock as "Total value of stocks(stock)" FROM public.games;
SELECT * FROM public.games WHERE user_score is NULL;
SELECT * FROM public.games WHERE price between 30 and 70 and (genre='RPG' or genre='Strategy');
SELECT * FROM public.games WHERE developer ILIKE 'n%';
SELECT * FROM public.games ORDER BY user_score desc NULLS LAST limit 3;
SELECT * FROM public.games ORDER BY user_score desc NULLS FIRST limit 3;