// 3. Count Binary Substrings

/* 
A binary string is a string consisting only of 0s and 1s. A substring is a contiguous group of characters within a string.

Given a binary string, find the number of substrings that contain and equal number of 0s and 1s and all of the 0s and 1st are grouped together. Noe that duplicate substrings are also counted in the answer. For example, '0011' has two overlapping substrings that meet the criteria: '0011' and '01'.

Example:
s='011001'

The substring '01', '10', '1100', and '01' have equal numbers of 0s and 1s with all 0s and 1s grouped consecutively. Hence, the answer is 4. Note that the substring '0110' has an equal number of 0s and 1s but is not counted because not all 0s and 1s are grouped together.

Function Description
Complete the function
getSubStringCount in the editor below.

getSubStringCount has the following parameter(s):

s: a binary string

Returns:
int: the number of substrings that meet the criteria

Constraints
  - 1 < length of s < 10^5
  - the string s consists of 0s and 1s only
*/

function getSubstringCount(s) {
  // initialize varliables
  let currVal = 0;
  let prevVal = 0;
  // current count
  let count = 0;

  for (let i = 0; i < s.length; i++) {
    // if current idx = the prior index
    if (s[i] === s[i - 1]) {
      currVal++;
    } else {
      count += Math.min(currVal, prevVal);
      // update prev value
      prevVal = currVal;
      // update curr value to 1
      currVal = 1;
    }
  }
  return count + Math.min(currVal, prevVal);
}
