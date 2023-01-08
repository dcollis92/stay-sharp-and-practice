// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

function fib(n) {
  // Solution 1
  // create an array to hold the fibonacci numbers w/ the first two numbers to generate the rest
  const result = [0, 1];
  // loop through the array
  for (let i = 2; i <= n; i++) {
    // push the sum of the previous two numbers into the array
    const a = result[i - 1];
    const b = result[i - 2];
    result.push(a + b);
  }
  // return the last number in the array
  return result[n];
}

module.exports = fib;
