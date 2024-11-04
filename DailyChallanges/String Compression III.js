/**
 * @param {string} word
 * @return {string}
 */
var compressedString = function(word) {
    let comp = ""
    let count = 1
    let len = word.length
    let char = word[0]

    for(let i = 1; i < len; i++) {
        if (word[i] === char && count < 9) count++
        else {
            comp += count + char
            char = word[i]
            count = 1
        }
    }
    
    comp += count + char
    return comp
};