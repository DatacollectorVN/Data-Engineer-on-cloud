# Data Engineer on Amazon Cloud

##  1. Overview of Amazon Web Service (AWS) RedShift
src [here](https://www.educba.com/what-is-aws-redshift/).

`AWS Redshift` is a service by `AWS` that provides a fully managed and scaled for petabyte warehousing with an enterprise-class `relational database management system` that supports client connections with many types of applications, including reporting, analytical tools, and enhanced `business intelligence (BI)` application where you can query large amounts of data in multiple-stage operations to produce final result and all these at very efficient storage and optimum query performance through a massively parallel processing and query execution.
Some technologies in `AWS Redshift`:

<p align = "center">
    <img src="https://cdn.educba.com/academy/wp-content/uploads/2019/09/What-is-AWS-RedShift-768x428.png" alt="drawing"/>
</p>

## 1.1. Working principle

<p align = "center">
    <img src="https://docs.aws.amazon.com/redshift/latest/dg/images/02-NodeRelationships.png" alt="drawing"/>
</p>

### Client application:
`Amazon Redshift` integrates with various `data loading` and `ETL (extract, transform, and load)` tools and business intelligence (BI) reporting, data mining, and analytics tools. `Amazon Redshift` is based on industry-standard `PostgreSQL`, so most existing SQL client applications will work with only minimal changes. For information about important differences between `Amazon Redshift` SQL and `PostgreSQL`, see here (`Amazon Redshift` and `PostgreSQL`).
#### Cluster:
`Cluster`: is the core infrastructure component of an `Amazon Redshift` data warehouse.
A `cluster` is composed of one or more `compute nodes`. If a `cluster` is provisioned with two or more `compute nodes`, an additional `leader node` coordinates the `compute nodes` and handles external communication. Your client application interacts directly only with the `leader node`. The `compute nodes` are transparent to external applications.
### Leader node:
The `leader node` manages communications with client application and all communication with `compute nodes`. It parses and develops execution plans to carry out database operations, the series of steps necessary to obtain results for complex queries. Based on the execution plan, the `leader node` compiles code, distributes the compiled code to the `compute nodes`, and assigns a portion of the data to each compute node.
The `leader node` distributes SQL statements to the `compute nodes` only when a query references tables that are stored on the compute nodes.
### Compute nodes:
The `leader node` compiles code for individual elements of the execution plan and assigns the code to individual `compute nodes`. The `compute nodes` runs the compiled code and send intermediate results back to the `leader node` for final aggregation.
### Node slices:
A `compute node` is partitioned into slices. Each slice is allocated a portion of the node's memory and disk space, where it processes a portion of the workload assigned to the node.
The `leader node` manages distributing data to the slices and apportions the workload for any queries or other database operations to the slices. The slices then work in parallel to complete the operation.
### Internal network:
`Amazon Redshift` takes advantage of high-bandwidth connections, close proximity, and custom communication protocols to provide private, very high-speed network communication between the `leader node` and `compute nodes`. The `compute nodes` run on a separate, isolated network that client applications never access directly.
### Databases:
A `cluster` contains one or more databases. User data is stored on the compute nodes. Your `SQL client` communicates with the leader node, which in turn coordinates query execution with the `compute nodes`.
`Amazon Redshift `is a `relational database management system (RDBMS)`, so it is compatible with other `RDBMS` applications. Although it provides the same functionality as a typical `RDBMS`, including `online transaction processing (OLTP)` functions such as inserting and deleting data, `Amazon Redshift` is optimized for high-performance analysis and reporting of very large datasets.
`Amazon Redshift` is based on PostgreSQL. `Amazon Redshift `and `PostgreSQL` have a number of very important differences that you need to take into account as you design and develop your data warehouse applications.

### Summary:

<p align = "center">
    <img src="https://cdn.educba.com/academy/wp-content/uploads/2019/09/aws-redshift.png" alt="drawing" width = 900/>
</p>

##  2. Getting start
### 2.0. Setup virtual environment
Create Miniconda enviroment and install requirement packages
```bash
conda create -n amazoncloud python=3.8 -y
conda activate amazoncloud
pip install -r requirements.txt
```

### 2.1. Amazon RDS
Follow `Amazon_RDS`