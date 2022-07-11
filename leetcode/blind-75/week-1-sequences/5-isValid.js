/* 
20. Valid Parentheses

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.

Example 1:
  Input: s = "()"
  Output: true

Example 2:
  Input: s = "()[]{}"
  Output: true

Example 3:
  Input: s = "(]"
  Output: false

Constraints:
  1 <= s.length <= 104
  s consists of parentheses only '()[]{}'.
*/

/**
 * @param {string} s
 * @return {boolean}
 */
 var isValid = function(s) {
  // initialize an empty stack
  const stack = [];

  // create a map with key-value pairs
  const map = new Map([
    ['(', ')'],
    ['[', ']'],
    ['{', '}']
  ]);

  // loop through the string
  for (let i = 0 ; i < s.length ; i += 1) {
    // if the map has the value of s[i]
    if (map.has(s[i])) {
      // push the value associated with the key at that index
      stack.push(map.get(s[i]));
      // if index of s does not equal 
    } else if (s[i] !== stack.pop()) {
      return false;
    } 
  }

  return stack.length === 0;
};