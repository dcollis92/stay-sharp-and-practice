// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

// Common String Questions
// What is the most common character in the string?
// Does a string A have the same characters as string B?
// Does the string have any repeated characters

function maxChar(str) {
  /*
   * Solution 1
   * Convert str to an Object
   * will now have key/value pairs containing repeating characters as higher values
   */
  const charMap = {};
  let max = 0; // init max value
  let marChar = ""; // init key of max value

  for (let char of str) {
    if (!charMap[char]) {
      charMap[char] = 1;
    } else {
      charMap[char]++;
    }

    // OR
    // chars[char] = chars[char] + 1 || 1
    // if it doesnt exist, give it null, but if it already exists (thus already assigned 1), add 1 each time it appears.

    // for of: str & array
    // for in: object

    for (let char in charMap) {
      if (charMap[char] > max) {
        max = charMap[char];
        // update max
        maxChar = char;
        // update maxChar
      }
    }
  }
  return maxChar;
}

module.exports = maxChar;
