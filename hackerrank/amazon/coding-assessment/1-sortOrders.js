/* 
1. Code Question 1

AMazon is planning to release a new order prioritization algorithm to optimize fulfilling Prime deliveries on time. All orders (Prime or otherwise) are given an alphanumeric ID code. However, Prime orders are given additional metadata that consists of a space-delimited string of positive integers. Each order is therefore defined as their alphanumeric id code, following by a space, followed by their space-delimited metadata.

You have been tasked with sorting a list of all orders in the order queue to assist in prioritization of fulfillment. They should be sorted according to the following order:

  1. The Prime orders should be returned first, sorted by lexicographic sort of the alphabetic metadata

  2. Only in the case of ties, the identifier should be used as a backup sort. 

  3. The remaining non-Prime orders must all come after, in the original order they were given in the input.

Write a function or method to return a list of strings representing the correctly prioritized orders according to this system.

Input:
  The input to the function/method consists of one argument:
  orderList, a list of strings representing all of the orders

Output:
  Return a list of strings representing the correctly prioritized order according to this system.

Constraints:
  0 < number of orders < 10**3

Note:
  The order identifier consists of only lower case English characters and numbers. Sorting for tiebreaks should use ASCII value - as an example, the order identifier 'a1' should come before the order identifier 'aa'

Examples:
  Input:
    orderList = 
      [zld 93 12]
      [fp kindle book]
      [10a echo show]
      [17g 12 25 6]
      [ab1 kindle book]
      [125 echo dot second generation]

  Output:
    [125 echo dot second generation]
    [10a echo show]
    [ab1 kindle book]
    [fp kindle book]
    [zld 93 12]
    [17g 12 25 6]

Explanation:
There are four Prime orders (lines with words) in this order list. Become "echo" comes before "kindle", those lines should come first, with "dot" coming before "show". Becomes two lines have the metadata "kindle book", their tie should be broken by the identifer, where "ab1" comes before "fp". Finally, the non-Prime numeric order should come last, in the original order, they were in the input. 
*/

/*
 * Complete the 'sortOrders' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts STRING_ARRAY orderList as parameter.
 */

function sortOrders(orderList) {
  // Write your code here

}