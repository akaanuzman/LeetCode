class Solution {
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ").reversed().joined(separator: " ")
    }
}

// Tests
let solution = Solution()

// Test 1
let result1 = solution.reverseWords("the sky is blue")
assert(result1 == "blue is sky the", "Test 1 failed")

// Test 2
let result2 = solution.reverseWords("  hello world  ")
assert(result2 == "world hello", "Test 2 failed")

// Test 3
let result3 = solution.reverseWords("a good   example")
assert(result3 == "example good a", "Test 3 failed")
