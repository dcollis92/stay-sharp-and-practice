/* 
121. Best Time to Buy and Sell Stock

You are given an array prices where prices[i] is the price of a given stock on the i**th day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.


Example 1:
  Input: prices = [7,1,5,3,6,4]
  Output: 5
  Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
  Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

Example 2:
  Input: prices = [7,6,4,3,1]
  Output: 0
  Explanation: In this case, no transactions are done and the max profit = 0.

Constraints:
  1 <= prices.length <= 10**5
  0 <= prices[i] <= 10**4
*/

/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function(prices) {
    // initialize variables
    let maxProf = 0
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
            // set tempProfit to compare against the potential maxProf
            let tempProfit = sellPrice - buyPrice;
            if (tempProfit > maxProf) {
            // maxProf will keep updating to the highest tempProfit
                maxProf = tempProfit;
            }
            // the loop only breaks once there is not a higher value available for the maxProf
            changeBuyIdx = false;
        }
    }
    return maxProf
};