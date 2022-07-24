/* 
49. Group Anagrams

Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.


Example 1:
  Input: strs = ["eat","tea","tan","ate","nat","bat"]
  Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

Example 2:
  Input: strs = [""]
  Output: [[""]]

Example 3:
  Input: strs = ["a"]
  Output: [["a"]]

Constraints:
  1 <= strs.length <= 10**4
  0 <= strs[i].length <= 100
  strs[i] consists of lowercase English letters.
*/

/**
 * @param {string[]} strs
 * @return {string[][]}
 */
var groupAnagrams = function (strs) {
  // hash to keep track of letters
  // and their corresponding words
  const wordMap = {};
  // empty result array for our groupins
  let result = [];

  // iterate through strs
  for (let word of strs) {
    // split letters
    let letters = word.split("").sort().join("");
    // check hash for letters
    // if !wordMap[letters], add an empty array
    wordMap[letters] = wordMap[letters] || [];
    // push word into the array
    wordMap[letters].push(word);
  }

  // iterate over object
  for (let value in wordMap) {
    //
    result.push(wordMap[value]);
  }

  return result;
};

console.log(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));
