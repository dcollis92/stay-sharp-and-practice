// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

function capitalize(str) {
  /* Solution 1
   * Make an empty array 'words'
   * split the input string by spaces to get an array
   * for each word in the array
   * uppercase the first letter of the word
   * join first letter with rest of the string
   * push result into 'words' array
   * join 'words' into a string and return it
   */
  //! const words = [];
  //! for (let word of str.split(" ")) {
  //!   words.push(word[0].toUpperCase() + word.slice(1));
  //! words[0] gets the first letter
  //! slice(1) gets the rest of the str
  //! }
  //! return words.join(" "); // joined with space in between

  /* Solution 2
   * Create 'result' which is the first character of the input string capitalized
   * for each character in the string
   * IF the character to the left is a space
   * Capitalize it and add it to 'result'
   * ELSE
   * add it to 'result'
   */

  let result = str[0].toUpperCase();
  // first letter is always capitalized
  for (let i = 1; i < str.length; i++) {
    if (str[i - 1] === " ") {
      // i-1 is the char to the left
      result += str[i].toUpperCase();
    } else {
      result += str[i];
    }
  }
  return result;
}

module.exports = capitalize;
