# Data Engineer on Amazon Cloud

# Amazon Redshift
## 1. Introduction to Amazon Redshift
Read my own [document](https://docs.google.com/presentation/d/10V6Sj21oUgDCdUGhwrm5vuvP8GR1XrI0/edit?usp=sharing&ouid=103057077167517333764&rtpof=true&sd=true)

<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-on-cloud/blob/master/public-imgs/amazon_redshift_architecture.png?raw=true" alt="drawing"/>
</p>

## 2. Getting start: Create cluster and use `Query editor v2`
Source [here](https://docs.aws.amazon.com/redshift/latest/gsg/bring-own-data.html).

### 2.1. Step 1: Create cluster
Some configurations:
- `Cluster identifier`: *redshift-cluster-sampe-1*.
- `Node type`: *dc2.large*.
- `Number of nodes`: 2.
- `Sample data`: tick `load sample data`. To use the sample dataset `Amazon Redshift` provides, in Sample data, choose Load sample data. `Amazon Redshift` loads the sample dataset `Tickit` to the default `dev` database and `public schema`.
- `Database configuration`: Enter your `Admin user name` and `Admin user password`.
- For this tutorial, create an `IAM role` and set it as the default for your cluster. There can only be one default `IAM role` set for a cluster.

### 2.2. Step 2: Create connection between `Query editor` and `cluster database`
`Query editor` --> click `Connect to database`.

Access to `Query editor v2` and use the connection that is created. Try query:
<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-on-cloud/blob/master/public-imgs/amazon_redshift_query.png?raw=true" alt="drawing"/>
</p>

## 3. Getting start: Load data from `Amazon S3` to `Amazon Redshift`
Source [here](https://docs.aws.amazon.com/redshift/latest/gsg/rs-gsg-create-sample-db.html).

### 3.1. Setup data in `Amazon S3`
Follow **Getting start: Upload file into `bucket` in `Amazon S3`** in `Amazon_S3` part in this repository.

### 3.2. Setup cluster in `Amazon Redshift`
Follow **2.1. Step 1: Create cluster** without create `sample data`.

### 3.3. Create and connect new database in `Amazon Redshift` by `Query editor`
Use `CREATE DATABASE` syntax, read [here](https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_DATABASE.html).

```bash
CREATE DATABASE ticket 
WITH OWNER nathan;
```

Then choose `ticket` tag in `Database`

### 3.4. Load data from `Amazon S3` to `Amazon Redshift` via `COPY` command
*Note:* We recommend using the `COPY` command to load large datasets into `Amazon Redshift` from `Amazon S3` or `Amazon DynamoDB`. 

#### Get permission to load data from `Amazon S3`.
Read [here](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-policy-language-overview.html) for more understanding.

*Example:*
```bash
{
    "Version": "2012-10-17",
    "Id": "ExamplePolicy01",
    "Statement": [
        {
            "Sid": "ExampleStatement01",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::123456789012:user/Dave"
            },
            "Action": [
                "s3:GetObject",
                "s3:GetBucketLocation",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::awsexamplebucket1/*",
                "arn:aws:s3:::awsexamplebucket1"
            ]
        }
    ]
}
```

#### Load data from `Amazon S3`.
Copy SQL command in `load_data_from_amazons3.sql` in `Query editor`.