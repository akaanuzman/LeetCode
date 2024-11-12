/**
 * @param {number[][]} items
 * @param {number[]} queries
 * @return {number[]}
 */
var maximumBeauty = function (items, queries) {
    items.sort((a, b) => a[0] - b[0]);

    const sortedQueries = queries.map((q, index) => [q, index])
        .sort((a, b) => a[0] - b[0]);

    const answer = new Array(queries.length).fill(0);
    let maxBeauty = 0;
    let itemIndex = 0;

    for (const [query, originalIndex] of sortedQueries) {
        while (itemIndex < items.length && items[itemIndex][0] <= query) {
            maxBeauty = Math.max(maxBeauty, items[itemIndex][1]);
            itemIndex++;
        }
        answer[originalIndex] = maxBeauty;
    }

    return answer;
};