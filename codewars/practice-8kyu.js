// Complete the square sum function so that it squares each number passed into it and then sums the results together.

// For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

function squareSum(numbers) {
  // initalize variables
  let sum = 0;
  for (let i = 0; i < numbers.length; i++) {
    sum += numbers[i] ** 2;
  }
  return sum;
}

// for each number in the numbers array
// square each number, and then add the sum of those squared numbers together
// return the sum

// alt solutions

function squareSum(numbers) {
  return numbers.reduce(function (sum, n) {
    return n * n + sum;
  }, 0);
}

function squareSum(numbers) {
  let result = 0;
  for (let n of numbers) {
    result += n * n;
  }
  return result;
}

/*---------------------------------------------*/
/* 
You are given two interior angles (in degrees) of a triangle.

Write a function to return the 3rd.

Note: only positive integers will be tested.
*/

function otherAngle(a, b) {
  return 180 - (a + b);
}
