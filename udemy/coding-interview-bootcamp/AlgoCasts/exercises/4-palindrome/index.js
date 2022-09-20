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
  //! return str === str.split("").reverse().join("");
  /*
   * Solution 2
   * split str into an array
   * use .every method to compare every element against a value
   * pass char and i (index)
   * compare strict equality between char
   * and the str length -i-1
   * ex. 5 characters
   * minus index 0
   * minus 1 [index = -1]
   * this compares the first value with the last, the second with second to last, etc
   * less practical solution
   * */
  return str.split("").every((char, i) => {
    return char === str[str.length - i - 1];
  });
}

module.exports = palindrome;
