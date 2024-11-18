/**
 * @param {number[]} code
 * @param {number} k
 * @return {number[]}
 */
var decrypt = function (code, k) {
    if (k === 0) return new Array(code.length).fill(0);

    let res = [];
    let sum = 0;

    for (let i = 0; i < code.length; i++) {
        if (k > 0) {
            sum = code.slice(1, k + 1).reduce((acc, val) => acc + val, 0);
        } else if (k < 0) {
            sum = code.slice(k).reduce((acc, val) => acc + val, 0);
        }
        res[i] = sum;
        sum = 0;
        code = code.slice(1).concat(code.slice(0, 1));
    }
    return res;
};