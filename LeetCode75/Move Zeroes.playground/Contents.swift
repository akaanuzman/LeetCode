class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeroCount += 1
            } else {
                nums[i - zeroCount] = nums[i]
            }
        }
        for i in (nums.count - zeroCount)..<nums.count {
            nums[i] = 0
        }
    }
}

let solution = Solution()
var nums = [0, 1, 0, 3, 12]
solution.moveZeroes(&nums)

