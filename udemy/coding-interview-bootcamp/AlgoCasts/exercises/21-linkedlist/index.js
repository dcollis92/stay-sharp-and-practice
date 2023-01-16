// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document

class Node {
  constructor(data, next = null) {
    // create a data property assigning it to the data argument
    this.data = data;
    // create a next property assigning it to the next argument
    this.next = next;
  }
}

class LinkedList {
  constructor() {
    // create a head property assigning it to null
    this.head = null;
  }
}

module.exports = { Node, LinkedList };
