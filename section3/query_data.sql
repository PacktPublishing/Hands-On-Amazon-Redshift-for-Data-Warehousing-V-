select count(*) from imdb.title;
select count(*) from imdb.title_basics;
select distinct language from imdb.title order by language;
select max(runtimeminutes), min(runtimeminutes), avg(runtimeminutes), count(*) from imdb.title_basics;
select count(*) from imdb.title_basics where isadult = true;


select
       title.title,
       title.language,
       title_basics.primarytitle,
       title_basics.startyear,
       title_basics.genres
from imdb.title
  join imdb.title_basics on title.titleid = title_basics.tconst
where title.language = 'en' limit 100;
