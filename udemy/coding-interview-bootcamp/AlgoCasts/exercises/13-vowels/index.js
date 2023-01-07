// --- Directions
// Write a function that returns the number of vowels
// used in a string.  Vowels are the characters 'a', 'e'
// 'i', 'o', and 'u'.
// --- Examples
//   vowels('Hi There!') --> 3
//   vowels('Why do you ask?') --> 4
//   vowels('Why?') --> 0

//! // Solution 1
//! function vowels(str) {
//!   // create a counter variable
//!   let count = 0;

//!   // create an array of vowels
//!   const checker = ["a", "e", "i", "o", "u"];

//!   // loop through the string
//!   for (let char of str.toLowerCase()) {
//!     // if the character is in the array, increment the counter
//!     if (checker.includes(char)) {
//!       count++;
//!     }
//!   }
//!   return count;
//! }

// Solution 2 w/ regex
function vowels(str) {
  // create a match variable
  const matches = str.match(/[aeiou]/gi);
  // if there are matches, return the length of the matches, else return 0
  return matches ? matches.length : 0;
}

module.exports = vowels;
