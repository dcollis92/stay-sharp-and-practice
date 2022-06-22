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

// PASSED ALL TEST CASES

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

// PASSED ALL TEST CASES

/*---------------------------------------------*/
/* 
Mazes can be loads of fun ... but only if a possible route actually exists. Your job is to write a function that determines whether it's possible to get from a starting point to a predetermined destination for a given maze.

The maze itself is a two-dimensional array, consisting of ones (signifying barriers) and zeros (signifying open space).

Example Maze #1:
[
  [1, 0, 0, 1, 1],
  [1, 1, 0, 1, 1],
  [1, 0, 0, 1, 1],
  [1, 0, 1, 1, 0],
  [1, 0, 0, 0, 0],
]

You'll recieve starting and destinate coordinates as (row, column) notation. This means (0, 2) in the example maze is a middle cell in the top row, because the row is 0 and the column is 2. The start and destination coordinates will always have a value of 0.

Your cunction will determine whether it is possible to get from the starting coordinate to the destination coordinate by only moving across 0-valued cells.

Looking at our example maze again, lets assume that 
start = (0, 1) and dest = (4, 3)
Here's the same maze, but this time the valid path is marked by replacing the 0 value with an asterick (*).

[
  [1, *, *, 1, 1],
  [1, 1, *, 1, 1],
  [1, *, *, 1, 1],
  [1, *, 1, 1, 0],
  [1, *, *, *, 0],
]

Because it's possible to get from the start of the destination by touching only zeros, your function should return true. Let's try an example where it isn't possible to get from the start to the destination.

Example Maze #2
[
  [1, 0, 0, 1],
  [1, 1, 0, 1],
  [0, 1, 0, 1],
]

For this maze start = (2, 0) and dest = (0, 1). Given that the starting cell is entirely surrounded by ones, this maze isn't possible to complete.

[
  [1, 0, 0, 1],
  [1, 1, 0, 1],
  [*, 1, 0, 1],
]

Allowed moves: 
The only moves allowed are up, down, left, and right. Diagonals are not allowed. For the maze diagram below, assume you're starting on the cell labeled E.

[
  [A, B, C],
  [D, E, F],
  [G, H, J],
]

Starting at E, the valid moves are 
E -> B (up)
E -> F (right)
E -> H (down)
E -> D (left)
*/

let maze = [
              [1, 0, 0, 1, 1], 
              [1, 1, 0, 1, 1], 
              [1, 0, 0, 1, 1], 
              [1, 0, 1, 1, 0], 
              [1, 0, 0, 0, 0]
            ]

            const solution = (maze, startRow, startCol, destRow, destCol) => {
              this.maze = maze;
         
                   // if the start and dest are the same
                 if(this.maze[startCol][startRow] == this.maze[destRow][destCol]) {
                   return true;
                 } else if(this.maze[startCol][startRow] == 0) {
                     // reassign array value to random int so we don't revisit it again
                     this.maze[startCol][startRow] = 2;
                     // checking if within L boundary
                     if(startCol < this.maze.length + 1) {
                         return (startCol - 1, startRow);
                     }
                     // checking if within R boundary
                     if(startRow < this.maze[startCol].length + 1) {
                         return (startCol, startRow - 1);
                     }
                     if(startCol < 0) {
                         return (startCol + 1, startRow);
                     }
                     if(startRow < 0) {
                         return (startCol, startRow + 1);
                     }
                 } else {
                     // if the maze can't be completed
                   return false
                 }
             };

console.log(solution([[1, 0, 0, 1, 1], [1, 1, 0, 1, 1], [1, 0, 0, 1, 1], [1, 0, 1, 1, 0], [1, 0, 0, 0, 0]], 0, 1, 3, 4))

// PASSED 3/5 TEST CASES. NEEDS ADJUSTMENTS