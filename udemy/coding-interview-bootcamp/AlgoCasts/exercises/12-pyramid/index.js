// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '
//       '###'
//   pyramid(3)
//       '  #  '
//       ' ### '
//       '#####'

//! function pyramid(n) {
//!   /* Solution 1
//!    * From 0 to n (iterate through rows)
//!    * Create an empty string, 'level'
//!    * From 0 to ??? (columns)
//!    * IF the column should have a #
//!    * Add a '#' to 'level'
//!    * ELSE
//!    * Add a space to 'level'
//!    * Console.log 'stair'
//!    */

//!   for (let row = 0; row < n; row++) {
//!     let level = "";
//!     //! number of columns is n*2 - 1
//!     //! ex: n = 3, 3*2 - 1 = 5
//!     //! ex: n = 4, 4*2 - 1 = 7

//!     for (let col = 0; col < 2 * n - 1; col++) {
//!       const midpoint = Math.floor((2 * n - 1) / 2);
//!       if (midpoint - row <= col && midpoint + row >= col) {
//!         //! if the midpoint - row <= col, then we are in the left side of the pyramid
//!         //! if the midpoint + row >= col, then we are in the right side of the pyramid
//!         level += "#";
//!       } else {
//!         level += " ";
//!       }
//!     }
//!     console.log(level);
//!   }
//! }

function pyramid(n, row = 0, level = "") {
  /**
   * Solution 2: Recurssion
   */
  // if row === n, then we have hit the end of our problem
  if (row === n) {
    return;
  }
  // if the 'level' string has a length === 2*n - 1, then we are at the end of the row
  if (level.length === 2 * n - 1) {
    console.log(level);
    return pyramid(n, row + 1);
  }
  // create a midpoint
  const midpoint = Math.floor((2 * n - 1) / 2);
  let add;
  // if the midpoint is between the row and the level.length, then add a #
  // else add a space
  if (midpoint - row <= level.length && midpoint + row >= level.length) {
    add = "#";
  } else {
    add = " ";
  }
  // call the function again
  pyramid(n, row, level + add);
}

module.exports = pyramid;
