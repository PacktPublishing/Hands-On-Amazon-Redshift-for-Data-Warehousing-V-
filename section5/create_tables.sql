CREATE SCHEMA imdb;

CREATE TABLE imdb.title(
  titleId VARCHAR (20),
  ordering BIGINT,
  title VARCHAR (5000),
  region VARCHAR (100),
  language VARCHAR (500),
  types VARCHAR (5000),
  attributes VARCHAR (5000),
  isOriginalTitle BOOLEAN
);

CREATE TABLE imdb.title_basics(
  tconst VARCHAR (20),
  titleType VARCHAR (100),
  primaryTitle VARCHAR (5000),
  originalTitle VARCHAR (5000),
  isAdult BOOLEAN,
  startYear VARCHAR(4),
  endYear VARCHAR(40),
  runTimeMinutes BIGINT,
  genres VARCHAR(5000)
);

CREATE TABLE imdb.name_basics(
  nconst VARCHAR (20),
  primaryName VARCHAR (200),
  birthYear VARCHAR (4),
  deathYear VARCHAR (4),
  primaryProfession VARCHAR (5000),
  knownForTitles VARCHAR (5000)
);

CREATE EXTERNAL SCHEMA spectrum_schema FROM data catalog 
database 'spectrum_db' 
iam_role 'arn:aws:iam::997661567820:role/redshift-spectrum-AccessS3BucketsRole-ZY449P7KMG0D'
create external database if not exists;

CREATE EXTERNAL TABLE spectrum_schema.principles(
  tconst VARCHAR (20),
  ordering BIGINT,
  nconst VARCHAR (20),
  category VARCHAR (500),
  job VARCHAR (500),
  characters VARCHAR(5000)
)
row format delimited
fields terminated by '\t'
stored as textfile
location 's3://colibri-digital-source-data-spectrum/principles';

