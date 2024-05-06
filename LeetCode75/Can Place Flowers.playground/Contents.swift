class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbedCopy = flowerbed
        var tempN = n
        for i in 0 ..< flowerbedCopy.count {
            let prev = i == 0 ? 0 : flowerbedCopy[i - 1]
            let next = i == flowerbedCopy.count - 1 ? 0 : flowerbedCopy[i + 1]
            if flowerbedCopy[i] == 0 {
                if prev == 0 && next == 0 {
                    flowerbedCopy[i] = 1
                    tempN -= 1
                } else {
                    continue
                }
            } else if flowerbedCopy[i] == 1 {
                if prev == 1 || next == 1 {
                    return false
                }
            }
        }
        if tempN <= 0 {
            return true
        }
        return false
    }
}

// Tests
let solution = Solution()

// Test1
// var flowerbed1 = [1, 0, 0, 0, 1]
// var n1 = 1
// let res1 = solution.canPlaceFlowers(flowerbed1, n1)

// assert(res1 == true)

// Test2
var flowerbed2 = [1, 0, 0, 0, 0, 1]
var n2 = 2
let res2 = solution.canPlaceFlowers(flowerbed2, n2)

// assert(res2 == false)
