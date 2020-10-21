As a user
So I know what bookmarks I have
I would like to be able to show a list of bookmarks

Domain Model:
![Screenshot](https://i.imgur.com/Pqgu55f.png)

**How to Connect this to a Database in postgreSQL:**

1) Connect to psql
2) Create a database in psql using CREATE DATABASE and name it bookmark_manager
3) Connect to bookmark_manager using psql command \c bookmark_manager
4) Run the query we saved in the file create_bookmarks_table.sql

** In order to run the tests without using a real database use the below steps:**
1) Connect to psql
2) Create a database in psql called test_bookmark_manager
3) Connect to test_bookmark_manager 
4) Run the query we saved in create_bookmarks_table.sql