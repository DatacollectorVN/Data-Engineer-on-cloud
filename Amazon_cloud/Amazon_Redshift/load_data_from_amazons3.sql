COPY users FROM 's3://<myBucket>/tickit/allusers_pipe.txt' 
iam_role DEFAULT
delimiter '|' region '<aws-region>';

COPY venue FROM 's3://<myBucket>/tickit/venue_pipe.txt' 
iam_role DEFAULT
delimiter '|' region '<aws-region>';

COPY category FROM 's3://<myBucket>/tickit/category_pipe.txt' 
iam_role DEFAULT
delimiter '|' region '<aws-region>';

COPY date FROM 's3://<myBucket>/tickit/date2008_pipe.txt' 
iam_role DEFAULT
delimiter '|' region '<aws-region>';

COPY event FROM 's3://<myBucket>/tickit/allevents_pipe.txt' 
iam_role DEFAULT
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region '<aws-region>';

COPY listing FROM 's3://<myBucket>/tickit/listings_pipe.txt' 
iam_role DEFAULT
delimiter '|' region '<aws-region>';

COPY sales FROM 's3://<myBucket>/tickit/sales_tab.txt'
iam_role DEFAULT
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region '<aws-region>';