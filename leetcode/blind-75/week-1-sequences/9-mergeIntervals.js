/* 
56. Merge Intervals

Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.


Example 1:
  Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
  Output: [[1,6],[8,10],[15,18]]
  Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

Example 2:
  Input: intervals = [[1,4],[4,5]]
  Output: [[1,5]]
  Explanation: Intervals [1,4] and [4,5] are considered overlapping.

Constraints:
  1 <= intervals.length <= 10**4
  intervals[i].length == 2
  0 <= starti <= endi <= 10**4
*/

/**
 * @param {number[][]} intervals
 * @return {number[][]}
 */
var merge = function(intervals) {
  // if theres only 1 number, no need to merge
  if (intervals.length < 2) return intervals;
  
  // sort intervals and the sub arrays
  intervals.sort((a, b) => a[0] - b[0]);
  
  // create empty array to push into
  const result = [];
  // initialize previous variable as first array
  let previous = intervals[0];
  
  // loop through array
  for (let i = 1; i < intervals.length; i++) {
    if (previous[1] >= intervals[i][0]) {
      // reassign previous with 1st interval, and the largest interval compared with Math.max
      previous = [previous[0], Math.max(previous[1], intervals[i][1])];
    } else {
        // push previous into the result array
      result.push(previous);
      previous = intervals[i];
    }
  }
  
  // push previous into the result array
  result.push(previous);
  
  return result;
};