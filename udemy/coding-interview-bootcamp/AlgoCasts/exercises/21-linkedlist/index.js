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

  // create an insertFirst method
  insertFirst(data) {
    // create a new node
    const node = new Node(data, this.head);
    // update the head property to the new node
    this.head = node;
  }

  // create a size method
  size() {
    // create a counter variable
    let counter = 0;
    // create a node variable
    let node = this.head;
    // while there is a node
    while (node) {
      // increment the counter
      counter++;
      // update the node to the next node
      node = node.next;
    }
    // return the counter
    return counter;
  }

  // create a getFirst method
  getFirst() {
    // return the head property
    return this.head;
  }
}

module.exports = { Node, LinkedList };
