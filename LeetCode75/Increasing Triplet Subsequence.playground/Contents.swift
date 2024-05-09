class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        guard nums.count >= 3 else { return false }
        
        var i: Int = .max
        var j: Int = .max
        
        for num in nums {
            if num < i {
                i = num
            } else if num > i && num < j {
                j = num
            } else if num > j {
                return true
            }
        }
        return false
    }
}

// Tests
let solution = Solution()

solution.increasingTriplet([1, 2, 3, 4, 5])
solution.increasingTriplet([5, 4, 3, 2, 1])
solution.increasingTriplet([2, 1, 5, 0, 4, 6])
solution.increasingTriplet([20, 100, 10, 12, 5, 13])
