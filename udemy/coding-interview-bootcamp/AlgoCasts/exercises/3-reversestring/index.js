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
  // debugger;
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
  // debugger;
  //! return str.split("").reduce((rev, char) => char + rev, "");
}

// reverse("asdf");

module.exports = reverse;

/*
 * Debugger
 * You can throw a debugger in your code to pause execution
 * write "debugger" before your return statement
 * call the function manually
 * terminal command: 'node inspect file.js'
 * each debug> pause, press 'c' then enter to continue
 * to inspect instead of continue on, type 'repl' then enter
 * cntrl + C to exit repl and the debugger
 * NOTE: if the debugger is within a for loop
 * it will run each time the for loop repeats
 */
