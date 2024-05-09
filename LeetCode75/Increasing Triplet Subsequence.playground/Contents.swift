class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        guard nums.count >= 3 else { return false }

        var i = 0
        var j = 1
        var k = 2
        
        print(nums.count)
        
        while k < nums.count {
            if nums[i] < nums[j] && nums[j] < nums[k] && nums[i] < nums[k] {
                return true
            }
            else if nums[i] < nums[j] && nums[j] < nums[k + 1] && nums[i] < nums[k + 1] && k + 1 != nums.count {
                return true
            }

            i += 1
            j += 1
            k += 1
        }

        return false
    }
}

// Tests
let solution = Solution()

solution.increasingTriplet([1, 2, 3, 4, 5])
solution.increasingTriplet([5, 4, 3, 2, 1])
solution.increasingTriplet([2, 1, 5, 0, 4, 6])
solution.increasingTriplet([20,100,10,12,5,13])
