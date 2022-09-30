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

function steps(n) {
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

  for (let row = 0; row < n; row++) {
    let stair = "";
    // empty string for each
    for (let col = 0; col < n; col++) {
      if (col <= row) {
        stair += "#";
      } else {
        stair += " ";
      }
    }
    console.log(stair);
    // console.log, not return
  }

  /* Solution 2
   *
   *
   */ 
}

module.exports = steps;
