/**
 * @param {number} num
 * @return {number}
 */
var maximumSwap = function(num) {
    let numStr = num.toString().split('');
    let numArr = num.toString().split('').map(Number);
    let max = -1;
    let maxIndex = -1;
    let left = -1;
    let right = -1;
    for (let i = numStr.length - 1; i >= 0; i--) {
        if (numArr[i] > max) {
            max = numArr[i];
            maxIndex = i;
        } else if (numArr[i] < max) {
            left = i;
            right = maxIndex;
        }
    }
    if (left === -1) {
        return num;
    }
    let temp = numStr[left];
    numStr[left] = numStr[right];
    numStr[right] = temp;
    return parseInt(numStr.join(''));
};

console.log(maximumSwap(2736)); // 7236
console.log(maximumSwap(9973)); // 9973
console.log(maximumSwap(98368)); // 98863
console.log(maximumSwap(1993)); // 9913