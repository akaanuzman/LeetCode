class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var tempStr = ""
        var count = 1
        for i in 1 ..< chars.count {
            if chars[i] == chars[i - 1] {
                count += 1
            } else {
                tempStr += "\(chars[i - 1])" + (count > 1 ? "\(count)" : "")
                count = 1
            }
        }
        tempStr += "\(chars.last!)" + (count > 1 ? "\(count)" : "")
        chars = Array(tempStr)
        return chars.count
    }
}

let solution = Solution()
var chars: [Character] = ["a", "a", "b", "b", "c", "c", "c"]
solution.compress(&chars) // 6

chars = ["a"]
solution.compress(&chars) // 1

chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
solution.compress(&chars) // 4
