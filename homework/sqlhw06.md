## Kindra Bilodeau
#### SQL Homework 06

1. **What does a set operator do?**
 - Compares rows between the results of the two input queries.
1. **What are the general requirements of a set operator**
  - must have the same number of columns in each table and the types have to match column by column 
1. **What is a Venn Diagram? This is not in the book.**
  - a diagram that shows all possible logical relations
1. **Draw a Venn Diagram of the UNION operator. What does it do?**
  - it unifies every row between the two queries the result is a set not multiset
1. **Draw a Venn Diagram of the UNION ALL operator. What does it do?**
  - it selects every row and does not eliminate duplicates and is a multiset
1. **Draw a Venn Diagram of the INTERSECT operator. What does it do?**
  - Returns row only in both queries.
1. **If SQL Server supported the INTERSECT ALL operator, what would it do?**
  - returns all rows to include duplicates that are only in both input queries
1. **Draw a Venn Diagram of the EXCEPT operator. What does it do?**
  - returns rows that appear in the first input but not the second.
1. **If SQL Server supported the EXCEPT ALL op what would it do?**
  - returns only occurrences of a row from the first multiset that do not have a corresponding occurrence in the second.
1. **What is the precedence of the set operators?**
  - Intersect precedes union and except
  - Union and except are evaluated in order of appearance.
