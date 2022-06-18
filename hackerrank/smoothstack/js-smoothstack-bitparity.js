/*
Logic: Bit Parity
Problem Definition

Write a function that returns 1 if the bit pattern for an input integer contains an odd number of 1's.


For example, if you were to use python, you can test if the nth bit of a number is 1 using a function that looks like:

def test_nth_bit(num, n):
    return ( num & 1 << (n-1) ) > 0
}

The above python function should return True when num=8 and n=4, as the 4th bit of 8 is 1. Since the bit pattern for 8 is 1000, it has an odd number of 1 bits, and hence 8 has odd bit parity. Depending upon which programming language you choose, your syntax for above function will differ.

You may assume that your machine:

Uses 2s complement, 32-bit representations of integers.
Performs right shifts arithmetically.
Has unpredictable behavior when shifting an integer by more than the word size.

Hint

You can test each bit laboriously and you would still get the right answer ultimately for counting if you have an odd number of 1 bits. However, there are less brute-force ways of solving this problem which you are welcome to explore. More importantly you do not even need a loop to loop through 32 iterations for a 32-bit integer. You can check solve this with a couple of operations.

Advanced (Optional)

Special bonus for those who restrict their solutions to the following:

Use only these legal operations: ! ~ & ^ | + << >>
Use number of operations not exceeding a max of 20
Not use any control constructs such as if, do, while, for, switch.
Not define or use any macros.
Not define any additional functions in this file.
Not call any functions.
Not use any other operations, such as &&, ||, -, or ?:
Not use any form of casting.
Not use any data type other than int. This implies that you cannot use arrays, structs, or unions.

Input Format

Input consists of one line which has a sample input number.

Constraints

The line must have a numeric value that can be converted to a 32-bit int.

Output Format

For sample input value, return a number containing either 1 when bit parity is found, 0 when bit parity is not found and -1 when the input value is invalid or does not satisfy the constraints.

Sample Input

4


Sample Output

1

Explanation

The integer 4 has a bit pattern of 0100 which has an odd number of bits set to 1. This means the bit parity is 1.

*
 * Complete the 'has_bit_parity' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER a_number as parameter.
 */


function has_bit_parity(a_number) {
  // initialize value 0
  let bitPar = 0
  while (a_number != 0) {
      // if the number is not 0
      a_number = a_number & (a_number - 1);
      // bitParity value is updated
      bitPar = 1;
  }
  return bitPar
}

// Passed 4/7 test cases