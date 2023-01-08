// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

//! function fib(n) {
//!   // Solution 1 - Iterative
//!   // create an array to hold the fibonacci numbers w/ the first two numbers to generate the rest
//!   const result = [0, 1];
//!   // loop through the array
//!   for (let i = 2; i <= n; i++) {
//!     // push the sum of the previous two numbers into the array
//!     const a = result[i - 1];
//!     const b = result[i - 2];
//!     result.push(a + b);
//!   }
//!   // return the last number in the array
//!   return result[n];
//! }

function fib(n) {
  // Solution 2 - Recursive
  // if n is less than 2, return n
  if (n < 2) {
    return n;
  }

  // return the sum of the previous two numbers
  return fib(n - 1) + fib(n - 2);

  // Diagram of the recursive solution:
  // [fib(0)] -> 0
  // [fib(1)] -> 1
  // [fib(2)] -> [fib(1)] + [fib(0)] -> 1 + 0 -> 1
  // [fib(3)] -> [fib(2)] + [fib(1)] -> 1 + 1 -> 2
  // [fib(4)] -> [fib(3)] + [fib(2)] -> 2 + 1 -> 3
  // [fib(5)] -> [fib(4)] + [fib(3)] -> 3 + 2 -> 5
  // [fib(6)] -> [fib(5)] + [fib(4)] -> 5 + 3 -> 8
}

module.exports = fib;
