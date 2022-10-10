// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'

//! function steps(n) {
/* Solution 1
 * From 0 to n (iterate through rows)
 * Create an empty string, 'stair'
 * From 0 to n (iterate through columns)
 * IF
 * the current column is <= the current row
 * Add a '#' to 'stair'
 * ELSE
 * Add a space to 'stair'
 * Console.log(stair)
 * r0c0 r0c1 r0c2
 * r1c0 r1c1 r1c2
 * r2c0 r2c1 r2c2
 */

//! for (let row = 0; row < n; row++) {
//!   let stair = "";
//!   // empty string for each
//!   for (let col = 0; col < n; col++) {
//!     if (col <= row) {
//!       stair += "#";
//!     } else {
//!       stair += " ";
//!     }
//!   }
//!   console.log(stair);
//!   // console.log, not return
//! }
// ! }

function steps(n, row = 0, stair = "") {
  /* Solution 2 - Recursion
   * If (row === n)
   * then we have hit the end of our problem
   * If the 'stair' string has a length === n
   * then we are at the end of a row
   * If the length of the stair string is <= the row number we're working on
   * we add a '#', otherwise add a space
   */

  if (n === row) {
    return;
  }

  if (stair.length === n) {
    console.log(stair);
    return steps(n, row + 1);
  }
  if (stair.length <= row) {
    stair += "#";
  } else {
    stair += " ";
  }
  steps(n, row, stair);
}

module.exports = steps;

/* Recursion Tips
 * Figure out the bare minimum pieces of information to represent your problem
 * Give reasonable defaults to the bare minimum pieces of info
 * Check the base case.
 * Is there any work left to do?
 * If not, return
 * Do some work. Call your function again, making sure the arguments have changed in some fashion
 */
