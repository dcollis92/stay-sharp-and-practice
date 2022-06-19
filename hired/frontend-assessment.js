/* 
Given a number, n, return the length of the longest sequence of characters that contains no repeats

example input:
n: 1123223

Example output: 
3

Explanation:
123 is the longest substring within 1123223 to not repeat
*/

const solution1 = (n) => {
  // define empty variables
  let max = 0;
  let currStr = '';
  let char;
  let pos;
  // convert the number to a string
  let nString = n.toString()

  // for loop to interate over the string
  for (let idx = 0; idx < nString.length; idx++) {
    // assign the character and position 
    char = nString.charAt(idx)
    pos = currStr.indexOf(char);
    if (pos !== -1) {
      currStr = currStr.substring(pos + 1)
    }
    currStr += char;
    // reassign max to Math.max (chosing between 0 and the current string length)
    max = Math.max(max, currStr.length)
  }
  return max
}
// THIS CODE WORKS


/*-----------------------*/


const solution2 = (array) => {
  function mergeSort(array) {
    if (array.length <= 1) {
      return array;
    }

    let middleIndex = Math.floor(array.length / 2);

    let left = array.slice(0, middleIndex);
    let right = array.slice(middleIndex);

    leftSorted = mergeSort(left);
    rightSorted = mergeSort(right);

    return merge(leftSorted, rightSorted);
  }
  
  function merge(left, right) {
    let merged = [];
    let i = 0; // left index
    let j = 0; // right index

    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        merged.push(left[j++]); 
      } else {
        merged.push(right[i++]);
      }
    }

    return merged
        .concat(left.slice(i))
        .concat(right.slice(j));;
  }

};


