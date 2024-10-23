/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {TreeNode}
 */
let levelSums;
let nodeValues;
let parents;
var replaceValueInTree = function (root) {
    levelSums = new Map();
    nodeValues = new Map();
    parents = new Map();

    firstDfs(root, 0, null);
    secondDfs(root, 0, null);

    return root;
};

function firstDfs(node, level, parent) {
    if (node == null) return;

    nodeValues.set(node, node.val);

    if (!levelSums.has(level)) levelSums.set(level, 0);

    levelSums.set(level, node.val + levelSums.get(level));

    firstDfs(node.left, level + 1, node);
    firstDfs(node.right, level + 1, node);
}

function secondDfs(node, level, parent) {
    if (node == null) return;

    if (parent == null) node.val = 0;

    else {
        let sum = levelSums.get(level);
        let left = parent.left;
        let right = parent.right;

        if (left) sum -= nodeValues.get(left);
        if (right) sum -= nodeValues.get(right);

        node.val = sum;
    }

    secondDfs(node.left, level + 1, node);
    secondDfs(node.right, level + 1, node);
}