// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

function palindrome(str) {
  /*
   * Solution 1
   * use prior string reverse method
   * compared strict equality
   * return true if equal
   */
  return str === str.split("").reverse().join("");
}

module.exports = palindrome;
