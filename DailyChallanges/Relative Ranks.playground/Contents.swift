class Solution {
    private enum Rank: String {
        case gold = "Gold Medal"
        case silver = "Silver Medal"
        case bronze = "Bronze Medal"
    }

    func findRelativeRanks(_ score: [Int]) -> [String] {
        guard !score.isEmpty else { return [] }

        var sorted = score.sorted(by: >)
        var dictionary = [Int: Int]()

        for (index, i) in sorted.enumerated() {
            dictionary[i] = index
        }

        return score.map { s in
            switch dictionary[s] {
            case 0: Rank.gold.rawValue
            case 1: Rank.silver.rawValue
            case 2: Rank.bronze.rawValue
            default: String(dictionary[s]! + 1)
            }
        }
    }
}

let solution = Solution()

let score = [5, 4, 3, 2, 1]
let output = solution.findRelativeRanks(score)

let score2 = [10,3,8,9,4]
let output2 = solution.findRelativeRanks(score2)
