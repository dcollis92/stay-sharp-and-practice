/* 
53. Maximum Subarray

Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

A subarray is a contiguous part of an array.


Example 1:
  Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
  Output: 6
  Explanation: [4,-1,2,1] has the largest sum = 6.

Example 2:
  Input: nums = [1]
  Output: 1

Example 3:
  Input: nums = [5,4,-1,7,8]
  Output: 23

Constraints:
  1 <= nums.length <= 10**5
  -10**4 <= nums[i] <= 10**4

Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
*/

/**
 * @param {number[]} nums
 * @return {number}
 */

// brute force solution = 0(n**2)
// var maxSubArray = function(nums) {
//   let maxSum = Number.MIN_SAFE_INTEGER

//   for (let i = 0; i < nums.length; i++) {
//     let currentSum = 0;
//     for (let j = i; j < nums.length; j++) {
//       currentSum += nums[j]
//       maxSum = Math.max(maxSum, currentSum)
//     }
//   }
//   return maxSum
// };

// kadane's algorithm = O(n)
var maxSubArray = function(nums) {
  // due to working with negative integers, we use MIN_SAFE_INTEGER to compare against
  let maxSum = Number.MIN_SAFE_INTEGER;
  let currentSum = 0;

  for(let i = 0; i <nums.length; i++) {
    // each loop compares if adding the next integer increases the value or not
    currentSum = Math.max(currentSum + nums[i], nums[i])
    // each loop compares the current value and reassigns the maxSum if it has increased
    maxSum = Math.max(maxSum, currentSum)
  }
  return maxSum
}

console.log(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))