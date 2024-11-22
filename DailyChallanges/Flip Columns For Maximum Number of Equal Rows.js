/**
 * @param {number[][]} matrix
 * @return {number}
 */
var maxEqualRowsAfterFlips = function (matrix) {
    const map = new Map();

    for (let row of matrix) {
        const pattern = row[0] ? row.map(bit => bit ^ 1).join('') : row.join('');

        map.set(pattern, (map.get(pattern) || 0) + 1);
    }

    return Math.max(...Array.from(map.values()));
};