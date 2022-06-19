// NEED TO RETAKE 66%

function myMutator(obj) {
  obj = obj + 1;
  return obj;
}

let input = 35;
myMutator(input);
console.log(input)

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
