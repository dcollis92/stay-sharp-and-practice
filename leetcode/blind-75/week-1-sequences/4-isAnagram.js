/* 
242. Valid Anagram

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.


Example 1:
  Input: s = "anagram", t = "nagaram"
  Output: true

Example 2:
  Input: s = "rat", t = "car"
  Output: false

Constraints:
  1 <= s.length, t.length <= 5 * 10**4
  s and t consist of lowercase English letters.

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?
*/

/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */

var isAnagram = function(s, t) {
  // split each string into an array and sort a->z
  let sArr = s.split('').sort()
  let tArr = t.split('').sort()
  // console.log(sArr)
  // console.log(tArr)

  // convert back to a string to compare strict equality
  if (sArr.toString() === tArr.toString()) {
    return true
  } else {
    return false
  }
};

// console.log(isAnagram('catt', 'tatc'))

// ^^^ low run time, needs to be faster

const isAnagram2 = function(s, t) {
  if (s.split('').sort().join('') === t.split('').sort().join('')) {
    return true;
  } else {
    return false;
  }
};

// ^^^ similar answer, 10-15ms faster run time ¯\_(ツ)_/¯ 

// Tim's solution
var isAnagram3 = function(s, t) {
  const aCharMap = buildCharMap(s)
  const bCharMap = buildCharMap(t)
  
  if (Object.keys(aCharMap).length !== Object.keys(bCharMap).length) {
    return false
  }

  for (let char in aCharMap) {
    if (aCharMap[char] !== bCharMap[char]) {
      return false
    }
  }

  return true
}

function buildCharMap (str) {
  const charMap = {}

  for (let char of str.replace(/[^\w]/g, '').toLowerCase()) {
    charMap[char] = charMap[char] + 1 || 1
  }
  return charMap
}