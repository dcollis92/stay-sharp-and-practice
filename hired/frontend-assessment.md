# MULTIPLE CHOICE
Need to cross check answers

1. What is the best way to turn an array into an object using JavaScript? 
   - [X] Using the reduce method on the array
   - It is not possible
   - Casing the array into an object using Array({...})
   - Using a third party library like lodash
   - I don't know
  
3. Which of the following statements about session-based authentication is correct?
   - Session-based auth requires a trusted third party to validate credentials
   - Session-based auth is stateless
   - Session auth stores session data on the client
   - [X] Session auth requires repeated transfer of user login details
   - I don't know
  
4. Which of the following statements about JSON Web Token (JWT) authentication is correct?
   - [X] JWT auth is stateless
   - JWT auth requires a trusted third party to validate credentials
   - JWT auth stores session data on the client
   - JWT auth requires repeated transfer of user login details
   - I don't know. 

5. When would it be useful to denormalize data in a relational database?
   - When your data is sharded across multiple nodes in a cluster
   - When write latency is more important than read latency
   - [X] When a 'property' of a record requires a complex, multi-join query to lookup
   - [X] When you need the ability to do full-text searches on individual records
   - I don't know
  
6. You are building a blogging website, using a SQL database for storage. You have three tables - user, posts, and comments. Posts and comments are always associated with a user. Comments music be associated with a parent post. Which of the following foreign key constraicts does NOT make sense in this scenario?
   - [X] posts.id referncing comments table
   - posts.user_id referencing users table
   - comments.post_id referencing posts table
   - comments.user_id referencing users table
   - I don't know.