select
  title.title,
  title.language,
  title_basics.primarytitle,
  title_basics.startyear,
  title_basics.genres,
  principles.nconst,
  name_basics.primaryname,
  name_basics.primaryprofession
from imdb.title
  join imdb.title_basics on title.titleid = title_basics.tconst
  join spectrum_schema.principles on title.titleid = principles.tconst
  join imdb.name_basics on name_basics.nconst = principles.nconst
where title.language = 'en'
and title_basics.startyear is not null
order by title_basics.startyear desc
limit 500;
