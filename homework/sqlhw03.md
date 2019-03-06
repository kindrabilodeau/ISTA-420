## Kindra Bilodeau
#### SQL Homework 03

1. **In general, why would you even want to join two (or more) tables together? This is a good time to
 think about the nature of relational algebra**
- To pull together information that is related and display it in a table
2. **Describe in your own words the output from an inner join**
- it selects records that match in both tables.
3. **Describe in your own words the output from an outer join**
- It returns the values that do have matches and it returns the values don't. and returns null.
4. **Describe in your own words the output from an cross join.**
- you get each possible combination of data from the two tables.
- rows from first table are multiplied by rows in second table.
5. **A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?**
- round on the ends and high in the middle
6. **Give an example of a composite join.**
- A composite join matches multiple attributes:
- From dbo.Table1 as T1
  Inner Join dbo.Table2 as T2
      ON T1.col1 = T2.col1
      AND T1.col2 = T2.col2

7. **What is the difference between the following two queries? The business problem is**
**“How many orders do we have from each customer?”**
- In the first one, the COUNT( * ) will count all rows whether or not they actually have orders
- where as the second one COUNT(O.ORDERID) will count the orders for each customer

8. **What might be one reason the following query does not return the column custID in this query?**
- Any value with a NULL value be discarded because of the >= sign.
