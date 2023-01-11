// --- Directions
// Create a stack data structure.  The stack
// should be a class with methods 'push', 'pop', and
// 'peek'.  Adding an element to the stack should
// store it until it is removed.
// --- Examples
//   const s = new Stack();
//   s.push(1);
//   s.push(2);
//   s.pop(); // returns 2
//   s.pop(); // returns 1

class Stack {
  // create a constructor
  constructor() {
    // create a data array assigning it to the queue
    this.data = [];
  }
  // create an add method
  push(record) {
    // push the record into the queue
    this.data.push(record);
  }
  // create a remove method
  pop() {
    // return the last item in the queue
    return this.data.pop();
  }
  // create a peek method
  peek() {
    // return the last item in the queue
    return this.data[this.data.length - 1];
  }
}

module.exports = Stack;
