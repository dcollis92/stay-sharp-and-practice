// --- Directions
// Implement a Queue datastructure using two stacks.
// *Do not* create an array inside of the 'Queue' class.
// Queue should implement the methods 'add', 'remove', and 'peek'.
// For a reminder on what each method does, look back
// at the Queue exercise.
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.add(2);
//     q.peek();  // returns 1
//     q.remove(); // returns 1
//     q.remove(); // returns 2

const Stack = require('./stack');

class Queue {
  constructor() {
    // create a data array assigning it to the queue
    this.first = new Stack();
    this.second = new Stack();
  }

  // create an add method
  add(record) {
    this.first.push(record);
  }

  // create a remove method
  remove() {
    // while the first stack has data
    while (this.first.peek()) {
      // push the first stack data into the second stack
      this.second.push(this.first.pop());
    }

    // pop the second stack data
    const record = this.second.pop();
    // while the second stack has data
    while (this.second.peek()) {
      // push the second stack data into the first stack
      this.first.push(this.second.pop());
    }

    // return the popped data
    return record;
  }

  // create a peek method
  peek() {
    // while the first stack has data
    while (this.first.peek()) {
      // push the first stack data into the second stack
      this.second.push(this.first.pop());
    }

    // peek the second stack data
    const record = this.second.peek();

    // while the second stack has data
    while (this.second.peek()) {
      // push the second stack data into the first stack
      this.first.push(this.second.pop());
    }

    // return the peeked data
    return record;
  }
}

module.exports = Queue;
