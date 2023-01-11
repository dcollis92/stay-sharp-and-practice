// --- Description
// Create a queue data structure.  The queue
// should be a class with methods 'add' and 'remove'.
// Adding to the queue should store an element until
// it is removed
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.remove(); // returns 1;

class Queue {
  // create a constructor
  constructor() {
    // create a data array assigning it to the queue
    this.data = [];
  }
  // create an add method
  add(record) {
    // push the record into the queue
    this.data.unshift(record);
  }
  // create a remove method
  remove() {
    // return the last item in the queue
    return this.data.pop();
  }
}

module.exports = Queue;
