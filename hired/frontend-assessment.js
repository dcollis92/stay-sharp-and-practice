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

/*---------------------------------------------*/
/* 
Your team had a summer intern who didn't quite finish their big "Intern Project", and now it's up to you to get the project completed and deployed.

Unfortunastely, tests are failing for their implementation of the Merge sort function. Debut their function so the tests pass
*/

const solution2 = (array) => {
  function merge(left, right) {
    // console.log('Merge:', 'Left:', left, 'Right:', right)
    let merged = [];
    let i = 0; // left index
    let j = 0; // right index

    while (i < left.length && j < right.length) {
      // console.log('Values being compared:', left[i], right[j])
      // if (i == left.length || left[i] < right[j]) {
      if (left[i] < right[j]) {
        // console.log('if block')
        // merged.push(right[i++]);
        merged.push(left[i++])
      } else {
        // console.log('else block')
        merged.push(right[j++])
        // merged.push(left[j++]);
      }
    }
    return [...merged, ...left.slice(i), ...right.slice(j)]
  }

  function mergeSort(array) {
    if (array.length <= 1) return array

    let middleIndex = Math.floor(array.length / 2);

    let left = array.slice(0, middleIndex);
    let right = array.slice(middleIndex, array.length);
    // console.log('Merge Sort:', 'Left:', left, 'Right:', right)
    return merge(mergeSort(left), mergeSort(right))
  }
  return mergeSort(array)
};


console.log(solution2([9, 6, 7, 4, 7, 2, 2, 4, 2, 3, 7, 7]))
// Expected Output: [2, 2, 2, 3, 4, 4, 6, 7, 7, 7, 7, 9]


