function ThreeSum(arr) {
  // sort array
  arr.sort((a, b) => a - b);

  // initialize empty object and empty result array
  const sum = arr[0];
  console.log(sum)

  // iterate over arr length -2, due to l and r edges
  // starting at index 1, as index 0 is the sum target
  for (let i = 1; i < arr.length - 2; i++) {
    let target = arr[i];
    console.log("target", target)
    let left = i + 1;
    console.log("left", left)
    let right = arr.length - 1;
    console.log("right", right)
    let curr = arr[left] + arr[right] + target;
    console.log("curr", curr)

    while (left < right) {
      if (curr > sum) {
        right--;
      } else if (curr < sum) {
        left++;
      } else if (curr === sum) {
        return true;
      } 
    }
    if (curr !== sum) {
      return false;
    }
  }
}
console.log(ThreeSum([-1, 0, 1, 2, -1, -4]));
