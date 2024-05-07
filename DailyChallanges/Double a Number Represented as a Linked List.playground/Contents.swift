/**
 * Definition for singly-linked list.
 * */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class Solution {
    func doubleIt(_ head: ListNode?) -> ListNode? {
        guard let head else { return nil }

        var stack: [ListNode] = []
        var current: ListNode? = head

        while current != nil {
            stack.append(current!)
            current = current?.next
        }

        var carryFlag = 0
        while !stack.isEmpty {
            current = stack.removeLast()

            guard current != nil else { break }

            var val = (current!.val * 2) + carryFlag
            carryFlag = 0

            if val >= 10 {
                carryFlag = 1
                val = val % 10
            }

            current!.val = val
        }

        if carryFlag == 1 {
            current = ListNode(1, head)
        }

        return current
    }
}

let head = ListNode(1, ListNode(8, ListNode(9, nil)))
let head2 = ListNode(9, ListNode(9, ListNode(9, nil)))

let solution = Solution()
let newHead = solution.doubleIt(head)
let newHead2 = solution.doubleIt(head2)
