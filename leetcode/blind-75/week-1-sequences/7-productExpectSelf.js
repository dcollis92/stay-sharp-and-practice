/* 
238. Product of Array Except Self

Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.


Example 1:
  Input: nums = [1,2,3,4]
  Output: [24,12,8,6]

Example 2:
  Input: nums = [-1,1,0,-3,3]
  Output: [0,0,9,0,0]

Constraints:
  2 <= nums.length <= 10**5
  -30 <= nums[i] <= 30
  The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
*/

/**
 * @param {number[]} nums
 * @return {number[]}
 */
var productExceptSelf = function(nums) {
  let len = nums.length
  let result = Array(len) // [ , , , ]
  let left = Array(len + 1)
  let right = Array(len + 1)

  left[0] = 1
  right[0] = 1

  for (let i = 0; i < len; i++) {
    left[i + 1] = left[i] * nums[i]
    // console.log('left: ' + left)
  }

  for (let j = 0; j < len; j++) {
    right[j + 1] = right[j] * nums[len - 1 - j]
    // console.log('right: ' + right)
  }

  for (let k = 0; k < len; k++) {
    result[k] = left[k] * right[len - k - 1]
    // console.log('result: ' + result)
  }

  return result

};

// console.log(productExceptSelf([1, 2, 3, 4]))