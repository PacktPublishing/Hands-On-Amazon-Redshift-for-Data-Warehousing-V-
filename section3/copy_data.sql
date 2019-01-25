COPY imdb.title
FROM 's3://colibri-digital-source-data/title.akas.tsv'
IGNOREHEADER 1
ACCEPTINVCHARS
DELIMITER '\t'
iam_role 'arn:aws:iam::997661567820:role/first-redshift-AccessS3BucketsRole-ZRKEHOCP0FSU';

COPY imdb.title_basics
FROM 's3://colibri-digital-source-data/title.basics.tsv.gz'
IGNOREHEADER 1
ACCEPTINVCHARS
DELIMITER '\t'
GZIP
iam_role 'arn:aws:iam::997661567820:role/first-redshift-AccessS3BucketsRole-ZRKEHOCP0FSU';
