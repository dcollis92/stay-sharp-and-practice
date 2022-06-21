/* Suppose you are given a list of integers, prices, that represent the price of Google's stock over time. prices [i] is the price of the stock on day i. You must buy the stock once and then later sell it. You are not allowed to sell before you buy.

Write a function that returns an integer, which is the maximum profit you can make from buying the stock and then later selling it. If the list is empty, return 0.

Example input: 
prices = [6,0,-1,10]

Example output: 
11

Explanation:
11 is the maximum profit you can make by buying 

*/

const solution = (prices) => {
  // initialize variables
  let maxProfit = 0
  let buyPrice = 0
  let sellPrice = 0
  let changeBuyIdx = true;

  // loop through the array
  // index value starts at 0
  // if index is less than the array length -1(since array index values start at 0)
  // keep looping
  for (let i = 0; i < prices.length -1; i++) {
      // sell price is the num directly after the buyPrice
      sellPrice = prices[i+1]
      if (changeBuyIdx) {
          // keep looping if we haven't found a price
          buyPrice = prices[i]
      } 
      if (sellPrice < buyPrice) {
          // if sell is less than buy, there's no profit
          // thus keep looping
          changeBuyIdx = true;
      } else {
          // set tempProfit to compare against the potential maxProfit
          let tempProfit = sellPrice - buyPrice;
          if (tempProfit > maxProfit) {
          // maxProfit will keep updating to the highest tempProfit
              maxProfit = tempProfit;
          }
          // the loop only breaks once there is not a higher value available for the maxProfit
          changeBuyIdx = false;
      }
  }
  return maxProfit
};

// PASSED ALL TEST CASES