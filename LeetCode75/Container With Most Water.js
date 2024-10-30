/**
 * @param {number[]} height
 * @return {number}
 */
var maxArea = function(height) {
    let count = 0;
    let maxCount = count;

    let left = 0;
    let right = height.length - 1;

    while (left < right) {
        if(height[left] < height[right]) {
            count = height[left] * (right - left);
            maxCount = Math.max(count, maxCount);
            left++;
        } else {
            count = height[right] * (right - left);
            maxCount = Math.max(count, maxCount);
            right--;
        }
    }
    return maxCount;
};