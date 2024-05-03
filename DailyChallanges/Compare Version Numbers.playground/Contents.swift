func compareVersion(_ version1: String, _ version2: String) -> Int {
    let v1 = version1.split(separator: ".")
    let v2 = version2.split(separator: ".")

    var i = 0
    var j = 0

    let v1Count = v1.count
    let v2Count = v2.count

    while i < v1Count && j < v2Count {
        let v1Num = Int(v1[i]) ?? 0
        let v2Num = Int(v2[j]) ?? 0

        if v1Num > v2Num {
            return 1
        } else if v1Num < v2Num {
            return -1
        }
        i += 1
        j += 1
    }

    if v1Count > v2Count {
        while i < v1Count {
            let num1 = Int(v1[i]) ?? 0
            if num1 > 0 {
                return 1
            }
            i += 1
        }
    } else if v1Count < v2Count {
        while j < v2Count {
            let num2 = Int(v2[j]) ?? 0
            if num2 > 0 {
                return -1
            }
            j += 1
        }
    }

    return 0
}

compareVersion("1.01", "1.001")
compareVersion("1.0", "1.0.0")
compareVersion("0.1", "1.1")
compareVersion("1.0", "1.0.0")
