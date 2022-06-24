# The Very First Steps
# Hello learner!

# For the first steps, let's try to print something! To make Python print something, use the print() function. To print your desired text, you should place it inside brackets " " or ' ', otherwise Python will try to find a variable with that name (as to be discussed later). Thus, if you want to print a sentence, you should write and compile the following piece of code:

# print('Some message')
# This will print

# Some message
# into console. Try it by yourself!

# Task

# Print "Hello world!" into the console.

print("Hello world!")

# ----------------------------------------
# Comments
# Well done! Firstly, it's important to note that the bigger the code is, the harder it is to understand the separate piece of code, even if it was written by yourself. Therefore, to solve it, learn to leave comments in your code such as instructions of what this piece of code does or something understandable to another person. To mark something as a comment, begin the respective string with #.

# For example,

# Input:
# print('Message 1')
# print('Message 2')
# Output:
# Message 1
# Message 2
# But if we place the hash # before print, this line will not be compiled.

# Input:
# #print('Message 1')
# print('Message 2')
# Output:
# Message 2

# Task

# Look at the code. Comment on the first two lines so that they won't be printed. Please, do not change the text in the code.

# Click Submit Task button below the code to check the solution of this task.

# print("This is the comment")
# print("Make this line comment too by adding hash")
print("This is the only string printed!")

# ----------------------------------------
# Some Simple Math
# Nice! Python also can calculate math expressions. The syntax is very simple: use + for addition, - for subtraction, * for multiplication, and / for division.

# This time, don't forget to use print if you want your result to be displayed. Also, there is no need to use "" brackets, as you want to calculate math expression.

# For example, let's calculate some basic stuff:

# example-icon
# Example
# # Addition
print(1039 + 948)

# # Subtraction
print(10484 - 9274)

# # Division
print(95873/472)

# Task

# Calculate the following expressions and print the results:

# 2580 plus 198
# 23 multiplied by 42
# 1512 divided by 27

# Calculate first expression
print(2580 + 198)
# Calculate second expression
print(23 * 42)
# Calculate third expression
print(1512 / 27)

# ----------------------------------------
# More Challenging Math
# There are several more useful math operations available in Python. They are:

# "//" - integer part of division
# % - the remainder of a division
# ** - raising to a power
# Please note, that you can't use the traditional ^ symbol for raising to the power in Python as it gives a different result. The syntax for these operations is the same as the simplest arithmetic, for instance 18 // 4 is 4, since we take the integer part of division (the division result is 4.5). 14 % 5 is 4 since we can subtract number 5 two times and there will be number 4 left. 4**3 will be 64 as the result of multiplying 4*4*4.


# Task

# In the second line, calculate the integer part of the division of 234 by 32;
# In the fourth line, find the remainder of the division of 356 by 17.

# Calculate the integer part of division
print(234 // 32)
# Calculate the remainder of division
print(356 % 17)

# When can these operations be useful?

# For example, we can modulate the situation: you have 50 dollars and need to buy as many packs of cookies as you can (each costs 6 dollars). You need to calculate the maximum number of packs you can buy and how much money will be left. With these operations, it can be easily done.

# 50//6 equals 8 since you subtract 6 as maximum 8 times. This will be the number of snacks we can buy.

# 50%6 equals 2 since 2 dollars will be left after subtracting 6 eight times.

# ----------------------------------------
# Challenge
# Let's practice a bit.

# Please note, that in order to raise to the power we should use the ** operator.

# Task

# In the second line, calculate 0.99 to the 365 power;
# In the fourth line, calculate 1.01 to the 365 power.

# Calculate the first expression
print(0.99 ** 365)
# Calculate the second expression
print(1.01 ** 365)

# What does this task show us? If you improve by 1 percent every day, you will become 37 times better in a year. Do not give up on learning! :)