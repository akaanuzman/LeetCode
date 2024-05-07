class Solution {
    func reverseVowels(_ s: String) -> String {
        var s = Array(s)
        var vowels = Set<Character>(["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"])
        var i = 0
        var j = s.count - 1
        while i < j {
            while i < j && !vowels.contains(s[i]) {
                i += 1
            }
            while i < j && !vowels.contains(s[j]) {
                j -= 1
            }
            s.swapAt(i, j)
            i += 1
            j -= 1
        }
        return String(s)
    }
}

let solution = Solution()
let result = solution.reverseVowels("hello")
let result2 = solution.reverseVowels("leetcode")
