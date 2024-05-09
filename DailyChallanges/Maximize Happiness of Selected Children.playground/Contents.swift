class Solution {
    func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
        guard happiness.count != 0, k != 0 else {
            return 0
        }

        var sum = 0
        var arr = happiness.sorted { $0 > $1 }

        for i in 0 ..< k {
            sum += max(arr[i] - i, 0)
        }

        return sum
    }
}

let solution = Solution()
print(solution.maximumHappinessSum([1, 2, 3], 2))
print(solution.maximumHappinessSum([1, 1, 1, 1], 2))
print(solution.maximumHappinessSum([2, 3, 4, 5], 2))
