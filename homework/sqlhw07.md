## Kindra Bilodeau
#### SQL Homework 7

1. **What is a window function?**   
  - operate on a set of rows and return a single value for each row from the underlying query.  Perform data analysis always you be more detailed with less work
2. **does PARTITION do?**
  - divides the data into partitions
  - restricts the rows
  - very similar to group by
  - ex: separate out custid
3. **What does ORDER BY do?**
  - Determines the rows.
  - sales by duplicates
4. **What does ROWS BETWEEN do?**
  - it's a range rows between to points
   - between first record and current record   
5. **What is a ranking window function? Why would you use it? Give an example.**
  - To rank each row in regards to the other rows. if you want to figure out how many duplicates you have you can use the RANK function
  - to calculate difference between last order current order and next order.
6. **What is an offset window function? Why would you use it? Give an example.**
  - Its for returning values that are at a certain offset. To get a previous and next value from an order.
7. **What do LEAD and LAG DO**
  - LAG looks before the current row
  - LEAD looks ahead the current row
8. **What do FIRST VALUE and LAST VALUE do?**
  - used to return values from the first row or last row
9. **What is an aggregate window function? Why would you use it? Give an example.**
  - it uses a math operator on a window function. It's useful because you can return detailed values. like running total or total orders
10. **What is a pivot table and what does it do?**
  - it gives a table and aggregating the categories.
  - It turns rows into columns.
      - three phases
      - grouping, spreading, aggregation
