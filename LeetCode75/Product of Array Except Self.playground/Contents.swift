class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var copyNums = nums
        var i = 0
        var temp = 1
        let count = nums.count

        copyNums = nums.map { num in
            let currentIndex = nums.index(i, offsetBy: num)
            print(currentIndex, i, num)
            if currentIndex != i {
                if num == 0 {
                    return 0
                }
                temp *= num
                i += 1
            } else {
                if num == 0 {
                    return 0
                }
                i += 1
            }
            if num == 0 {
                return 0
            }
            return temp
        }

        return copyNums.reversed()
    }
}

// Tests
let solution = Solution()

// Test 1
// let result1 = solution.productExceptSelf([1, 2, 3, 4])
// assert(result1 == [24, 12, 8, 6], "Test 1 failed")

// Test 2
let result2 = solution.productExceptSelf([-1, 1, 0, -3, 3])
// assert(result2 == [0, 0, 9, 0, 0], "Test 2 failed")
