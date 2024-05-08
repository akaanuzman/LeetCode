class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 1, count: nums.count)

        var pre = 1
        for i in 0..<nums.count {
            res[i] *= pre
            pre *= nums[i]
        }

        var post = 1
        for i in (0..<nums.count).reversed() {
            res[i] *= post
            post *= nums[i]
        }

        return res
    }
}

// Tests
let solution = Solution()

// Test 1
 let result1 = solution.productExceptSelf([1, 2, 3, 4])
 assert(result1 == [24, 12, 8, 6], "Test 1 failed")

// Test 2
let result2 = solution.productExceptSelf([-1, 1, 0, -3, 3])
 assert(result2 == [0, 0, 9, 0, 0], "Test 2 failed")
