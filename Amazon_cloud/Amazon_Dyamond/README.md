# Data Engineer on Amazon Cloud

# `Amazon DynamoDB`
`Amazon DynamoDB `is a fully managed `NoSQL database` service that provides fast and predictable performance with seamless scalability. `DynamoDB` lets you offload the administrative burdens of operating and scaling a distributed database so that you don't have to worry about hardware provisioning, setup and configuration, replication, software patching, or cluster scaling.

With `DynamoDB`, you can create database tables that can store and retrieve any amount of data and serve any level of request traffic. You can scale up or scale down your tables' throughput capacity without downtime or performance degradation.

## 1. Core Components of `Amazon DynamoDB`
### 1.1. Tables, Items, and Attributes
The following are the basic DynamoDB components:
-  `Tables`: Similar to other database systems, `DynamoDB` stores data in tables. A table is a collection of data. For example, *see the example* table called *People* that you could use to store personal contact information about friends, family, or anyone else of interest.

- `Items`: Each table contains zero or more items. **An item is a group of attributes that is uniquely identifiable among all of the other items.** In a *People* table, each item represents a person. Items in `DynamoDB` are similar in many ways to rows, records, or tuples in other database systems. In `DynamoDB`, there is no limit to the number of items you can store in a table.

- `Attributes`: Each item is composed of one or more attributes. **An attribute is a fundamental data element, something that does not need to be broken down any further.** For example, an item in a *People* table contains attributes called PersonID, LastName, FirstName, and so on. Attributes in `DynamoDB` are similar in many ways to fields or columns in other database systems.

<p align = "center">
    <img src="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/images/HowItWorksPeople.png" alt="drawing"/>
</p>

Note the following about the *People* table:
- Each item in the table has a **unique identifier**, or `primary key`, that distinguishes the item from all of the others in the table. In the *People* table, the `primary key` consists of one attribute (*PersonID*).
- Other than the `primary key`, the *People* table is `schemaless`, which means that neither the `attributes` nor their data types need to be defined beforehand. **Each item can have its own distinct `attributes`**.
- Most of the `attributes` are `scalar`, which means that they can have only one value. `Strings` and `numbers` are common examples of `scalars`.
- Some of the items have a `nested attribute` (*Address*). `DynamoDB` supports `nested attributes` up to 32 levels deep.

### 1.2. Primary Key
When you create a `table`, in addition to the table name, you must specify the `primary key` of the table. **The `primary key` uniquely identifies each item in the table, so that no two items can have the same key.**

`DynamoDB` supports two different kinds of `primary keys`:
- `Partition key`: A simple `primary key`, composed of **one `attribute`** known as the `partition key`. `DynamoDB` uses the `partition key's` value as input to an internal hash function. The output from the hash function determines the partition (physical storage internal to DynamoDB) in which the item will be stored. **In a table that has only a partition key, no two items can have the same partition key value.** 

The *People* table described in `Tables`, `Items`, and `Attributes` is an example of a table with a simple `primary key` (*PersonID*). You can access any item in the People table directly by providing the *PersonId* value for that item.

- `Partition key` and `sort key` ( or is called `composite primary` key). This type of key is `composed of two attributes`. The first attribute is the partition key, and the second attribute is the sort key. `DynamoDB` uses the partition key value as input to an internal hash function. The output from the hash function determines the partition (physical storage internal to `DynamoDB`) in which the item will be stored. All items with the same partition key value are stored together, in sorted order by sort key value.

The *Music* table described in `Tables`, `Items`, and `Attributes` is an example of a table with a `composite primary key` (*Artist* and *SongTitle*). You can access any item in the *Music* table directly, if you provide the *Artist* and *SongTitle* values for that item. A `composite primary key` gives you additional flexibility when querying data. For example, if you provide only the value for *Artist*, DynamoDB retrieves all of the songs by that artist. To retrieve only a subset of songs by a particular artist, you can provide a value for *Artist* along with a range of values for *SongTitle*.

<p align = "center">
    <img src="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/images/HowItWorksMusic.png" alt="drawing"/>
</p>

### 1.3. Secondary Indexes
You can create **one or more `secondary indexes`** on a table. A `secondary index` lets you query the data in the table using an `alternate key`, in addition to queries against the primary key. `DynamoDB` doesn't require that you use indexes, but they give your applications more flexibility when querying your data. After you create a `secondary index` on a table, you can read data from the index in much the same way as you do from the table.

`DynamoDB` supports two kinds of indexes:
- `Global secondary index:` An index with a `partition key` and `sort key` that can be different from those on the table.
- `Local secondary index:` An index that has the same `partition key` as the table, but a different `sort key`.

The following diagram shows the example *Music* table, with a new `index` called *GenreAlbumTitle*. In the index, *Genre* is the `partition key` and *AlbumTitle* is the `sort key`.

<p align = "center">
    <img src="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/images/HowItWorksGenreAlbumTitle.png" alt="drawing"/>
</p>

Note the following about the *GenreAlbumTitle* index:
- **Every index belongs to a table**, which is called the `base table` for the index. In the example, *Music* is the `base table` for the *GenreAlbumTitle* index.
- `DynamoDB` maintains indexes automatically. When you add, update, or delete an item in the `base table` --> `DynamoDB` adds, updates, or deletes the corresponding item in any indexes that belong to that table.
- When you create an index, **you specify which attributes will be copied, or `projected`, from the `base table` to the `index`**. At a minimum, `DynamoDB` projects the `key attributes` from the `base table` into the `index`. This is the case with *GenreAlbumTitle*, where only the key attributes from the *Music* table are projected into the index.

### 1.4. DynamoDB Streams
`DynamoDB Streams` is an optional feature that captures data modification events in `DynamoDB` tables. The data about these events appear in the stream in `near-real time`, and in the order that the events occurred.

Each `event` is represented by a `stream record`. **If you enable a stream on a table**, `DynamoDB Streams` writes a `stream record` whenever one of the following events occurs:
- **A new item is added to the table**: The `stream` captures an image of the entire item, including all of its attributes.
- **An item is updated**: The `stream` captures the "before" and "after" image of any attributes that were modified in the item.
- **An item is deleted from the table**: The `stream` captures an image of the entire item before it was deleted.

Each `stream record` also contains the *name of the table*, the *event timestamp*, and *other metadata*. **`Stream records` have a lifetime of 24 hours; after that, they are automatically removed from the stream.**

**You can use `DynamoDB Streams` together with `AWS Lambda` to create a trigger—code that runs automatically whenever an event of interest appears in a stream**. 

*For example:* consider a *Customers* table that contains customer information for a company. Suppose that you want to send a "welcome" email to each new customer. You could enable a stream on that table, and then associate the stream with a `Lambda function`. The `Lambda function` would run whenever a new` stream record` appears, but only process new items added to the *Customers* table. For any item that has an *EmailAddress attribute*, the **`Lambda function` would invoke Amazon Simple Email Service (Amazon SES) to send an email to that address.**
<p align = "center">
    <img src="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/images/HowItWorksStreams.png" alt="drawing"/>
</p>
