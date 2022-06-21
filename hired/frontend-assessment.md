## MULTIPLE CHOICE
----
Need to cross check answers

#### Q1. What is the best way to turn an array into an object using JavaScript? 
   - [X] Using the reduce method on the array
   - It is not possible
   - Casing the array into an object using Array({...})
   - Using a third party library like lodash
   - I don't know.

#### Q3. Which of the following statements about session-based authentication is correct?
   - Session-based auth requires a trusted third party to validate credentials
   - Session-based auth is stateless
   - Session auth stores session data on the client
   - [X] Session auth requires repeated transfer of user login details
   - I don't know.

#### Q4. Which of the following statements about JSON Web Token (JWT) authentication is correct?
   - [X] JWT auth is stateless
   - JWT auth requires a trusted third party to validate credentials
   - JWT auth stores session data on the client
   - JWT auth requires repeated transfer of user login details
   - I don't know. 

#### Q5. When would it be useful to denormalize data in a relational database?
   - When your data is sharded across multiple nodes in a cluster
   - When write latency is more important than read latency
   - [ ] When a 'property' of a record requires a complex, multi-join query to lookup
   - [ ] When you need the ability to do full-text searches on individual records
   - I don't know.

#### Q6. You are building a blogging website, using a SQL database for storage. You have three tables - user, posts, and comments. Posts and comments are always associated with a user. Comments music be associated with a parent post. Which of the following foreign key constraicts does NOT make sense in this scenario?
   - [X] posts.id referncing comments table
   - posts.user_id referencing users table
   - comments.post_id referencing posts table
   - comments.user_id referencing users table
   - I don't know.
  
#### Q7. Your website has the following code included in it 
```
<script url ="http://mysite.com/myscript.js"></script>
```
Adding which one of the following attributes will definitely NOT reduce rendering time?
   - [X] id
   - defer
   - async
   - I don't know.

#### Q8. Which CSS Property would you use on a flexbox container to set its main axis?
   - flex-axis
   - [X] justify-content
   - align-items
   - flex-direction
   - flex-basis
   - I don't know.

#### Q9. What is the primary job of a load balancer
   - [X] Load balancers help distribute across multiple resources.
   - Load balancers cache content close to requesters, reducing latency for commonly requested resources.
   - Load balancers scale child resources up and down, depending on load.
   - Load balancers authenticate and authorize requests.
   - I don't know.

#### Q10. Eddie is a waiter who has some regular customers who tip consistently when they come in to eat. He created a small program to calcuate his tips for yesterday and today. How much was he tipped based on his program below?
```
function tipPercent(percent) {
  percent = percent / 100

  return function(billTotal) {
    return percent * billTotal
  }
}

var customer1 = tipPercent(20)
var customer2 = tipPercent(10)

var yestTips = customer2(20)
var todayTips = customer1(100) + customer 2(30)
var totalTips = yestTips + todayTips
```
   - 30
   - 1500
   - 150
   - [X] 25

#### Q11. Which of the following statements returns false?
  - `((key, value) => {key: value})("key", "value") === { "key": "value" }`
  - `((p1 = 2, p2 = 5, ...rest) => p1 * p2)() === 10`
  - `(param => { return param * 2 })(2) === 4`
  - [X] `[1, 2, 3].reduce((a, b) => a + b, 0) === 6`
  - I don't know.

### Q12. Suppose you write a RESTful API endpoint to create a new object. Which HTTP method should you use?
   - GET
   - HEAD
   - [X] POST
   - PATCH
   - I don't know.