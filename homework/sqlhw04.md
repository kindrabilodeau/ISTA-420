## Kindra Bilodeau
#### Sql Homework 04
##### January 22, 2019

1. **In your own words, what is a subquery?**
-  query within a query.
2. **In your own words, what is a self contained subquery?**
- a subquery that is not dependent on the outer query.
3. **In your own words, what is a correlated subquery?**
- a subquery that is dependent on the outer query.
4. **Give an example of a subquery that returns a single value. When would you use this kind of subquery?**
- a self contained scalar subquery You would use this when you want to compare a single value. uses the =
5. **Give an example of a subquery that returns multiple values. When would you use this kind of subquery?**
- self contained multivalued subquery. Uses the IN predicate. You use when you want to return multiple values.
all the customers that in the usa
6. **Give an example of a subquery that returns table values. When would you use this kind of subquery?**
- a subquery that returns a table in the from clause
7. **What does the exists predicate do? Give an example.**
- It only returns true or false. any true or false
8. **What happens if we use the not operator before a predicate? Give an example.**
- it does the opposite. So 'Not Exits' is something that is not true.
9. **When you use exists or not exists with respect to a row in a database, does it return two or three
values? Explain your answer**
- It only returns two values true or false. It will filter out any NULL or UNKNOWN values.
10. **How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales
of a product, and you also want to keep a running sum of total sales. Explain how you would use a
subquery to do this**
- By using a running aggregate, which accumulates values bases on some order.
- It would be the value of the first year plus the value of the second year and so forth.
- You use the subquery to actually to calculate the running total
(I don't understand the example in the book)
