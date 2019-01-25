
COPY imdb.name_basics
FROM 's3://colibri-digital-source-data/name.basics.tsv.gz'
IGNOREHEADER 1
ACCEPTINVCHARS
DELIMITER '\t'
GZIP
iam_role 'arn:aws:iam::997661567820:role/redshift-spectrum-AccessS3BucketsRole-ZY449P7KMG0D';

COPY imdb.title
FROM 's3://colibri-digital-source-data/title.akas.tsv'
IGNOREHEADER 1
ACCEPTINVCHARS
DELIMITER '\t'
GZIP
iam_role 'arn:aws:iam::997661567820:role/redshift-spectrum-AccessS3BucketsRole-ZY449P7KMG0D';

COPY imdb.title_basics
FROM 's3://colibri-digital-source-data/title.basics.tsv.gz'
IGNOREHEADER 1
ACCEPTINVCHARS
DELIMITER '\t'
GZIP
iam_role 'arn:aws:iam::997661567820:role/redshift-spectrum-AccessS3BucketsRole-ZY449P7KMG0D';

