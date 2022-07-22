/* 
206. Reverse Linked List

Given the head of a singly linked list, reverse the list, and return the reversed list.
Example 1:
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

Input: head = [1,2]
Output: [2,1]

Constraints:

The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000
 

Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?
*/

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
let head = [1,2,3,4]

 var reverseList = function(head) {
  return head.reverse()
};

console.log(reverseList(head))

// ^^^ works here, does not work on leetcode

var reverseList = function(head) {
  let reversed = null;
  while(head !== null) {
      let next = head.next;
      head.next = reversed;
      reversed = head
      head = next;
  }
  return reversed;
};
// ^^^ solution accepted by leetcode