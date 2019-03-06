## Kindra Bilodeau
#### SQL Homework 2c
1. **What is a data type? Why do we have data types?**
- A data type is an attribute that specifies the type of data that the object can hold:
- character data, monetary data, date and time data. it's important because then you know what you can use
2. **What is a collation? Name four elements of a collation**
- Collation is a property of character data that encapsulates several aspects like language support, sort order, case sensitivity.
- Four levels instance, database, column, and expression. [: to assemble in proper order]
3. **How would you strip whitespace from a string? For example, suppose you had “ Dave ” but wanted only “Dave”**
- using RTRIM and LTRIM. select RTRIM(LTRIM(' Dave '));
4. **Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query**
- select name from college where name like "%Institute%";
5. **How would you find out the index of the first space in a string? For example, the index of the first space in “Barack Hussein Obama” would be 7.**
- You use the CHARINDEX function. select CHARINDEX(' ', Barack Hussein Obama);
6. **How would you select just the first name in a list of the presidents. First names can be an arbitrary length, from “Cal” to “Benjamin.”**
- with c-b in square brackets [c-b] ex select firstname from presidents where firstname like N'[C-B]%';
7. **Payments are due exactly 30 days from the date of the last function. Write a select query that calculates
the date of the next payment. Pretend we want to update a column in a database that contains the
date of the next payment. We will do this when we write UPDATE queries**
select datetime2();
- select DATEADD(day, 30, 20180101);
8. **Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this**
- select DATEDIFF(day, '2000,01,01', "2016,01,01");
9. **What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.**
- CURRENT_TIMESTAMP
