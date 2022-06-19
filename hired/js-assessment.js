/*
BALANCED BRACKETS

We are given a string of angle brackets, and we are required to write a function that add brackets at the beginning and end of the string to make all brackets match.

The angle brackets match if for every < there is a corresponding > and for every > there is a corresponding <.

For example − If the input string is −

const str = '><<><';

Output
Then the output should be −

const output = '<><<><>>';
Here, we added, '<' at the beginning and '>>' at the end to balance the string.

We will use a number that will keep count of the number of open '<' tags so far. And then, when we encounter a '>' tag, if there are no current open tags, we will add '<' to the beginning of the string (while keeping the open tag count at 0).

Then, at the end, add a number of '>'s matching the number of currently open tags.


*/

const buildPair = (angles) => {
  let closeTag = 0;
  let openTag = 0;
  for (const char of angles) {
     if (char === '>') {
        if (closeTag === 0) {
           openTag++;
        } else {
           closeTag--;
        };
     } else {
        closeTag++;
     };
  };
  const leadingTags = '<'.repeat(openTag);
  const trailingTags = '>'.repeat(closeTag);
  return leadingTags + str + trailingTags;
};
console.log(buildPair(angles));