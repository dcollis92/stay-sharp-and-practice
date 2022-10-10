/* 
Have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters.
For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's.
If there are no words with repeating letters return -1. Words will be separated by spaces.

Examples
Input: "Hello apple pie"
Output: Hello

Input: "No words"
Output: -1
*/

function LetterCount(str) {
  // convert str to array
  const arr = str.split(" ");
  // initialize empty object
  const obj = {};
  // iterate over array
  for (let i = 0; i < arr.length; i++) {
    // initialize count variable
    let count = 0;
    // iterate over each word
    for (let j = 0; j < arr[i].length; j++) {
      // if word[j] === word[j + 1], count++
      if (arr[i][j] === arr[i][j + 1]) {
        count++;
      }
    }
    // add word to object as key, count as value
    obj[arr[i]] = count;
  }
  // iterate over object
  for (let key in obj) {
    let objCount = 0
    // if value > 0, return key
    if (obj[key] > objCount) {
      objCount = obj[key];
      return key;
    }
  }
  // if no words have repeating letters, return -1
  return -1;
}

console.log(LetterCount("no words here"));