## Kindra Bilodeau
#### SQL Homework 5
##### January 26, 2019

1. **What is a table expression? Can you give a technical definition of a table expression?**  
  - A named query expression that represents a valid relational table
  - an expression that returns a table
2. **In what SQL clause are derived tables (table valued subqueries) located?**  
  - They are in the from clause
3. **Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?**  
 -  because otherwise you cant refer to column aliases assigned in the select clause
 -  table valued expression is executed first.
4. **What SQL key word defines a common table expression?**
 -  They are defined by using the WITH statement
5. **When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?**
 - yes. instead of nesting they are separated by commas
6. **Can a main query refer to a previously defined common table expression by multiple aliases?**
  - yes, because they are run and stored in memory (scope)
7. **In SQL, is a view a durable object?**
yes because it is reusable
8. **In a view, what does WITH CHECK OPTION do? Why is this important?**
  - prevents modifications through the view that conflict with the view's filter.
  - cant add anything that conflicts with the view
  - ties data to underlying table
9. **In a view, what does SCHEMABINDING do? Why is this important?**
  - it binds the schema to the referenced objects and columns to the schema of the referencing object. it prevents you from accidentally making changes or dropping columns.  
10. **What is a table valued function?**
  - a reusable table expression that supports input parameters.  
11. **What does the APPLY operator do?**
 - I'm not sure. another way to do stuff 
12. **What are the two forms of the APPLY operator? Give an example of each.**
-  cross apply - uses one logical query ex Cross join executed one for entire query
-   outer apply - uses two logical queries ex left join executed twice for entire query
