func mergeAlternately(_ word1: String, _ word2: String) -> String {
    guard !(word1.isEmpty || word2.count > 100) else {
        return ""
    }

    var temp = ""

    if word1.count == word2.count {
        for i in word1.indices {
            temp.append(word1[i])
            temp.append(word2[i])
        }
        return temp
    }

    else if word1.count < word2.count {
        for i in word2.indices {
            if i < word1.endIndex {
                temp.append(word1[i])
            }
            temp.append(word2[i])
        }
        return temp
    }

    else {
        for i in word1.indices {
            temp.append(word1[i])
            if i < word2.endIndex {
                temp.append(word2[i])
            }
        }
        return temp
    }
}

mergeAlternately("abc", "pqr")
mergeAlternately("ab", "pqrs")
mergeAlternately("abcd", "pq")
