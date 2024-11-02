/**
 * @param {string} sentence
 * @return {boolean}
 */
var isCircularSentence = function(sentence) {
    sentence = sentence.split(' ')
    sentence.push(sentence[0])

    for (let i = 0; i < sentence.length - 1; i++) {
        if (sentence[i].at(-1) !== sentence[i + 1].at(0)) return false
    }
    return true
};