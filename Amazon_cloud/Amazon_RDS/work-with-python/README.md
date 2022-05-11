# Data Engineer on Amazon Cloud

# 0. What is cursor ?
`Cursor` is a `Temporary Memory` or `Temporary Work Station`. It is Allocated by `Database Server` at the Time of Performing `DML(Data Manipulation Language)` operations on Table by User. `Cursors` are used to store `Database Tables`. There are 2 types of `Cursors`: `Implicit Cursors` and `Explicit Cursors`. These are explained as following below.

`Implicit Cursors:`
`Implicit Cursors` are also known as `Default Cursors` of `SQL SERVER`. These Cursors are allocated by `SQL SERVER` when the user performs DML operations.

`Explicit Cursors :`
`Explicit Cursors` are Created by Users whenever the user requires them. `Explicit Cursors` are used for Fetching data from Table in Row-By-Row Manner.

<p align = "center">
    <img src="https://runestone.academy/ns/books/published/py4e-int/_images/cursor.svg" alt="drawing"/>
</p>

# 1. Use Python to connect with MySQL service in AWS RDS 
## 1.1. Setup MySQL service in AWS RDS

**Connection:**
Follow our [instructions](https://docs.google.com/presentation/d/1s8ZW-aKP_fAm28bbVhN4yDjD3ZacQyul/edit?usp=sharing&ouid=103057077167517333764&rtpof=true&sd=true).

**Prepare dataset:**
Follow `working-with-MySQL` part.

## 1.2. Setup `AWS security groups` for Python connection
### What are `Security Groups` in Amazon Web Services (AWS) ?
To maintain and provide this level of security, `AWS` is built with security groups that support some degree of control of network traffic associated with `EC2 instances`.

A `security group` is an AWS firewall solution that performs one primary function: **to filter incoming and outgoing traffic from an `EC2 instance`**. It accomplishes this filtering function at the TCP and IP layers, via their respective ports, and source/destination IP addresses.

Read more here.

### Set up `Security Group` for Python connection with AWS RDS
**Create new `Security Group`:**

`Security groups` are set up within the `EC2` service, so to create a new `security group`, go to the `EC2` service, then click `Security Groups` on the left, under `Network & Security`. Then click create `security group`. 

Create a name of `security group` in our case is **RDS-python** and add the `inbound rule` with configuration like below:

<p align = "center">
    <img src="https://github.com/DatacollectorVN/Data-Engineer-on-cloud/blob/master/public-imgs/inbound_rules_sec_group.png?raw=true" alt="drawing"/>
</p>

**Add new `Security Group` in exist AWS RDS databases:**
Your Amazon RDS database is currently using the *default* `security group`. Therefore, you have two choices:

- Modify the *default* `security group`.
- Or you can create a new `security group` (as your have done), then go to the RDS console, click on your database, then choose `Instance actions` -> `Modify` and modify the `security groups` that are associated with the DB instance (add the new `security group`, remove the default `security group`).

# 2. Getting start
```bash
conda activate amazoncloud
python 1.connect.py
```
If run sucessfully, mean you connect correctly to `AWS RDS`.

*Expected output:* Depend your version that you are using.
```bash
Connecting to the PostgreSQL database...
PostgreSQL database version:
('8.0.28',)
Database connection closed.
```
