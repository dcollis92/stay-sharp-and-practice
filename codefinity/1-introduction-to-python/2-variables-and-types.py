# ----------------------------------------
# Storing Values
# In the previous chapters, we calculated some math expressions and printed them. But what if we would need them in the future? We need to make the computer "remember" our numbers if we want to use them in the future. This can be easily solved by using variables. There are some restrictions and specifications for variable names in Python:

# A variable name can contain letters, numbers, or underscore;
# A variable name can not start with a number;
# Variables are case-sensitive, i.e. Var and var are two different variables;
# No special characters other than underscore _ are allowed;
# You can't use reserved keywords as variable's names (such as, if, while, for, try).
# To assign expression, a string of some other data structure, use "=". If you want to show the value of a variable, use the traditional print function, this time with no brackets "".

# Assign to variable res some math expression
res = 57293 * 4943

# Print variable so we can check the result
print("The result is", res)

# Task

# Let's find out answers for the following questions and store the result in separate variables:

# How many seconds are in one hour? (there are 60 minutes in 1 hour and 60 seconds in a minute). Save it as variable sec_in_hour
# How many days are in 792 hours (there are 24 hours in 1 day)? Save it as variable days.