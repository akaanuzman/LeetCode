/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class Solution {
    func removeNodes(_ head: ListNode?) -> ListNode? {
        guard let head else { return nil }
        head.next = removeNodes(head.next)
        return head.val < (head.next ?? head).val ? head.next : head
    }

    func printNodes() {
        let nodes = ListNode(5, ListNode(2, ListNode(13, ListNode(3, ListNode(8, nil)))))

        let result: ListNode? = removeNodes(nodes)

        guard let result else { return }

        guard let nextNode = result.next else { return }
        
        print(result.val, nextNode.val)
    }
}

let solution = Solution()

solution.printNodes()
