// NEED TO RETAKE 66%

/* 
The height of a binary tree is the length of the longest path from the root to any node in the tree. Given a binary tree represented in a one dimensional array, return the height of the tree.

If the array is empty you should return 0.

Note: empty elements in the input array are represented with the number - 1.

Example input
1 2 3 4 -1 -1 -1

Example output:
3

Explanation
The longest path from the root note is 1 -> 2 -> 4
*/

const maxDepth = (tree) => {
  // check if tree is empty
  // if not, root of tree = 1
  // then add the max value (either the left or the right)
  return !tree ? 0 : 1 + Math.max(maxDepth(tree.left), maxDepth(tree.right));
};


/*
Fix broken code
*/ 

const solution = (messages) => {
  class Emitter {
    constructor(messages = []) {
      this.messages = messages;
      this.event = () => {};
    }

    setEvent(fn) {
      this.event = fn;
    }

    trigger() {
      this.messages.forEach(message => this.event(message));
    }
  }

  class Receiver {
    constructor() {
      this.messages = [];
    }

    ping(message) {
      this.messages.push(message);
    }
  }

  const myEmitter = new Emitter(messages);
  const myReceiver = new Receiver();

//   myEmitter was not binded correctly to the Receiver
//   myEmitter.setEvent(myReceiver.ping); old code
  myEmitter.setEvent(myReceiver.ping.bind(myReceiver)); // new code
  myEmitter.trigger();

  return myReceiver.messages;
};

// PASSED ALL TEST CASES

/*---------------------------------------------*/
/* 
Given an array of integers, return an array containing the integer that occurs the least number of times. If there are multiple answers, return all possibilities within the resulting array sorted in ascending order. When no solution can be deduced, return an empty array.

Example input:
[10, 941, 13, 13, 13, 941]

Example output: 
[10]

Explanation:
The number 10 occurs only once while every other element repeats.

*/


const leastFreqNum = (numbers) => {
  // create a map object to sort through the key value pairs
  let map = {}
  // use a for of loop to iterate over each number
  for (let num of numbers) {
      map[num] = (map[num] || 0) +1
  }
  // create an array and sort the array
  const array = Object.keys(map).sort((a, b) => map[a]-map[b])
  // create a minimum value, the least represented integer
  let min = map[array[0]]
  // create an empty array
  let result = []
  // for of loop to iterate over the prior array
  for (let num of array) {
      // if the number is greater than 1 (index 0), break
      if (map[num] > min) break
      // otherwise push the value into the result array
      result.push(Number(num))
  }
  // sort the result array in ASC order if there are multiple answers
  return result.sort((a ,b) => a-b)
};

// PASSED ALL TEST CASES