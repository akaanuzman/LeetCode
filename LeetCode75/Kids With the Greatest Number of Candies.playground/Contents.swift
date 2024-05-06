class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCandies: Int? = candies.max()
        
        guard let maxCandies else { return [false] }
        
        return candies.map { $0 + extraCandies >= maxCandies }
    }
}


let solution = Solution()

solution.kidsWithCandies([2,3,5,1,3], 3) // [true, true, true, false, true]
solution.kidsWithCandies([4,2,1,1,2], 1) // [true, false, false, false, false]
solution.kidsWithCandies([12,1,12], 10) // [true, false, true]
