# Citus Data
This is a demo project using Citus on top of Postgres to ingest Github events data and run analytical queries. I originally saw
this on HackerNews in an article talking about 
[implementing seen-by functionality](https://supabase.com/blog/2022/07/18/seen-by-in-postgresql) in Postgres. From there
I went to the [CitusData documentation](https://docs.citusdata.com/en/stable/get_started/) to try it out. This project 
is a combination of the tutorials in the docs and other analysis I did myself.

## Technologies
- PostgreSQL version 14.4
- Docker version 20.10.11
- Citus version 11.0

## Project Structure
### Data Sets
Within the project, there is a [data_sets](/data_sets) folder which contains event data about public activity on Github 
and a users file which contains data about the Github users. 

### Scripts
In addition the project contains a folder called [scripts](/scripts) which contains the SQL commands needed to create the tables,
indexes, and distributed tables. 

NOTE: I am running Citus via a Docker container, I had to make some adjustments to copy the .csv data from the 
data sets files into the target tables in Postgres.

