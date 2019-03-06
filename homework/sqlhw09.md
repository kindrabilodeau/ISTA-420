## Kindra Bilodeau
#### SQL Homework 9
1. **What is a temporal table?**
  - A table that holds data from previous versions of a table
2. **Under what circumstances would you use a temporal table? Temporal tables are in widespread use in
certain kinds of businesses.**
  - Auditing or accidental deletion.
  -
3. **What are the semantics of a temporal table? There are seven of them.**
  - Primary Key
  - Two columns defined as DATETIME2 with any precision, which are non-nullable and represent the start and end of the row's validity period in the UTC time zone.
  - A start column that should be marked with the option GENERATED ALWAYS AS ROW start
  - An end column that should be marked with the option GENERATED ALWAYS AS ROW end
  - A designation of the period columns with the option PERIOD FOR SYSTEM_TIME
  - The table option SYSTEM_VERSIONING, which should be set to ON
  - A linked history table(which SQL server can create for you) to hold the past states of the modified rows.
4. **How do you search a history table?**
  - By explicitly naming the columns in the select list
  - The same way you search a regular table
5. **How do you modify a history table?**
  - You don't not directly
6. **How do you delete date from a history table? Why would you want to delete data from a history table?**
  - Delete from table
    where clause
  - You wouldn't want to
7. **How do you search a history table?**
  - The same way you search a regular table
8. **How do you query all data from both a history file and the current data?**
  - By selecting columns from both tables
9. **How do you drop a temporal table?**
  - just like a regular table drop table if exists
  - turn off SYSTEM_VERSIONING before you can drop a temporal table 
