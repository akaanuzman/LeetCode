/**
 * @param {character[][]} box
 * @return {character[][]}
 */
var rotateTheBox = function (box) {
    const rows = box.length, cols = box[0].length;
    const result = Array.from({ length: cols }, () => Array(rows).fill('.'));

    for (let i = 0; i < rows; i++) {
        let emptyPosition = cols - 1;
        for (let j = cols - 1; j >= 0; j--) {
            if (box[i][j] === '*') {
                result[j][rows - i - 1] = '*';
                emptyPosition = j - 1;
            } else if (box[i][j] === '#') {
                result[emptyPosition][rows - i - 1] = '#';
                emptyPosition--;
            }
        }
    }

    return result;
};