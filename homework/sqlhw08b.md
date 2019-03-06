## Kindra Bilodeau
#### SQL Homework 8b

1. **The sales tax rate for a state just changed. How would you update the state sales tax table to reflect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.**
  - update dbo.states
    set rate += .5
    where state = "Georgia";
2. **The Revenue Division has requested that you provide a report on what the actual sales taxes would
have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How
would you calculate this?**
  - Using a join or a subquery??
3. **Explain how the proprietary assignment update command works.**
  - it updates data and assigns values to variables at the same time.
4. **What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?**
  - you can merge data from a source into a target and apply different actions based on conditional logic.
  - ETL - extract, transform, load, pull data out of one database and place it into another database
5. **What are the semantics of MERGE?**
  - Merge is based on join semantics, so it's similar to writing a join clause.
6. **Write a typical INSERT OUTPUT statement.**
  - insert into table
    output inserted.columnname, inserted.columnname
    select colummns, from differnt table;
7. **Write a typical UPDATE OUTPUT statement.**
  - you can refer to the state of the modified row before change and after the change
    - update table
    set change(new RATE)
     output inserted.orderid
      deleted.discount
      where productid = 51;
8. **Write a typical DELETE OUTPUT statement.**
  - delete from table
    output
      deleted.orederid
      deleted.empid
      where orderdate < '20160101';
9. **Write a typical MERGE OUTPUT statement.**
  - merge into table 1
    using table 2
    on column = column
    when matched then
      update set
        column = column
    when not matched insert (colummns) values (custid)
    output deleted.companyname ;
10. **What is nested DML?**
  - you can insert a table into a subset of rows????
