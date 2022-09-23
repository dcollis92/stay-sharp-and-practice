// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

function reverseInt(n) {
  /*
   * Solution 1
   * use same string reversal method
   * .toString() to convert n to str
   * parseInt() to converse str to n
   * check if negative value n < 0
   * if so, multiply by -1 to maintain minus sign in front
   */
  //! const reversed = n.toString().split("").reverse().join("");

  //! if (n < 0) {
  //!   return parseInt(reversed) * -1;
  //! }
  //! return parseInt(reversed);

  /*
   * Solution 1 variant
   * use Math.sign instead of if statement
   */
  const reversed = n.toString().split("").reverse().join("");

  return parseInt(reversed) * Math.sign(n);
}

module.exports = reverseInt;
