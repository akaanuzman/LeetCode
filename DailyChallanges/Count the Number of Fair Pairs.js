/**
 * @param {number[]} nums
 * @param {number} lower
 * @param {number} upper
 * @return {number}
 */
var countFairPairs = function (nums, lower, upper) {
    nums.sort((a, b) => a - b);
    let counter = 0;

    for (let i = 0; i < nums.length; i++) {
        let left = i + 1;
        let right = nums.length - 1;

        while (left <= right) {
            let mid = Math.floor((left + right) / 2);
            if (nums[i] + nums[mid] < lower) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        let start = left;

        left = i + 1;
        right = nums.length - 1;

        while (left <= right) {
            let mid = Math.floor((left + right) / 2);
            if (nums[i] + nums[mid] <= upper) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        let end = right;

        if (start <= end) {
            counter += (end - start + 1);
        }
    }

    return counter;
};