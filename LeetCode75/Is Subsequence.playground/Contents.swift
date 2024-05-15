class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var sIndex = 0
        var tIndex = 0
        let sArray = Array(s)
        let tArray = Array(t)

        while sIndex < sArray.count && tIndex < tArray.count {
            if sArray[sIndex] == tArray[tIndex] {
                sIndex += 1
            }
            tIndex += 1
        }

        if sIndex < sArray.count {
            return false
        }

        return true
    }
}

let solution = Solution()
var s = "abc"
var t = "ahbgdc"
var result = solution.isSubsequence(s, t)

s = "axc"
t = "ahbgdc"
result = solution.isSubsequence(s, t)
