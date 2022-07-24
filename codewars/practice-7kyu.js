// Remember the spongebob meme that is meant to make fun of people by repeating what they say in a mocking way?

// You need to create a function that converts the input into this format, with the output being the same string expect there is a pattern of uppercase and lowercase letters.

// Example:
// input:  "stop Making spongebob Memes!"
// output: "StOp mAkInG SpOnGeBoB MeMeS!"

function spongeMeme(sentence) {
  // convert sentence string => array
  let strArray = sentence.toLowerCase().split("");
  let newArray = [];
  // loop through the array
  for (let i = 0; i < strArray.length; i++) {
    // if str idx is even
    if (i % 2 === 0) {
      // convert toUpperCase and push into the new array
      newArray.push(strArray[i].toUpperCase());
    } else {
      // push the already lower case char into the new array
      newArray.push(strArray[i]);
    }
  }
  return newArray.join("");
}

// text conversion notes
// first letter is capitalized
// then AaAaAa
// if space is present, space completes the pattern as a regular string character, i.e. AaA Aa aA

// convert string into an array
// odd characters are upperCase
// even characters are lowerCase

// alt solution
const spongeMeme = (sentence) =>
  sentence
    .split("")
    .map((letter, i) => (i % 2 ? letter.toLowerCase() : letter.toUpperCase()))
    .join("");
