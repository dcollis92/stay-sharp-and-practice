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
  return str.split('').reverse().join('');
}

module.exports = reverse;
