## MULTIPLE CHOICE
----
Need to cross check answers

#### Q1. What is the best way to turn an array into an object using JavaScript? 
   - [X] Using the reduce method on the array
   - It is not possible
   - Casing the array into an object using Array({...})
   - Using a third party library like lodash
   - I don't know.

#### Q2. Which of the following statements about session-based authentication is correct?
   - Session-based auth requires a trusted third party to validate credentials
   - Session-based auth is stateless
   - Session auth stores session data on the client
   - [X] Session auth requires repeated transfer of user login details
   - I don't know.

#### Q3. Which of the following statements about JSON Web Token (JWT) authentication is correct?
   - [X] JWT auth is stateless
   - JWT auth requires a trusted third party to validate credentials
   - JWT auth stores session data on the client
   - JWT auth requires repeated transfer of user login details
   - I don't know. 

#### Q4. When would it be useful to denormalize data in a relational database?
   - When your data is sharded across multiple nodes in a cluster
   - When write latency is more important than read latency
   - [X] When a 'property' of a record requires a complex, multi-join query to lookup
   - [ ] When you need the ability to do full-text searches on individual records
   - I don't know.

#### Q5. You are building a blogging website, using a SQL database for storage. You have three tables - user, posts, and comments. Posts and comments are always associated with a user. Comments music be associated with a parent post. Which of the following foreign key constraicts does NOT make sense in this scenario?
   - [X] posts.id referencing comments table
   - posts.user_id referencing users table
   - comments.post_id referencing posts table
   - comments.user_id referencing users table
   - I don't know.
  
#### Q6. Your website has the following code included in it 
```
<script url ="http://mysite.com/myscript.js"></script>
```
Adding which one of the following attributes will definitely NOT reduce rendering time?
   - [X] id
   - defer
   - async
   - I don't know.

#### Q7. Which CSS Property would you use on a flexbox container to set its main axis?
   - flex-axis
   - [X] justify-content
   - align-items
   - flex-direction
   - flex-basis
   - I don't know.

#### Q8. What is the primary job of a load balancer
   - [X] Load balancers help distribute across multiple resources.
   - Load balancers cache content close to requesters, reducing latency for commonly requested resources.
   - Load balancers scale child resources up and down, depending on load.
   - Load balancers authenticate and authorize requests.
   - I don't know.

#### Q9. Eddie is a waiter who has some regular customers who tip consistently when they come in to eat. He created a small program to calcuate his tips for yesterday and today. How much was he tipped based on his program below?
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

#### Q10. Which of the following statements returns false?
  - `((key, value) => {key: value})("key", "value") === { "key": "value" }`
  - `((p1 = 2, p2 = 5, ...rest) => p1 * p2)() === 10`
  - `(param => { return param * 2 })(2) === 4`
  - [X] `[1, 2, 3].reduce((a, b) => a + b, 0) === 6`
  - I don't know.

#### Q11. Suppose you write a RESTful API endpoint to create a new object. Which HTTP method should you use?
   - GET
   - HEAD
   - [X] POST
   - PATCH
   - I don't know.

#### Q12. What are the parts of this URL? 
`https://www.google.com/search?q=hired%20jobs`
   - domain name:`google.com` path:`/search` parameters:`?q=` protocol:`www`
   - domain name:`http://google.com` path:`/search` parameters:`?q=hired%20jobs` protocol:`web`
   - [X] domain name:`www.google.com` path:`/search` parameters:`?q=hired%20jobs` protocol:`https`
   - domain name:`google` path:`search` parameters:`q` protocol:`hypertext transfer protocol` 
   - I don't know.

#### Q13. When is it a good idea to include authentical credentis is a request's query parameters?
   - [X] This is never a good idea
   - For any request type
   - For PUT and POST requests
   - Only when using HTTPS
   - I don't know.
  
#### Q14. You have a simple HTML document:
```
<html>
  <body>
    <div id="oc" class="outer-container">
      Outer Container Text
      <div id="ic1" class="inner-container">
      Inner Container Text
      </div>
    </div>
  </body>
</html>
```
You want to change the color of only "Inner Container Text" to orange. Which of the follow CSS fragments would work?
   - [X] #ic1 { color: orange; }
   - ic1 { color: orange; }
   - .ic1 { color: orange; }
   - div .ic1 { color: orange; }
   - div div { color: orange; }

alternate q:
   - .div { color: orange; }
   - [X] div div { color: orange; }
   - div { color: orange; }
   - #div { color: orange; }
   - I don't know.

#### Q15. Why are the following objects sourceA and sourceB not equal?
```
const source = {name: "John"};
const sourceA = Object.assign(source, {age: 10});
const sourceB = {...source, age: 10};
sourceA === sourceB // false
```
   - sourceA is a new variable and sourceB is a new variable
   - source A modifies source and sourceB extends source, therefore they are the same
   - [X] sourceA is a copy of source since it is adding properties to source and getting its updated value back, sourceB is extending the props from source and creating a new object
   - the script is wrong, sourceA and sourceB are the same
   - I don't know.

#### Q16. Consider the javascript `var` and `let` statements.
Which of the following statements is true?

   - [X] `var` is housed in the function scope. `let` is hoisted to the block scope
   - `var` and `let` have the same scope.
   - `let` should always be used instead of `var`
   - `let` is hoised to the function scope. `var` is hoised to the block scope.
   - I don't know.

#### Q17. Given a list of students' numeric test scores, what is the most appropriate method to produce a list with the numeric test scores translated to letter grades?
```
fn([
   { student: 'Alice', score: 87 },
   { student: 'Bob', score: 73 },
   { student: 'Charlie', score: 92 }
])
// output: [{ student: 'Alice', grade: 'B' },  { student: 'Bob', grade: 'C' }, { student: 'Charlie', grade: 'A' }]
```

need to double check
   - [X] Array.prototype.map()
   - Array.prototype.copyWithin()
   - Array.prototype.every()
   - Array.prototype.fill()
   - I don't know.

#### Q18. Suppose you have the following file structure:
```
root/
   foo.js
   module/
      foo.js
      bar.js
```

root/foo.js
```
export default const name = "foo";
```

root/module/bar.js
```
const name = import "./foo.js/"
console.log(`My name is: ${name}`)
```

What does executing `bar.js` output?
   - My name is: undefined
   - [X] My name is: module.foo (need to double check)
   - 
   - I don't know      

#### Q18.
#### Q18.
#### Q18.
#### Q18.
#### Q18.
#### Q18.
