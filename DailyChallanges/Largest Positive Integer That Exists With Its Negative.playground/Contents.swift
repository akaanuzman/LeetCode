func findMaxK(_ nums: [Int]) -> Int {
    var temp = [Int]()
    for i in 0 ..< nums.count {
        if nums.contains(-nums[i]) {
            temp.append(nums[i])
        }
    }

    if temp.isEmpty {
        return -1
    }
    temp.sort()
    return temp[temp.count - 1]
}

findMaxK([-1, 2, -3, 3])
findMaxK([-1, 10, 6, 7, -7, 1])
findMaxK([-10, 8, 6, 7, -2, -3])
