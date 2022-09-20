// --- Directions
// Given a string, return a new string with the reversed
// order of characters
// --- Examples
//   reverse('apple') === 'leppa'
//   reverse('hello') === 'olleh'
//   reverse('Greetings!') === '!sgniteerG'

function reverse(str) {
  /*
   * Solution 1
   * turn string into an array
   * reverse the array
   * join back into a string
   */
  //! return str.split('').reverse().join('');

  /*
   * Solution 2
   * create empty string called 'reversed'
   * for each char in the string
   * Take the char and add it to the start of 'reversed
   * Return the variable 'reversed'
   */
  //! let reversed = "";

  //! for (let char of str) {
  //!   reversed = char + reversed;
  //! }

  //! return reversed;

  /*
   * Solution 3
   * split string into an array
   * takes all values of an array
   * and condences them to 1 single value
   * arrow function with a starting initial value ('')
   * similar to the For Of Loop, you add char each to the reversed string
   */
  return str.split("").reduce((rev, char) => char + rev, "");
}

module.exports = reverse;
