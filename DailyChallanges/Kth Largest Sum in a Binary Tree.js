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
 * @param {number} k
 * @return {number}
 */
var kthLargestLevelSum = function(root, k) {
    const count = [];

    function travarse(node, level){
        if(node){
            while(count.length <= level){
                count.push(0);
            }
            count[level] += node.val;

            travarse(node.left, level+1);
            travarse(node.right, level+1);
        }
    }
    travarse(root, 0);

    if(k > count.length){
        return -1;
    }

    count.sort((a,b)=> b-a);
    return  count[k-1];
};