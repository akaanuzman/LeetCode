/**
 * @param {string} s
 * @return {number}
 */
var maxUniqueSplit = function(s) {
    const set = new Set();
    const dfs = (s) => {
        if (s.length === 0) {
            return 0;
        }
        let max = 0;
        for (let i = 1; i <= s.length; i++) {
            const sub = s.substring(0, i);
            if (!set.has(sub)) {
                set.add(sub);
                max = Math.max(max, 1 + dfs(s.substring(i)));
                set.delete(sub);
            }
        }
        return max;
    };

    return dfs(s);
};